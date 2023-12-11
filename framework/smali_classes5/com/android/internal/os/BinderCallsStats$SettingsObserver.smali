.class public Lcom/android/internal/os/BinderCallsStats$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsObserver"
.end annotation


# static fields
.field public static final SETTINGS_COLLECT_LATENCY_DATA_KEY:Ljava/lang/String; = "collect_latency_data"

.field public static final SETTINGS_DETAILED_TRACKING_KEY:Ljava/lang/String; = "detailed_tracking"

.field public static final SETTINGS_ENABLED_KEY:Ljava/lang/String; = "enabled"

.field public static final SETTINGS_IGNORE_BATTERY_STATUS_KEY:Ljava/lang/String; = "ignore_battery_status"

.field public static final SETTINGS_LATENCY_HISTOGRAM_BUCKET_COUNT_KEY:Ljava/lang/String; = "latency_histogram_bucket_count"

.field public static final SETTINGS_LATENCY_HISTOGRAM_BUCKET_SCALE_FACTOR_KEY:Ljava/lang/String; = "latency_histogram_bucket_scale_factor"

.field public static final SETTINGS_LATENCY_HISTOGRAM_FIRST_BUCKET_SIZE_KEY:Ljava/lang/String; = "latency_histogram_first_bucket_size"

.field public static final SETTINGS_LATENCY_OBSERVER_PUSH_INTERVAL_MINUTES_KEY:Ljava/lang/String; = "latency_observer_push_interval_minutes"

.field public static final SETTINGS_LATENCY_OBSERVER_SAMPLING_INTERVAL_KEY:Ljava/lang/String; = "latency_observer_sampling_interval"

.field public static final SETTINGS_LATENCY_OBSERVER_SHARDING_MODULO_KEY:Ljava/lang/String; = "latency_observer_sharding_modulo"

.field public static final SETTINGS_MAX_CALL_STATS_KEY:Ljava/lang/String; = "max_call_stats_count"

.field public static final SETTINGS_SAMPLING_INTERVAL_KEY:Ljava/lang/String; = "sampling_interval"

.field public static final SETTINGS_SHARDING_MODULO_KEY:Ljava/lang/String; = "sharding_modulo"

.field public static final SETTINGS_TRACK_DIRECT_CALLING_UID_KEY:Ljava/lang/String; = "track_calling_uid"

.field public static final SETTINGS_TRACK_SCREEN_INTERACTIVE_KEY:Ljava/lang/String; = "track_screen_state"

.field public static final SETTINGS_UPLOAD_DATA_KEY:Ljava/lang/String; = "upload_data"


# instance fields
.field private final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mParser:Landroid/util/KeyValueListParser;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BinderCallsStats;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "binderCallsStats"    # Lcom/android/internal/os/BinderCallsStats;

    .line 1873
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1867
    const-string v0, "binder_calls_stats"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mUri:Landroid/net/Uri;

    .line 1869
    new-instance v1, Landroid/util/KeyValueListParser;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    .line 1874
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mContext:Landroid/content/Context;

    .line 1875
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1876
    iput-object p2, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 1878
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->onChange()V

    .line 1879
    return-void
.end method

.method public static configureLatencyObserver(Landroid/util/KeyValueListParser;Lcom/android/internal/os/BinderLatencyObserver;)V
    .registers 6
    .param p0, "mParser"    # Landroid/util/KeyValueListParser;
    .param p1, "binderLatencyObserver"    # Lcom/android/internal/os/BinderLatencyObserver;

    .line 1929
    const-string/jumbo v0, "latency_observer_sampling_interval"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/os/BinderLatencyObserver;->setSamplingInterval(I)V

    .line 1932
    const-string/jumbo v0, "latency_observer_sharding_modulo"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/os/BinderLatencyObserver;->setShardingModulo(I)V

    .line 1935
    nop

    .line 1936
    const-string/jumbo v0, "latency_histogram_bucket_count"

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1939
    const-string/jumbo v1, "latency_histogram_first_bucket_size"

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1942
    const-string/jumbo v2, "latency_histogram_bucket_scale_factor"

    const/high16 v3, 0x3f900000    # 1.125f

    invoke-virtual {p0, v2, v3}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 1935
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/os/BinderLatencyObserver;->setHistogramBucketsParams(IIF)V

    .line 1945
    const-string/jumbo v0, "latency_observer_push_interval_minutes"

    const/16 v1, 0x168

    invoke-virtual {p0, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/os/BinderLatencyObserver;->setPushInterval(I)V

    .line 1948
    return-void
.end method


# virtual methods
.method onChange()V
    .registers 6

    .line 1890
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "binder_calls_stats"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_11} :catch_12

    .line 1894
    goto :goto_1a

    .line 1892
    :catch_12
    move-exception v0

    .line 1893
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "BinderCallsStats"

    const-string v2, "Bad binder call stats settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1897
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1a
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 1898
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setTrackScreenInteractive(Z)V

    .line 1899
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setTrackDirectCallerUid(Z)V

    .line 1901
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    .line 1902
    const-string/jumbo v3, "ignore_battery_status"

    invoke-virtual {v2, v3, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1901
    invoke-virtual {v0, v2}, Lcom/android/internal/os/BinderCallsStats;->setIgnoreBatteryStatus(Z)V

    .line 1904
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    .line 1905
    const-string v3, "collect_latency_data"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1904
    invoke-virtual {v0, v2}, Lcom/android/internal/os/BinderCallsStats;->setCollectLatencyData(Z)V

    .line 1909
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v2}, Lcom/android/internal/os/BinderCallsStats;->getLatencyObserver()Lcom/android/internal/os/BinderLatencyObserver;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->configureLatencyObserver(Landroid/util/KeyValueListParser;Lcom/android/internal/os/BinderLatencyObserver;)V

    .line 1911
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    .line 1912
    const-string v2, "enabled"

    invoke-virtual {v0, v2, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1913
    .local v0, "enabled":Z
    iget-boolean v2, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mEnabled:Z

    if-eq v2, v0, :cond_80

    .line 1914
    if-eqz v0, :cond_65

    .line 1915
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {v2}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    goto :goto_69

    .line 1917
    :cond_65
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 1919
    :goto_69
    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mEnabled:Z

    .line 1920
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    new-array v1, v1, [Z

    invoke-virtual {v2, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1921
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/BinderCallsStats;->setAddDebugEntries(Z)V

    .line 1922
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v1}, Lcom/android/internal/os/BinderCallsStats;->getLatencyObserver()Lcom/android/internal/os/BinderLatencyObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BinderLatencyObserver;->reset()V

    .line 1924
    :cond_80
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 1883
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1884
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->onChange()V

    .line 1886
    :cond_b
    return-void
.end method
