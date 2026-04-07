package com.hitmedland.newTextMessage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.net.Uri;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.appcompat.app.AppCompatActivity;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

public class LoadImage {
    final int REQUEST_CODE = 51;
    AppCompatActivity activity;
    String explanationCancel = "CANCEL";
    String explanationDesc = "The app needs to read the picture from your storage.";
    String explanationOK = "OK";
    String explanationTitle = "Load Picture Permission";
    int reqHeight;
    int reqWidth;
    Uri selectedImage;

    public LoadImage(AppCompatActivity activity) {
        this.activity = activity;
    }

    public static int calculateInSampleSize(BitmapFactory.Options options, int reqWidth, int reqHeight) {
        int height = options.outHeight;
        int width = options.outWidth;
        int inSampleSize = 1;
        if (height > reqHeight || width > reqWidth) {
            int halfHeight = height / 2;
            int halfWidth = width / 2;
            while (halfHeight / inSampleSize >= reqHeight && halfWidth / inSampleSize >= reqWidth) {
                inSampleSize *= 2;
            }
        }
        return inSampleSize;
    }

    public Bitmap decodeSampledBitmapFromResource(Uri selectedImage, int reqWidth, int reqHeight) {
        this.selectedImage = selectedImage;
        this.reqHeight = reqHeight;
        this.reqWidth = reqWidth;
        if (ContextCompat.checkSelfPermission(this.activity, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
            if (ActivityCompat.shouldShowRequestPermissionRationale(this.activity, "android.permission.READ_EXTERNAL_STORAGE")) {
                Alert alert = new Alert();
                alert.DisplayText(this.explanationTitle, this.explanationDesc, this.explanationOK, this.explanationCancel, this.activity);
                alert.show(this.activity.getSupportFragmentManager(), this.explanationTitle);
                alert.setPositiveButtonListener(new Alert.PositiveButtonListener() {
                    public void onPositiveButton(String input) {
                        ActivityCompat.requestPermissions(LoadImage.this.activity, new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 51);
                    }
                });
                return null;
            }
            ActivityCompat.requestPermissions(this.activity, new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 51);
            return null;
        }
        return decodeSampledBitmapFromResource_direct(selectedImage, reqWidth, reqHeight);
    }

    public Bitmap decodeSampledBitmapFromResource_direct(Uri selectedImage, int reqWidth, int reqHeight) {
        try {
            return decodeSampledBitmapFromStream(selectedImage, reqWidth, reqHeight);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public Bitmap decodeSampledBitmapFromStream(Uri selectedImage, int reqWidth, int reqHeight) throws IOException {
        InputStream inputStream = this.activity.getContentResolver().openInputStream(selectedImage);
        if (!(inputStream instanceof BufferedInputStream)) {
            inputStream = new BufferedInputStream(inputStream);
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        Rect rect = new Rect(-1, -1, -1, -1);
        BitmapFactory.decodeStream(inputStream, rect, options);
        options.inSampleSize = calculateInSampleSize(options, reqWidth, reqHeight);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeStream(this.activity.getContentResolver().openInputStream(selectedImage), rect, options);
    }

    public Bitmap onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        if (requestCode == 51 && grantResults.length > 0 && grantResults[0] == 0) {
            return decodeSampledBitmapFromResource_direct(this.selectedImage, this.reqWidth, this.reqHeight);
        }
        return null;
    }

    public void setExplanationCancel(String explanationCancel) {
        this.explanationCancel = explanationCancel;
    }

    public void setExplanationDesc(String explanationDesc) {
        this.explanationDesc = explanationDesc;
    }

    public void setExplanationOK(String explanationOK) {
        this.explanationOK = explanationOK;
    }

    public void setExplanationTitle(String explanationTitle) {
        this.explanationTitle = explanationTitle;
    }
}
