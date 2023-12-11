.class public final Lcom/samsung/android/displayquality/SemDisplayAdaptiveSyncManager;
.super Ljava/lang/Object;
.source "SemDisplayAdaptiveSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displayquality/SemDisplayAdaptiveSyncManager$Result;
    }
.end annotation


# static fields
.field public static final RESULT_ERROR:I = 0x1

.field public static final RESULT_NO_SUPPORT:I = 0x2

.field public static final RESULT_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemDisplayAdaptiveSyncManager"

.field private static final mEnabled:Z

.field private static final mSupportAdaptiveSync:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    sput-boolean v0, Lcom/samsung/android/displayquality/SemDisplayAdaptiveSyncManager;->mEnabled:Z

    .line 42
    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ADAPTIVE_SYNC_SUPPORT:Z

    sput-boolean v0, Lcom/samsung/android/displayquality/SemDisplayAdaptiveSyncManager;->mSupportAdaptiveSync:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAdaptiveSyncEnabled(Z)I
    .registers 7
    .param p0, "enabled"    # Z

    .line 80
    const-string v0, "DisplayQuality"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 81
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/displayquality/ISemDisplayQualityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/displayquality/ISemDisplayQualityManager;

    move-result-object v1

    .line 83
    .local v1, "service":Lcom/samsung/android/displayquality/ISemDisplayQualityManager;
    sget-boolean v2, Lcom/samsung/android/displayquality/SemDisplayAdaptiveSyncManager;->mEnabled:Z

    const-string v3, "SemDisplayAdaptiveSyncManager"

    if-eqz v2, :cond_2c

    sget-boolean v2, Lcom/samsung/android/displayquality/SemDisplayAdaptiveSyncManager;->mSupportAdaptiveSync:Z

    if-nez v2, :cond_15

    goto :goto_2c

    .line 88
    :cond_15
    const/4 v2, 0x1

    if-nez v1, :cond_1e

    .line 89
    const-string v4, "SemDisplayAdaptiveSyncManagerService is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v2

    .line 94
    :cond_1e
    :try_start_1e
    invoke-interface {v1, p0}, Lcom/samsung/android/displayquality/ISemDisplayQualityManager;->setAdaptiveSync(Z)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_24

    .line 98
    nop

    .line 100
    const/4 v2, 0x0

    return v2

    .line 95
    :catch_24
    move-exception v4

    .line 96
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "setAdaptiveSync"

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    return v2

    .line 84
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2c
    :goto_2c
    const-string v2, "SemDisplayAdaptiveSyncManager is not supported"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v2, 0x2

    return v2
.end method
