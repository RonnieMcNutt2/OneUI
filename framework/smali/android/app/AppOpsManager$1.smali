.class Landroid/app/AppOpsManager$1;
.super Landroid/app/AppOpsManager$OnOpNotedCallback;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 267
    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpNotedCallback;-><init>()V

    return-void
.end method

.method private reportStackTraceIfNeeded(Landroid/app/SyncNotedAppOp;)V
    .registers 7
    .param p1, "op"    # Landroid/app/SyncNotedAppOp;

    .line 284
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$smisCollectingStackTraces()Z

    move-result v0

    if-nez v0, :cond_7

    .line 285
    return-void

    .line 287
    :cond_7
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$sfgetsConfig()Lcom/android/internal/app/MessageSamplingConfig;

    move-result-object v0

    .line 288
    .local v0, "config":Lcom/android/internal/app/MessageSamplingConfig;
    invoke-virtual {p1}, Landroid/app/SyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getSampledOpCode()I

    move-result v2

    const/16 v3, 0x88

    invoke-static {v1, v2, v3}, Landroid/app/AppOpsManager;->leftCircularDistance(III)I

    move-result v1

    .line 289
    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getAcceptableLeftDistance()I

    move-result v2

    if-le v1, v2, :cond_2f

    .line 290
    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getExpirationTimeSinceBootMillis()J

    move-result-wide v1

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_4d

    .line 292
    :cond_2f
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$smgetFormattedStackTrace()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "stackTrace":Ljava/lang/String;
    :try_start_33
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$smgetService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v3

    .line 296
    if-nez v2, :cond_40

    const-string v4, ""

    goto :goto_41

    :cond_40
    move-object v4, v2

    .line 295
    :goto_41
    invoke-interface {v3, v4, p1, v1}, Lcom/android/internal/app/IAppOpsService;->reportRuntimeAppOpAccessMessageAndGetConfig(Ljava/lang/String;Landroid/app/SyncNotedAppOp;Ljava/lang/String;)Lcom/android/internal/app/MessageSamplingConfig;

    move-result-object v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->-$$Nest$sfputsConfig(Lcom/android/internal/app/MessageSamplingConfig;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_48} :catch_49

    .line 299
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_4d

    .line 297
    :catch_49
    move-exception v2

    .line 298
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 301
    .end local v1    # "stackTrace":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4d
    :goto_4d
    return-void
.end method


# virtual methods
.method public onAsyncNoted(Landroid/app/AsyncNotedAppOp;)V
    .registers 2
    .param p1, "asyncOp"    # Landroid/app/AsyncNotedAppOp;

    .line 276
    return-void
.end method

.method public onNoted(Landroid/app/SyncNotedAppOp;)V
    .registers 2
    .param p1, "op"    # Landroid/app/SyncNotedAppOp;

    .line 270
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$1;->reportStackTraceIfNeeded(Landroid/app/SyncNotedAppOp;)V

    .line 271
    return-void
.end method

.method public onSelfNoted(Landroid/app/SyncNotedAppOp;)V
    .registers 2
    .param p1, "op"    # Landroid/app/SyncNotedAppOp;

    .line 280
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$1;->reportStackTraceIfNeeded(Landroid/app/SyncNotedAppOp;)V

    .line 281
    return-void
.end method
