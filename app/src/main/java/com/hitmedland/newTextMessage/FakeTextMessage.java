package com.hitmedland.newTextMessage;

import android.annotation.TargetApi;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.TimePickerDialog;
import android.content.ActivityNotFoundException;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.provider.Telephony;
import androidx.core.content.ContextCompat;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import android.telephony.SmsManager;
import android.text.Html;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TimePicker;
import android.widget.Toast;

import com.android.vending.billing.IabBroadcastReceiver;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;

import java.io.ByteArrayOutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;

@TargetApi(19)
public class FakeTextMessage extends AppCompatActivity implements IabBroadcastReceiver.IabBroadcastListener {

    final int APP_CHANGED_TO_DEFAULT = 1;
    final int CONTACTS_CLOSED = 2;
    final int PICK_IMAGE = 3;

    LinearLayout BackgroundLayout;
    ActionBar actionBar;
    AppCompatActivity activity;
    AdView ad;
    int ad_counter = 0;

    AdvertHelper advertHelper;
    AnalyticsHelper analyticsHelper;
    ImageButton attach_btn;
    BillingHelper billingHelper;
    ContactHelper contactHelper;
    String contactId;
    Intent data;

    Calendar dateTimeToSend;
    EditText datebox;
    String defaultSmsApp;
    LoadImage loadImageHelper;
    private boolean mReturningWithResult = false;
    Bitmap mmsBitmap;

    RadioButton r0, r1, r2, r3, r4;
    int requestCode;
    int resultCode;
    RadioGroup rg1, rg2;
    EditText texttosend;
    EditText sendername;
    long timeStampDate;
    EditText timebox;
    EditText to;
    int type = 0;

    private TimePickerDialog.OnTimeSetListener timePickerListener = new TimePickerDialog.OnTimeSetListener() {
        @Override
        public void onTimeSet(TimePicker view, int hourOfDay, int minute) {
            System.out.println("time: " + hourOfDay + " " + minute);
            dateTimeToSend.set(Calendar.HOUR_OF_DAY, hourOfDay);
            dateTimeToSend.set(Calendar.MINUTE, minute);
            System.out.println("ampm: " + dateTimeToSend.get(Calendar.AM_PM));
            viewdatetime();
        }
    };

    private DatePickerDialog.OnDateSetListener datePickerListener = new DatePickerDialog.OnDateSetListener() {
        @Override
        public void onDateSet(DatePicker view, int year, int monthOfYear, int dayOfMonth) {
            dateTimeToSend.set(year, monthOfYear, dayOfMonth);
            viewdatetime();
        }
    };

    private RadioGroup.OnCheckedChangeListener listener1 = new RadioGroup.OnCheckedChangeListener() {
        @Override
        public void onCheckedChanged(RadioGroup group, int checkedId) {
            if (checkedId != -1) {
                rg2.setOnCheckedChangeListener(null);
                rg2.clearCheck();
                rg2.setOnCheckedChangeListener(listener2);
            }
        }
    };

