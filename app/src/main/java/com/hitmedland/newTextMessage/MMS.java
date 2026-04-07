package com.hitmedland.newTextMessage;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import java.io.ByteArrayInputStream;
import java.io.OutputStream;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MMS {
    private static final Pattern EMAIL_ADDRESS_PATTERN = Pattern.compile("[a-zA-Z0-9\\+\\.\\_\\%\\-]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+");
    private static final Pattern NAME_ADDR_EMAIL_PATTERN = Pattern.compile("\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*");
    private static final String SQLITE_EXCEPTION_DETAIL_MESSAGE = "unable to open database file";

    public MMS() {
    }

    public static void checkSQLiteException(Context context, SQLiteException e) {
        if (isLowMemory(e)) {
            Toast.makeText(context, "Low Memory", Toast.LENGTH_SHORT).show();
            return;
        }
        throw e;
    }

    private static Uri createAddr(Context context, String id, String addr, boolean isOut, String contactId) throws Exception {
        ContentValues addrValues = new ContentValues();
        addrValues.put("address", addr);
        addrValues.put("charset", "106");
        addrValues.put("contact_id", contactId);
        addrValues.put("type", isOut ? 151 : 137); // Smali shows 0x97 (151) and 0x89 (137)
        
        Uri addrUri = Uri.parse("content://mms/" + id + "/addr");
        Uri res = context.getContentResolver().insert(addrUri, addrValues);
        
        Log.e(">>>>>>>", "Addr uri is " + res.toString() + " contact_id:" + contactId + "tofrom:" + (isOut ? 151 : 137));
        
        return res;
    }

    private static Uri createPart(Context context, String id, byte[] imageBytes) throws Exception {
        ContentValues mmsPartValue = new ContentValues();
        mmsPartValue.put("mid", id);
        mmsPartValue.put("ct", "image/png");
        mmsPartValue.put("cid", "<" + System.currentTimeMillis() + ">");
        
        Uri partUri = Uri.parse("content://mms/" + id + "/part");
        Uri res = context.getContentResolver().insert(partUri, mmsPartValue);
        
        Log.e(">>>>>>>", "Part uri is " + res.toString());
        
        OutputStream os = context.getContentResolver().openOutputStream(res);
        ByteArrayInputStream is = new ByteArrayInputStream(imageBytes);
        byte[] buffer = new byte[256];
        int len;
        while ((len = is.read(buffer)) != -1) {
            os.write(buffer, 0, len);
        }
        os.close();
        is.close();
        
        return res;
    }

    private static Uri createTextPart(Context context, String id, String text) throws Exception {
        ContentValues mmsPartValue = new ContentValues();
        mmsPartValue.put("mid", id);
        mmsPartValue.put("ct", "text/plain");
        mmsPartValue.put("cid", "<" + System.currentTimeMillis() + ">");
        mmsPartValue.put("text", text);
        
        Uri partUri = Uri.parse("content://mms/" + id + "/part");
        return context.getContentResolver().insert(partUri, mmsPartValue);
    }

    public static boolean doesThreadIdExist(Context context, long threadId) {
        Uri uri = Uri.parse("content://mms-sms/conversations/" + threadId + "/");
        Cursor cursor = context.getContentResolver().query(uri, new String[]{"_id"}, null, null, null);
        if (cursor != null && cursor.moveToFirst()) {
            cursor.close();
            return true;
        }
        return false;
    }

    private static String extractAddrSpec(String address) {
        Matcher match = NAME_ADDR_EMAIL_PATTERN.matcher(address);
        if (match.matches()) {
            address = match.group(2);
        }
        return address;
    }

    public static long getOrCreateThreadId(Context context, String recipient) {
        Set<String> recipients = new HashSet<>();
        recipients.add(recipient);
        return getOrCreateThreadId(context, recipients);
    }

    public static long getOrCreateThreadId(Context context, Set<String> recipients) {
        Uri.Builder uriBuilder = Uri.parse("content://mms-sms/threadID").buildUpon();
        for (String recipient : recipients) {
            if (isEmailAddress(recipient)) {
                recipient = extractAddrSpec(recipient);
            }
            uriBuilder.appendQueryParameter("recipient", recipient);
        }
        
        Uri uri = uriBuilder.build();
        Cursor cursor = query(context, context.getContentResolver(), uri, new String[]{"_id"}, null, null, null);
        long id;
        if (cursor != null) {
            try {
                if (cursor.moveToFirst()) {
                    id = cursor.getLong(0);
                    return id;
                }
            } finally {
                cursor.close();
            }
        }
        
        return new Random().nextLong();
    }

    public static Uri insert(Context context, String addr, String contactId, long timeStampDate, String subject, String body, int type, byte[] imageBytes) {
        try {
            boolean isOut = (type != 1); // If type is 1, it's incoming (not out)
            
            Uri destUri = Uri.parse("content://mms");
            long thread_id = getOrCreateThreadId(context, addr);
            
            ContentValues dummyValues = new ContentValues();
            dummyValues.put("thread_id", thread_id);
            dummyValues.put("body", "Dummy SMS body.");
            Uri dummySms = context.getContentResolver().insert(Uri.parse("content://sms/"), dummyValues);
            
            long now = System.currentTimeMillis();
            ContentValues mmsValues = new ContentValues();
            mmsValues.put("thread_id", thread_id);
            mmsValues.put("date", timeStampDate / 1000L);
            mmsValues.put("date_sent", timeStampDate / 1000L);
            mmsValues.put("msg_box", type);
            mmsValues.put("m_id", System.currentTimeMillis());
            mmsValues.put("read", 0);
            mmsValues.put("seen", 0);
            mmsValues.put("sub", subject);
            mmsValues.put("sub_cs", 106);
            mmsValues.put("ct_t", "application/vnd.wap.multipart.related");
            mmsValues.put("exp", imageBytes.length);
            mmsValues.put("m_cls", "personal");
            mmsValues.put("m_type", 128);
            mmsValues.put("v", 19);
            mmsValues.put("pri", 129);
            mmsValues.put("tr_id", "T" + Long.toHexString(now));
            mmsValues.put("resp_st", 128);
            
            Uri res = context.getContentResolver().insert(destUri, mmsValues);
            String messageId = res.getLastPathSegment().trim();
            Log.e(">>>>>>>", "Message saved as " + res);
            
            createPart(context, messageId, imageBytes);
            createTextPart(context, messageId, body);
            createAddr(context, messageId, addr, isOut, contactId);
            
            context.getContentResolver().delete(dummySms, null, null);
            return res;
            
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static boolean isEmailAddress(String address) {
        if (TextUtils.isEmpty(address)) {
            return false;
        }
        String s = extractAddrSpec(address);
        return EMAIL_ADDRESS_PATTERN.matcher(s).matches();
    }

    private static boolean isLowMemory(Context context) {
        if (context == null) {
            return false;
        }
        ActivityManager am = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
        ActivityManager.MemoryInfo outInfo = new ActivityManager.MemoryInfo();
        am.getMemoryInfo(outInfo);
        return outInfo.lowMemory;
    }

    private static boolean isLowMemory(SQLiteException e) {
        return SQLITE_EXCEPTION_DETAIL_MESSAGE.equals(e.getMessage());
    }

    public static Cursor query(Context context, ContentResolver resolver, Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        try {
            return resolver.query(uri, projection, selection, selectionArgs, sortOrder);
        } catch (SQLiteException e) {
            checkSQLiteException(context, e);
            return null;
        }
    }
}
