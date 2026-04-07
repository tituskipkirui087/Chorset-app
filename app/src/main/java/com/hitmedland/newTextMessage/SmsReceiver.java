package com.hitmedland.newTextMessage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/**
 * Mandatory receiver for Android 4.4+ to be a default SMS app.
 */
public class SmsReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        // This app is likely used for "faking" messages, so we might not want to 
        // actually handle incoming SMS, but we must have this receiver.
    }
}
