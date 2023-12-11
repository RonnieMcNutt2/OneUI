.class public Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;
.super Ljava/lang/Object;
.source "KnoxAnalytics.java"


# static fields
.field private static final DEBUG:Z

.field public static final KNOXANALYTICS_PROXY_SERVICE:Ljava/lang/String; = "knox_analytics_proxy"

.field private static TAG:Ljava/lang/String;

.field private static mService:Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 13
    const-string v0, "[KnoxAnalyticsProxySDK] "

    sput-object v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->TAG:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, "ro.product_ship"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService()Z
    .registers 1

    .line 67
    sget-object v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->mService:Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;

    if-nez v0, :cond_11

    .line 68
    const-string/jumbo v0, "knox_analytics_proxy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->mService:Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;

    .line 70
    :cond_11
    sget-object v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->mService:Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public static log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V
    .registers 6
    .param p0, "event"    # Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;

    .line 41
    sget-boolean v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 42
    sget-object v1, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_d
    invoke-static {}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->getService()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 45
    if-eqz v0, :cond_1d

    .line 46
    sget-object v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "log(): service not running!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_1d
    return-void

    .line 50
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 52
    .local v0, "token":J
    :try_start_22
    sget-object v2, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->mService:Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;->log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_3b
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_27} :catch_2d
    .catchall {:try_start_22 .. :try_end_27} :catchall_2b

    .line 62
    :cond_27
    :goto_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    goto :goto_49

    .line 62
    :catchall_2b
    move-exception v2

    goto :goto_4a

    .line 57
    :catch_2d
    move-exception v2

    .line 58
    .local v2, "e":Ljava/lang/SecurityException;
    :try_start_2e
    sget-boolean v3, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->DEBUG:Z

    if-eqz v3, :cond_27

    .line 59
    sget-object v3, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "log(): Security Exception in log - "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 53
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_3b
    move-exception v2

    .line 54
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->DEBUG:Z

    if-eqz v3, :cond_27

    .line 55
    sget-object v3, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "log(): Remote Exception in log - "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_2e .. :try_end_48} :catchall_2b

    goto :goto_27

    .line 64
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_49
    return-void

    .line 62
    :goto_4a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    throw v2
.end method
