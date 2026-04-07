package com.hitmedland.newTextMessage;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/**
 * Mandatory service for Android 4.4+ to be a default SMS app.
 */
public class HeadlessSmsSendService extends Service {
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }
}
