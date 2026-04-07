package com.hitmedland.newTextMessage;

import android.app.Activity;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.analytics.Logger;
import com.google.android.gms.analytics.Tracker;
import java.util.HashMap;
import java.util.Map;

public class AnalyticsHelper {

    public enum TrackerName {
        APP_TRACKER
    }

    Activity activity;
    protected HashMap<TrackerName, Tracker> mTrackers = new HashMap<>();
    public Tracker tracker;

    public AnalyticsHelper(Activity activity) {
        this.activity = activity;
    }

    public void AnalyticsView() {
        if (tracker != null) {
            tracker.enableAutoActivityTracking(true);
            tracker.send(new HitBuilders.ScreenViewBuilder().build());
            GoogleAnalytics.getInstance(activity.getBaseContext()).dispatchLocalHits();
        }
    }

    public synchronized Tracker initialiseAnalytics(String PROPERTY_ID) {
        if (!mTrackers.containsKey(TrackerName.APP_TRACKER)) {
            GoogleAnalytics analytics = GoogleAnalytics.getInstance(activity);
            analytics.getLogger().setLogLevel(Logger.LogLevel.VERBOSE);
            analytics.setDryRun(false);
            tracker = analytics.newTracker(PROPERTY_ID);
            mTrackers.put(TrackerName.APP_TRACKER, tracker);
        }
        return mTrackers.get(TrackerName.APP_TRACKER);
    }

    protected void onStart() {
        GoogleAnalytics.getInstance(activity).reportActivityStart(activity);
    }

    protected void onStop() {
        GoogleAnalytics.getInstance(activity).reportActivityStop(activity);
    }
}
