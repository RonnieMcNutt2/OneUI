.class public final Landroid/companion/utils/FeatureUtils;
.super Ljava/lang/Object;
.source "FeatureUtils.java"


# static fields
.field private static final NAMESPACE_COMPANION:Ljava/lang/String; = "companion"

.field private static final PROPERTY_PERM_SYNC_ENABLED:Ljava/lang/String; = "perm_sync_enabled"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static isPermSyncEnabled()Z
    .registers 5

    .line 36
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 37
    const/4 v0, 0x1

    return v0

    .line 41
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 43
    .local v0, "identity":J
    :try_start_c
    const-string v2, "companion"

    const-string/jumbo v3, "perm_sync_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1a

    .line 46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    return v2

    .line 46
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    throw v2
.end method
