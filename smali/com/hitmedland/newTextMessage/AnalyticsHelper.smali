.class public Lcom/hitmedland/newTextMessage/AnalyticsHelper;
.super Ljava/lang/Object;
.source "AnalyticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field protected mTrackers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;",
            "Lcom/google/android/gms/analytics/Tracker;",
            ">;"
        }
    .end annotation
.end field

.field public tracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hitmedland/newTextMessage/AnalyticsHelper;->mTrackers:Ljava/util/HashMap;

    .line 28
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/AnalyticsHelper;->activity:Landroid/app/Activity;

    .line 29
    return-void
.end method


# virtual methods
.method public AnalyticsView()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AnalyticsHelper;->tracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V

    .line 58
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AnalyticsHelper;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 59
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AnalyticsHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V

    .line 60
    return-void
.end method

.method public declared-synchronized initialiseAnalytics(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
    .locals 4
    .param p1, "PROPERTY_ID"    # Ljava/lang/String;

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AnalyticsHelper;->mTrackers:Ljava/util/HashMap;

    sget-object v2, Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;->APP_TRACKER:Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AnalyticsHelper;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 43
    .local v0, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V

    .line 44
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V

    .line 45
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    iput-object v1, p0, Lcom/hitmedland/newTextMessage/AnalyticsHelper;->tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 46
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AnalyticsHelper;->mTrackers:Ljava/util/HashMap;

    sget-object v2, Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;->APP_TRACKER:Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

    iget-object v3, p0, Lcom/hitmedland/newTextMessage/AnalyticsHelper;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .end local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    :cond_0
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AnalyticsHelper;->mTrackers:Ljava/util/HashMap;

    sget-object v2, Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;->APP_TRACKER:Lcom/hitmedland/newTextMessage/AnalyticsHelper$TrackerName;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AnalyticsHelper;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AnalyticsHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 66
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/AnalyticsHelper;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/hitmedland/newTextMessage/AnalyticsHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 71
    return-void
.end method
