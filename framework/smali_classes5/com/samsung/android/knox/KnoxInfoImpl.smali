.class public Lcom/samsung/android/knox/KnoxInfoImpl;
.super Ljava/lang/Object;
.source "KnoxInfoImpl.java"


# static fields
.field static final INTERVAL_NANO_SEC:J = 0xb2d05e00L

.field static final TAG:Ljava/lang/String; = "KnoxInfoImpl"

.field static cachedTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static cached_knox_info:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static mKnoxInfo:Landroid/os/Bundle;

.field private static m_bIsKnoxInfoInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/knox/KnoxInfoImpl;->m_bIsKnoxInfoInitialized:Z

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->cached_knox_info:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->cachedTime:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCachedKnoxInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    const-class v0, Lcom/samsung/android/knox/KnoxInfoImpl;

    monitor-enter v0

    .line 31
    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/KnoxInfoImpl;->cachedTime:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/android/knox/KnoxInfoImpl;->cachedTime:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide v3, 0xb2d05e00L

    cmp-long v1, v1, v3

    if-gez v1, :cond_2f

    .line 32
    sget-object v1, Lcom/samsung/android/knox/KnoxInfoImpl;->cached_knox_info:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_4f

    monitor-exit v0

    return-object v1

    .line 34
    :cond_2f
    :try_start_2f
    const-string v1, "KnoxInfoImpl"

    const-string/jumbo v2, "put into cache"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {p0, p1}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 36
    .local v1, "ret":Landroid/os/Bundle;
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->cachedTime:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->cached_knox_info:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_4f

    .line 39
    monitor-exit v0

    return-object v1

    .line 30
    .end local v1    # "ret":Landroid/os/Bundle;
    .end local p0    # "ctx":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_4f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getKnoxInfo()Landroid/os/Bundle;
    .registers 6

    .line 49
    const-class v0, Lcom/samsung/android/knox/KnoxInfoImpl;

    monitor-enter v0

    .line 50
    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v1, :cond_67

    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "version":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sput-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_6b

    .line 55
    :try_start_f
    const-string/jumbo v2, "ro.config.knox"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 57
    if-eqz v1, :cond_40

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_40

    .line 58
    const-string/jumbo v2, "v30"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 59
    const-string v2, "2.0"

    move-object v1, v2

    goto :goto_37

    .line 60
    :cond_2c
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 61
    const-string v2, "1.0"

    move-object v1, v2

    .line 64
    :cond_37
    :goto_37
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 66
    :cond_40
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "version"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_4a
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "isSupportCallerInfo"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_54} :catch_55
    .catchall {:try_start_f .. :try_end_54} :catchall_6b

    .line 73
    goto :goto_67

    .line 69
    :catch_55
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    :try_start_56
    const-string v3, "KnoxInfoImpl"

    const-string v4, "failed to putString to mKnoxInfo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    sget-object v3, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .end local v1    # "version":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_67
    :goto_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_56 .. :try_end_68} :catchall_6b

    .line 76
    sget-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    return-object v0

    .line 75
    :catchall_6b
    move-exception v1

    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v1
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 294
    sget-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v0, :cond_7

    .line 295
    invoke-static {}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfo()Landroid/os/Bundle;

    .line 299
    :cond_7
    :try_start_7
    const-string v0, "2.0"

    sget-object v1, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 300
    const-string/jumbo v0, "isSupportMoveTo"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1e} :catch_1f

    .line 304
    :cond_1e
    goto :goto_27

    .line 302
    :catch_1f
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxInfoImpl"

    const-string v2, "failed to get knox info for APP"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_27
    sget-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 15
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "req"    # Ljava/lang/String;

    .line 94
    const-class v0, Lcom/samsung/android/knox/SemPersonaManager;

    monitor-enter v0

    .line 95
    const/4 v1, 0x0

    .line 97
    .local v1, "userid":I
    :try_start_4
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v2, :cond_b

    .line 98
    invoke-static {}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfo()Landroid/os/Bundle;

    .line 101
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_3a8

    move v1, v2

    .line 105
    :try_start_10
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    sget-boolean v2, Lcom/samsung/android/knox/KnoxInfoImpl;->m_bIsKnoxInfoInitialized:Z

    const/4 v3, 0x1

    if-nez v2, :cond_da

    .line 108
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 109
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isKnoxMode"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    .line 111
    .local v2, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v2, :cond_55

    .line 112
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v2, v1, v4}, Landroid/sec/enterprise/IEDMProxy;->isPackageAllowedToAccessExternalSdcard(II)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 113
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "isBlockExternalSD"

    const-string v6, "false"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 115
    :cond_49
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "isBlockExternalSD"

    const-string/jumbo v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 118
    :cond_55
    const-string v4, "KnoxInfoImpl"

    const-string/jumbo v5, "getService() returns null, set isBlockExternalSD to true"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "isBlockExternalSD"

    const-string/jumbo v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_68
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "isBlockBluetoothMenu"

    const-string/jumbo v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "isSamsungAccountBlocked"

    const-string/jumbo v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .end local v2    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_7e
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 126
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    .line 127
    .restart local v2    # "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v2, :cond_ab

    .line 128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v2, v1, v4}, Landroid/sec/enterprise/IEDMProxy;->isPackageAllowedToAccessExternalSdcard(II)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 129
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "isBlockExternalSD"

    const-string v6, "false"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bd

    .line 131
    :cond_9f
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "isBlockExternalSD"

    const-string/jumbo v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bd

    .line 134
    :cond_ab
    const-string v4, "KnoxInfoImpl"

    const-string/jumbo v5, "getService() returns null, set isBlockExternalSD to false. (DO)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "isBlockExternalSD"

    const-string v6, "false"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v2    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_bd
    :goto_bd
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 140
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isBlockExternalSD"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_ce
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isKioskModeEnabled"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sput-boolean v3, Lcom/samsung/android/knox/KnoxInfoImpl;->m_bIsKnoxInfoInitialized:Z

    .line 148
    :cond_da
    const-string/jumbo v2, "isSupportMoveTo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 149
    const-string v2, "KnoxInfoImpl"

    const-string v4, "ERROR | invalid request, isSupportMoveTo"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_ea
    const-string/jumbo v2, "isKnoxModeActive"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    .line 153
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_109

    .line 154
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isKnoxModeActive"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_113

    .line 156
    :cond_109
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isKnoxModeActive"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_113
    :goto_113
    const-string/jumbo v2, "isSecureFolderExist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    .line 161
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_12e

    .line 162
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isSecureFolderExist"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_138

    .line 164
    :cond_12e
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isSecureFolderExist"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_138
    :goto_138
    const-string/jumbo v2, "isSmartSwitchBnRAvailable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 168
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_153

    .line 169
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isSecureFolderExist"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15d

    .line 171
    :cond_153
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isSecureFolderExist"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_15d
    :goto_15d
    const-string/jumbo v2, "getContainerLabel"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17a

    .line 176
    move v2, v1

    .line 177
    .local v2, "id":I
    if-nez v2, :cond_16e

    .line 178
    invoke-static {}, Lcom/samsung/android/knox/KnoxInfoImpl;->getWorkProfileUserId()I

    move-result v4

    move v2, v4

    .line 181
    :cond_16e
    invoke-static {p0, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "containerName":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v6, "getContainerLabel"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v2    # "id":I
    .end local v4    # "containerName":Ljava/lang/String;
    :cond_17a
    const-string/jumbo v2, "getContainerAppIcon"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18f

    .line 187
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(I)[B

    move-result-object v2

    .line 188
    .local v2, "containerAppIcon":[B
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "getContainerAppIcon"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 191
    .end local v2    # "containerAppIcon":[B
    :cond_18f
    const-string/jumbo v2, "getPersonalModeLabel"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1af

    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, "personalModeLabel":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/knox/KnoxInfoImpl;->getPersonalModeName(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 194
    if-eqz v2, :cond_1a7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1a7

    .line 195
    const/4 v2, 0x0

    .line 196
    :cond_1a7
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "getPersonalModeLabel"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .end local v2    # "personalModeLabel":Ljava/lang/String;
    :cond_1af
    const-string v2, "getActiveUserId"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d3

    .line 199
    const/4 v2, 0x0

    .line 200
    .local v2, "userId":I
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1bc} :catch_39c
    .catchall {:try_start_10 .. :try_end_1bc} :catchall_3a8

    .line 201
    .local v4, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v4, :cond_1cc

    .line 203
    :try_start_1be
    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v5
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1be .. :try_end_1c2} :catch_1c4
    .catchall {:try_start_1be .. :try_end_1c2} :catchall_3a8

    move v2, v5

    .line 206
    goto :goto_1cc

    .line 204
    :catch_1c4
    move-exception v5

    .line 205
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1c5
    const-string v6, "KnoxInfoImpl"

    const-string v7, "failed to get focused Knox id"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1cc
    :goto_1cc
    sget-object v5, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v6, "getActiveUserId"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    .end local v2    # "userId":I
    .end local v4    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_1d3
    const-string/jumbo v2, "getWorkInfo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_22b

    .line 212
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    .line 213
    .local v2, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v5
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_1e5} :catch_39c
    .catchall {:try_start_1c5 .. :try_end_1e5} :catchall_3a8

    if-nez v5, :cond_22b

    .line 214
    if-eqz v2, :cond_22b

    .line 216
    :try_start_1e9
    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v5

    .line 217
    .local v5, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_222

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_222

    .line 218
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1f6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_222

    .line 219
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 220
    .local v7, "containerId":I
    if-eqz v7, :cond_21f

    const/16 v8, 0x96

    if-lt v7, v8, :cond_20d

    .line 221
    goto :goto_21f

    .line 223
    :cond_20d
    sget-object v8, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v9, "getWorkId"

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_21f
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_21f} :catch_223
    .catchall {:try_start_1e9 .. :try_end_21f} :catchall_3a8

    .line 218
    .end local v7    # "containerId":I
    :cond_21f
    :goto_21f
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f6

    .line 228
    .end local v5    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "i":I
    :cond_222
    goto :goto_22b

    .line 226
    :catch_223
    move-exception v5

    .line 227
    .local v5, "e":Ljava/lang/Exception;
    :try_start_224
    const-string v6, "KnoxInfoImpl"

    const-string v7, "failed getWorkInfo:"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .end local v2    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_22b
    :goto_22b
    const-string v2, "getAllPersonaInfo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_351

    .line 234
    const/4 v2, 0x0

    .line 235
    .local v2, "containerAppIcon":[B
    const/4 v5, 0x0

    .line 236
    .local v5, "containerName":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v7, "getContainerCount"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6
    :try_end_241
    .catch Ljava/lang/Exception; {:try_start_224 .. :try_end_241} :catch_39c
    .catchall {:try_start_224 .. :try_end_241} :catchall_3a8

    .line 238
    .local v6, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v6, :cond_351

    .line 240
    :try_start_243
    invoke-virtual {v6, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v7

    .line 241
    .local v7, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_340

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_340

    .line 242
    sget-object v8, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v9, "getContainerCount"

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_25c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_340

    .line 244
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 245
    .local v9, "containerId":I
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(I)[B

    move-result-object v10

    move-object v2, v10

    .line 246
    invoke-static {p0, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 248
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-eqz v10, :cond_296

    .line 249
    sget-object v10, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getContainerOrder_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2b7

    .line 251
    :cond_296
    const-string v10, "KnoxInfoImpl"

    const-string/jumbo v11, "getUserInfo returns null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object v10, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getContainerOrder_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    :goto_2b7
    sget-object v10, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getContainerId_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    sget-object v10, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getContainerLabel_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget-object v10, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getContainerAppIcon_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 257
    sget-object v10, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isPremiumContainer_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    sget-object v10, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isSecureFolder_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_33c
    .catch Ljava/lang/Exception; {:try_start_243 .. :try_end_33c} :catch_341
    .catchall {:try_start_243 .. :try_end_33c} :catchall_3a8

    .line 243
    .end local v9    # "containerId":I
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_25c

    .line 264
    .end local v7    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "i":I
    :cond_340
    goto :goto_351

    .line 261
    :catch_341
    move-exception v3

    .line 262
    .local v3, "e":Ljava/lang/Exception;
    :try_start_342
    const-string v7, "KnoxInfoImpl"

    const-string v8, "failed to get container info:"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    sget-object v7, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v8, "getContainerCount"

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    .end local v2    # "containerAppIcon":[B
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "containerName":Ljava/lang/String;
    .end local v6    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_351
    :goto_351
    const-string/jumbo v2, "isSupportSecureFolder"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_387

    .line 269
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    .line 270
    .local v2, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v2, :cond_37d

    .line 271
    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v3

    if-eqz v3, :cond_372

    .line 272
    sget-object v3, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isSupportSecureFolder"

    const-string/jumbo v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_387

    .line 274
    :cond_372
    sget-object v3, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isSupportSecureFolder"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_387

    .line 277
    :cond_37d
    sget-object v3, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isSupportSecureFolder"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .end local v2    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_387
    :goto_387
    const-string/jumbo v2, "isSupportImpKeyguard"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39b

    .line 281
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "isSupportImpKeyguard"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39b
    .catch Ljava/lang/Exception; {:try_start_342 .. :try_end_39b} :catch_39c
    .catchall {:try_start_342 .. :try_end_39b} :catchall_3a8

    .line 286
    :cond_39b
    goto :goto_3a4

    .line 284
    :catch_39c
    move-exception v2

    .line 285
    .local v2, "e":Ljava/lang/Exception;
    :try_start_39d
    const-string v3, "KnoxInfoImpl"

    const-string v4, "failed to get mKnoxInfo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    .end local v1    # "userid":I
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3a4
    monitor-exit v0
    :try_end_3a5
    .catchall {:try_start_39d .. :try_end_3a5} :catchall_3a8

    .line 288
    sget-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    return-object v0

    .line 287
    :catchall_3a8
    move-exception v1

    :try_start_3a9
    monitor-exit v0
    :try_end_3aa
    .catchall {:try_start_3a9 .. :try_end_3aa} :catchall_3a8

    throw v1
.end method

.method private static getPersonalModeName(I)Ljava/lang/String;
    .registers 4
    .param p0, "userId"    # I

    .line 80
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 82
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonalModeName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    .line 83
    .local v0, "customName":Ljava/lang/String;
    return-object v0

    .line 84
    .end local v0    # "customName":Ljava/lang/String;
    :catch_f
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxInfoImpl"

    const-string/jumbo v2, "getPersonalModeName failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getWorkProfileUserId()I
    .registers 10

    .line 310
    const-string v0, ":"

    .line 311
    .local v0, "USER_DELIMITER":Ljava/lang/String;
    const-string v1, ","

    .line 312
    .local v1, "INFO_DELIMITER":Ljava/lang/String;
    const-string/jumbo v2, "persist.sys.knox.userinfo"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "value":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_47

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_47

    .line 315
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "arr":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1b
    array-length v6, v4

    if-ge v5, v6, :cond_47

    .line 317
    aget-object v6, v4, v5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, "info":[Ljava/lang/String;
    if-eqz v6, :cond_44

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_44

    .line 319
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 320
    .local v7, "id":I
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 321
    .local v8, "flags":I
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-nez v9, :cond_44

    and-int/lit8 v9, v8, 0x20

    if-lez v9, :cond_44

    .line 322
    return v7

    .line 316
    .end local v6    # "info":[Ljava/lang/String;
    .end local v7    # "id":I
    .end local v8    # "flags":I
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 327
    .end local v4    # "arr":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_47
    return v3
.end method
