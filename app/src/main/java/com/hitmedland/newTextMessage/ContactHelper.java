package com.hitmedland.newTextMessage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.provider.ContactsContract;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.appcompat.app.AppCompatActivity;

public class ContactHelper {
    int ContactClosedRequestCode = 0;
    final int MY_PERMISSIONS_REQUEST_READ_CONTACTS = 50;
    AppCompatActivity activity;
    String explanationCancel = "CANCEL";
    String explanationDesc = "The app requires to read the contacts.";
    String explanationOK = "OK";
    String explanationTitle = "Read Contacts Permission";

    public ContactHelper(AppCompatActivity activity) {
        this.activity = activity;
    }

    public void getContact(int ContactClosedRequestCode) {
        this.ContactClosedRequestCode = ContactClosedRequestCode;
        if (ContextCompat.checkSelfPermission(activity, "android.permission.READ_CONTACTS") != PackageManager.PERMISSION_GRANTED) {
            if (ActivityCompat.shouldShowRequestPermissionRationale(activity, "android.permission.READ_CONTACTS")) {
                Alert alert = new Alert();
                alert.DisplayText(explanationTitle, explanationDesc, explanationOK, explanationCancel, activity);
                alert.show(activity.getSupportFragmentManager(), explanationTitle);
                alert.setPositiveButtonListener(new Alert.PositiveButtonListener() {
                    @Override
                    public void onPositiveButtonClick() {
                        ActivityCompat.requestPermissions(activity, new String[]{"android.permission.READ_CONTACTS"}, MY_PERMISSIONS_REQUEST_READ_CONTACTS);
                    }
                });
            } else {
                ActivityCompat.requestPermissions(activity, new String[]{"android.permission.READ_CONTACTS"}, MY_PERMISSIONS_REQUEST_READ_CONTACTS);
            }
        } else {
            getContactsDirect(ContactClosedRequestCode);
        }
    }

    public void getContactsDirect(int requestCode) {
        Intent intent = new Intent(Intent.ACTION_PICK, ContactsContract.Contacts.CONTENT_URI);
        activity.startActivityForResult(intent, requestCode);
    }

    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        if (requestCode == MY_PERMISSIONS_REQUEST_READ_CONTACTS) {
            if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                getContactsDirect(ContactClosedRequestCode);
            }
        }
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