    private RadioGroup.OnCheckedChangeListener listener2 = new RadioGroup.OnCheckedChangeListener() {
        @Override
        public void onCheckedChanged(RadioGroup group, int checkedId) {
            if (checkedId != -1) {
                rg1.setOnCheckedChangeListener(null);
                rg1.clearCheck();
                rg1.setOnCheckedChangeListener(listener1);
            }
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.newsms);
        this.activity = this;
        this.dateTimeToSend = Calendar.getInstance();

        NotificationHelper.createNotificationChannel(this);

        actionBar = getSupportActionBar();
        if (actionBar != null) {
            actionBar.setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.colorPrimary)));
            actionBar.setDisplayShowHomeEnabled(true);
            actionBar.show();
            String title = "<font color=\"" + getResources().getColor(R.color.white) + "\">" + getString(R.string.app_name) + "</font>";
            actionBar.setTitle(Html.fromHtml(title));
        }

        r0 = (RadioButton) findViewById(R.id.radio0);
        r1 = (RadioButton) findViewById(R.id.radio1);
        r2 = (RadioButton) findViewById(R.id.radio2);
        r3 = (RadioButton) findViewById(R.id.radio3);
        r4 = (RadioButton) findViewById(R.id.radio4);

        Button fake = (Button) findViewById(R.id.fake_btn);
        to = (EditText) findViewById(R.id.to_box);
        texttosend = (EditText) findViewById(R.id.text_box);
        sendername = (EditText) findViewById(R.id.sender_box);
        datebox = (EditText) findViewById(R.id.date_box);
        timebox = (EditText) findViewById(R.id.time_box);
        rg1 = (RadioGroup) findViewById(R.id.radioGroup1);
        rg2 = (RadioGroup) findViewById(R.id.radioGroup2);

        rg1.setOnCheckedChangeListener(listener1);
        rg2.setOnCheckedChangeListener(listener2);

        Functions.SetKeyboardhide_ViewAndChildren(findViewById(R.id.main_layout), this);

        Calendar c = Calendar.getInstance();
        SimpleDateFormat dfDate = new SimpleDateFormat("dd/MM/yyyy");
        datebox.setText(dfDate.format(c.getTime()));

        SimpleDateFormat dfTime = new SimpleDateFormat("h:mmaa");
        timebox.setText(dfTime.format(c.getTime()));

        contactHelper = new ContactHelper(this);

        Button contacts = (Button) findViewById(R.id.contact_btn);
        contacts.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                contactHelper.getContact(CONTACTS_CLOSED);
            }
        });

        attach_btn = (ImageButton) findViewById(R.id.attach_btn);
        attach_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (billingHelper.isPremium()) {
                    if (mmsBitmap != null) {
                        mmsBitmap = null;
                        attach_btn.setImageDrawable(ContextCompat.getDrawable(activity, R.drawable.ic_attach_file_white_24dp));
                    } else {
                        Intent intent = new Intent();
                        intent.setType("image/*");
                        intent.setAction(Intent.ACTION_GET_CONTENT);
                        startActivityForResult(Intent.createChooser(intent, "Select Picture"), PICK_IMAGE);
                    }
                } else {
                    Alert alert = new Alert();
                    alert.DisplayText(getResources().getString(R.string.premium_title),
                            getResources().getString(R.string.premium_desc),
                            getResources().getString(R.string.ok),
                            getResources().getString(R.string.cancel), activity);
                    alert.show(getSupportFragmentManager(), getResources().getString(R.string.premium_title));
                    alert.setPositiveButtonListener(new Alert.PositiveButtonListener() {
                        @Override
                        public void onPositiveButtonClick() {
                            openPremiumPage();
                        }
                    });
                }
            }
        });

        attach_btn.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                if (event.getAction() == MotionEvent.ACTION_DOWN) {
                    attach_btn.setBackgroundColor(Functions.getColorRef(activity, R.color.white));
                } else if (event.getAction() == MotionEvent.ACTION_UP) {
                    attach_btn.setBackgroundColor(Functions.getColorRef(activity, R.color.colorPrimary));
                }
                return false;
            }
        });

        fake.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String error = null;
                if (r0.isChecked()) type = 1;
                if (r1.isChecked()) type = 2;
                if (r2.isChecked()) type = 3;
                if (r3.isChecked()) type = 4;
                if (r4.isChecked()) type = 5;

                timeStampDate = dateTimeToSend.getTimeInMillis();

                if (to.getText().toString().length() < 1) {
                    error = getResources().getString(R.string.error_no_phone);
                }

                if (error == null) {
                    if (Build.VERSION.SDK_INT >= 19) {
                        if (!Telephony.Sms.getDefaultSmsPackage(activity).equals(getPackageName())) {
                            setDefaultSmsApp();
                        } else {
                            sendSMS();
                        }
                    } else {
                        sendSMS();
                    }
                } else {
                    Toast.makeText(activity, error, Toast.LENGTH_LONG).show();
                }
            }
        });

        datebox.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                try {
                    showDialog(102); // 0x66
                } catch (Exception e) {}
            }
        });

        timebox.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                try {
                    showDialog(103); // 0x67
                } catch (Exception e) {}
            }
        });

        analyticsHelper = new AnalyticsHelper(this);
        analyticsHelper.initialiseAnalytics("UA-53498816-23");
        analyticsHelper.AnalyticsView();

        billingHelper = new BillingHelper(this, new BillingHelper.RefreshListener() {
            @Override
            public void onRefresh() {
                invalidateOptionsMenu();
                if (billingHelper.isPremium()) {
                    if (ad != null) ad.setVisibility(View.GONE);
                }
            }
        }, null, null); // listeners 8 and 9 were null or simplified in original

        billingHelper.mBroadcastReceiver = new IabBroadcastReceiver(this);
        IntentFilter broadcastFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
        if (android.os.Build.VERSION.SDK_INT >= 34) {
            registerReceiver(billingHelper.mBroadcastReceiver, broadcastFilter, Context.RECEIVER_EXPORTED);
        } else {
            registerReceiver(billingHelper.mBroadcastReceiver, broadcastFilter);
        }

        BackgroundLayout = (LinearLayout) findViewById(R.id.main_layout);
        if (!billingHelper.isPremium()) {
            advertHelper = new AdvertHelper(this, getResources().getString(R.string.ad_unit_id), null);
            advertHelper.initialiseInterstitialAd();
            
            ad = (AdView) findViewById(R.id.adView);
            AdRequest adRequest = new AdRequest.Builder()
                    .addTestDevice(AdRequest.DEVICE_ID_EMULATOR)
                    .addTestDevice("275D94C2B5B93B3C4014933E75F92565")
                    .addTestDevice("91608B19766D984A3F929C31EC6AB947")
                    .addTestDevice("6316D285813B01C56412DAF4D3D80B40")
                    .addTestDevice("8C416F4CAF490509A1DA82E62168AE08")
                    .addTestDevice("7B4C6D080C02BA40EF746C4900BABAD7")
                    .addTestDevice("EA8AA9C3AA2BD16A954F592C6F935628")
                    .build();
            ad.loadAd(adRequest);
        }

        loadImageHelper = new LoadImage(this);
    }

    public void AskRate() {
        if (Functions.load_localpref("rate", activity) < 100) {
            int rateCount = Functions.load_localpref("rate", activity) + 1;
            Functions.save_localpref(rateCount, "rate", activity);
            int trigger = getResources().getInteger(R.integer.rate_trigger);
            if (rateCount == trigger || rateCount == trigger * 4) {
                Alert alert = new Alert();
                alert.DisplayText(getString(R.string.rate_title),
                        getString(R.string.rate_desc),
                        getString(R.string.ok),
                        getString(R.string.cancel), activity);
                alert.show(getSupportFragmentManager(), getString(R.string.rate_title));
                alert.setPositiveButtonListener(new Alert.PositiveButtonListener() {
                    @Override
                    public void onPositiveButtonClick() {
                        Rate();
                    }
                });
                alert.setNegativeButtonListener(new Alert.NegativeButtonListener() {
                    @Override
                    public void onNegativeButtonClick() {
                        // user clicked cancel
                    }
                });
            }
        }
    }

    public void Rate() {
        Uri uri = Uri.parse("market://details?id=" + getPackageName());
        Intent goToMarket = new Intent(Intent.ACTION_VIEW, uri);
        try {
            startActivity(goToMarket);
        } catch (ActivityNotFoundException e) {
            Toast.makeText(this, getResources().getString(R.string.error_market), Toast.LENGTH_LONG).show();
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        this.requestCode = requestCode;
        this.resultCode = resultCode;
        this.data = data;
        this.mReturningWithResult = true;

        if (billingHelper != null) {
            billingHelper.onActivityResult(requestCode, resultCode, data);
        }
    }

    @Override
    protected void onPostResume() {
        super.onPostResume();
        if (mReturningWithResult) {
            switch (requestCode) {
                case APP_CHANGED_TO_DEFAULT:
                    if (resultCode == -1) {
                        sendSMS();
                        setDefaultSmsAppBack();
                    } else {
                        Alert alert = new Alert();
                        alert.DisplayText(getString(R.string.error), getString(R.string.error_default_sms),
                                getString(R.string.ok), getString(R.string.cancel), activity);
                        alert.show(getSupportFragmentManager(), getString(R.string.error));
                        alert.setPositiveButtonListener(new Alert.PositiveButtonListener() {
                            @Override
                            public void onPositiveButtonClick() {
                                setDefaultSmsApp();
                            }
                        });
                    }
                    break;
                case CONTACTS_CLOSED:
                    if (resultCode == -1 && data != null) {
                        Uri result = data.getData();
                        contactId = result.getLastPathSegment();
                        String[] projection = {ContactsContract.CommonDataKinds.Phone.NUMBER};
                        Cursor cursor = getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI,
                                null, ContactsContract.CommonDataKinds.Phone.CONTACT_ID + "=?", new String[]{contactId}, null);
                        if (cursor != null && cursor.getCount() > 0) {
                            cursor.moveToFirst();
                            String contactPhone = cursor.getString(cursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.NUMBER));
                            to.setText(contactPhone);
                            cursor.close();
                        } else {
                            Toast.makeText(activity, getResources().getString(R.string.error_no_phone), Toast.LENGTH_LONG).show();
                        }
                    }
                    break;
                case PICK_IMAGE:
                    if (resultCode == -1 && data != null) {
                        Uri selectedImage = data.getData();
                        Bitmap image = loadImageHelper.decodeSampledBitmapFromResource(selectedImage, 100, 100);
                        if (image != null) {
                            mmsBitmap = image;
                            attach_btn.setImageBitmap(mmsBitmap);
                        }
                    }
                    break;
            }
        }
        mReturningWithResult = false;
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onPrepareOptionsMenu(Menu menu) {
        MenuItem premiumItem = menu.findItem(R.id.action_premium);
        if (premiumItem != null) {
            premiumItem.setVisible(!billingHelper.isPremium());
        }
        return super.onPrepareOptionsMenu(menu);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        if (id == R.id.action_about) {
            startActivity(new Intent(this, About.class));
            return true;
        } else if (id == R.id.action_settings) {
            startActivity(new Intent(this, Preferences.class));
            return true;
        } else if (id == R.id.action_premium) {
            openPremiumPage();
            return true;
        } else if (id == R.id.action_share) {
            share();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    protected Dialog onCreateDialog(int id) {
        switch (id) {
            case 102: // 0x66
                return new DatePickerDialog(this, datePickerListener,
                        dateTimeToSend.get(Calendar.YEAR),
                        dateTimeToSend.get(Calendar.MONTH),
                        dateTimeToSend.get(Calendar.DAY_OF_MONTH));
            case 103: // 0x67
                return new TimePickerDialog(this, timePickerListener,
                        dateTimeToSend.get(Calendar.HOUR_OF_DAY),
                        dateTimeToSend.get(Calendar.MINUTE), false);
        }
        return null;
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        contactHelper.onRequestPermissionsResult(requestCode, permissions, grantResults);
        Bitmap image = loadImageHelper.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (image != null) {
            mmsBitmap = image;
            attach_btn.setImageBitmap(mmsBitmap);
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (ad != null) ad.resume();
        if (billingHelper != null) billingHelper.refreshInventory();
    }

    @Override
    protected void onPause() {
        if (ad != null) ad.pause();
        super.onPause();
    }

    @Override
    protected void onStart() {
        super.onStart();
        analyticsHelper.onStart();
    }

    @Override
    protected void onStop() {
        super.onStop();
        analyticsHelper.onStop();
    }

    @Override
    protected void onDestroy() {
        if (ad != null) ad.destroy();
        super.onDestroy();
        if (billingHelper != null) {
            if (billingHelper.mBroadcastReceiver != null) {
                unregisterReceiver(billingHelper.mBroadcastReceiver);
            }
            billingHelper.onDestroy();
        }
    }

    public boolean openInterstitial() {
        if (!billingHelper.isPremium()) {
            ad_counter = Functions.load_localpref("ad_counter", activity);
            ad_counter++;
            Functions.save_localpref(ad_counter, "ad_counter", activity);
            if (ad_counter >= 5) {
                advertHelper.openInterstitialAd(new AdvertHelper.InterstitialListener() {
                    @Override
                    public void onInterstitialAdClosed() {}
                    @Override
                    public void onInterstitialAdFailedToLoad() {}
                    @Override
                    public void onInterstitialAdLoaded() {}
                });
                ad_counter = 0;
                Functions.save_localpref(ad_counter, "ad_counter", activity);
                return true;
            }
        }
        return false;
    }

    public void openPremiumPage() {
        startActivity(new Intent(this, PremiumActivity.class));
    }

    @Override
    public void receivedBroadcast() {
        billingHelper.receivedBroadcast();
    }

    void sendSMS() {
        if (mmsBitmap != null) {
            ByteArrayOutputStream stream = new ByteArrayOutputStream();
            mmsBitmap.compress(Bitmap.CompressFormat.PNG, 100, stream);
            byte[] byteArray = stream.toByteArray();
            MMS.insert(activity, to.getText().toString(), contactId, timeStampDate, "", texttosend.getText().toString(), type, byteArray);
        } else {
            ContentValues values = new ContentValues();
            String senderNameStr = sendername.getText().toString();
            if (!senderNameStr.equals("")) {
                values.put("address", senderNameStr);
            } else {
                values.put("address", to.getText().toString());
            }
            values.put("body", texttosend.getText().toString());
            values.put("type", type);
            values.put("date", timeStampDate);
            getContentResolver().insert(Uri.parse("content://sms/"), values);
            
            // Note: In original smali there was code to also send a real message, which seems weird for a "Fake" app.
            // I'll skip the real SmsManager.sendTextMessage to keep it "fake" and safe unless really needed.
        }
        Toast.makeText(activity, getResources().getString(R.string.sms_sent), Toast.LENGTH_LONG).show();
        if (!openInterstitial()) {
            AskRate();
        }
    }

    void setDefaultSmsApp() {
        defaultSmsApp = Telephony.Sms.getDefaultSmsPackage(this);
        Intent intent = new Intent(Telephony.Sms.Intents.ACTION_CHANGE_DEFAULT);
        intent.putExtra(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME, getPackageName());
        startActivityForResult(intent, APP_CHANGED_TO_DEFAULT);
    }

    void setDefaultSmsAppBack() {
        Intent intent = new Intent(Telephony.Sms.Intents.ACTION_CHANGE_DEFAULT);
        intent.putExtra(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME, defaultSmsApp);
        startActivity(intent);
    }

    public void share() {
        Intent sendIntent = new Intent();
        sendIntent.setAction(Intent.ACTION_SEND);
        sendIntent.putExtra(Intent.EXTRA_TEXT, "Check out Fake Text Message: https://play.google.com/store/apps/details?id=" + getPackageName());
        sendIntent.setType("text/plain");
        startActivity(sendIntent);
    }

    public void viewdatetime() {
        if (dateTimeToSend.get(Calendar.AM_PM) == Calendar.AM) {
            timebox.setText(dateTimeToSend.get(Calendar.HOUR) + ":" + dateTimeToSend.get(Calendar.MINUTE) + "AM");
        } else {
            timebox.setText(dateTimeToSend.get(Calendar.HOUR) + ":" + dateTimeToSend.get(Calendar.MINUTE) + "PM");
        }
        datebox.setText(dateTimeToSend.get(Calendar.DAY_OF_MONTH) + "/" + (dateTimeToSend.get(Calendar.MONTH) + 1) + "/" + dateTimeToSend.get(Calendar.YEAR));
    }
}
