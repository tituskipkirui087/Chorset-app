package com.hitmedland.newTextMessage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/**
 * Mandatory receiver for Android 4.4+ to be a default SMS app.
 */
public class MmsReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        // Mandatory for MMS delivery.
    }
}
