.class public Landroid/sec/enterprise/EnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;
    }
.end annotation


# static fields
.field public static final ACTION_KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

.field private static final EDM_CLASS_NAME_NEW:Ljava/lang/String; = "com.samsung.android.knox.EnterpriseDeviceManager"

.field public static final ENTERPRISE_PROXY_SERVICE:Ljava/lang/String; = "edm_proxy"

.field public static final EXTRA_USER_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

.field private static final TAG:Ljava/lang/String; = "EnterpriseDeviceManager"

.field private static mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

.field private static mInstanceCreated:Z


# instance fields
.field private volatile mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

.field private volatile mApplicationRestrictionsManager:Landroid/sec/enterprise/ApplicationRestrictionsManager;

.field private volatile mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;

.field private volatile mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

.field private volatile mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

.field private volatile mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

.field private volatile mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

.field private volatile mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

.field private volatile mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

.field private volatile mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

.field private volatile mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

.field private volatile mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

.field private volatile mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private volatile mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

.field private volatile mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

.field private volatile mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;
    .registers 2

    .line 94
    const-class v0, Landroid/sec/enterprise/EnterpriseDeviceManager;

    monitor-enter v0

    .line 95
    :try_start_3
    sget-boolean v1, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    if-nez v1, :cond_11

    .line 96
    new-instance v1, Landroid/sec/enterprise/EnterpriseDeviceManager;

    invoke-direct {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;-><init>()V

    sput-object v1, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

    .line 97
    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    .line 99
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15

    .line 101
    sget-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

    return-object v0

    .line 99
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public static getService()Landroid/sec/enterprise/IEDMProxy;
    .registers 1

    .line 90
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;
    .registers 3

    .line 133
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    .line 134
    .local v0, "result":Landroid/sec/enterprise/ApplicationPolicy;
    if-nez v0, :cond_17

    .line 135
    monitor-enter p0

    .line 136
    :try_start_5
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    move-object v0, v1

    .line 137
    if-nez v0, :cond_12

    .line 138
    new-instance v1, Landroid/sec/enterprise/ApplicationPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/ApplicationPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    .line 140
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 142
    :cond_17
    :goto_17
    return-object v0
.end method

.method public getApplicationRestrictionsManager()Landroid/sec/enterprise/ApplicationRestrictionsManager;
    .registers 3

    .line 151
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationRestrictionsManager:Landroid/sec/enterprise/ApplicationRestrictionsManager;

    .line 152
    .local v0, "result":Landroid/sec/enterprise/ApplicationRestrictionsManager;
    if-nez v0, :cond_17

    .line 153
    monitor-enter p0

    .line 154
    :try_start_5
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationRestrictionsManager:Landroid/sec/enterprise/ApplicationRestrictionsManager;

    move-object v0, v1

    .line 155
    if-nez v0, :cond_12

    .line 156
    new-instance v1, Landroid/sec/enterprise/ApplicationRestrictionsManager;

    invoke-direct {v1}, Landroid/sec/enterprise/ApplicationRestrictionsManager;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationRestrictionsManager:Landroid/sec/enterprise/ApplicationRestrictionsManager;

    .line 158
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 160
    :cond_17
    :goto_17
    return-object v0
.end method

.method public getAuditPolicy()Landroid/sec/enterprise/auditlog/AuditLog;
    .registers 3

    .line 348
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;

    .line 349
    .local v0, "result":Landroid/sec/enterprise/auditlog/AuditLog;
    if-nez v0, :cond_17

    .line 350
    monitor-enter p0

    .line 351
    :try_start_5
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;

    move-object v0, v1

    .line 352
    if-nez v0, :cond_12

    .line 353
    new-instance v1, Landroid/sec/enterprise/auditlog/AuditLog;

    invoke-direct {v1}, Landroid/sec/enterprise/auditlog/AuditLog;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;

    .line 355
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 357
    :cond_17
    :goto_17
    return-object v0
.end method

.method public getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;
    .registers 3

    .line 241
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    .line 242
    .local v0, "result":Landroid/sec/enterprise/BluetoothPolicy;
    if-nez v0, :cond_17

    .line 243
    monitor-enter p0

    .line 244
    :try_start_5
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    move-object v0, v1

    .line 245
    if-nez v0, :cond_12

    .line 246
    new-instance v1, Landroid/sec/enterprise/BluetoothPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/BluetoothPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    .line 248
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 250
    :cond_17
    :goto_17
    return-object v0
.end method

.method public getBrowserPolicy()Landroid/sec/enterprise/BrowserPolicy;
    .registers 3

    .line 259
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    .line 260
    .local v0, "result":Landroid/sec/enterprise/BrowserPolicy;
    if-nez v0, :cond_17

    .line 261
    monitor-enter p0

    .line 262
    :try_start_5
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    move-object v0, v1

    .line 263
    if-nez v0, :cond_12

    .line 264
    new-instance v1, Landroid/sec/enterprise/BrowserPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/BrowserPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    .line 266
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 268
    :cond_17
    :goto_17
    return-object v0
.end method

.method public getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;
    .registers 3

    .line 328
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    .line 329
    .local v0, "result":Landroid/sec/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_17

    .line 330
    monitor-enter p0

    .line 331
    :try_start_5
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-object v0, v1

    .line 332
    if-nez v0, :cond_12

    .line 333
    new-instance v1, Landroid/sec/enterprise/certificate/CertificatePolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    .line 335
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 337
    :cond_17
    :goto_17
    return-object v0
.end method

.method public getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;
    .registers 3

    .line 393
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

    .line 394
    .local v0, "result":Landroid/sec/enterprise/ClientCertificateManager;
    if-nez v0, :cond_17

    .line 395
    monitor-enter p0

    .line 396
    :try_start_5
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

    move-object v0, v1

    .line 397
    if-nez v0, :cond_12

    .line 398
    new-instance v1, Landroid/sec/enterprise/ClientCertificateManager;

    invoke-direct {v1}, Landroid/sec/enterprise/ClientCertificateManager;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

    .line 400
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 402
    :cond_17
    :goto_17
    return-object v0
.end method

.method public getDeviceAccountPolicy()Landroid/sec/enterprise/DeviceAccountPolicy;
    .registers 3

    .line 363
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

    .line 364
    .local v0, "result":Landroid/sec/enterprise/DeviceAccountPolicy;
    if-nez v0, :cond_17

    .line 365
    monitor-enter p0

    .line 366
    :try_start_5
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

    move-object v0, v1

    .line 367
    if-nez v0, :cond_12

    .line 368
    new-instance v1, Landroid/sec/enterprise/DeviceAccountPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/DeviceAccountPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

    .line 370
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 372
    :cond_17
    :goto_17
    return-object v0
.end method

.method public getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;
    .registers 3

    .line 223
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    .line 224
    .local v0, "result":Landroid/sec/enterprise/DeviceInventory;
    if-nez v0, :cond_17

    .line 225
    monitor-enter p0

    .line 226
    :try_start_5
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    move-object v0, v1

    .line 227
    if-nez v0, :cond_12

    .line 228
    new-instance v1, Landroid/sec/enterprise/DeviceInventory;

    invoke-direct {v1}, Landroid/sec/enterprise/DeviceInventory;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    .line 230
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 232
    :cond_17
    :goto_17
    return-object v0
.end method

.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 377
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 378
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_c

    .line 379
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_e

    return-object v0

    .line 382
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_c
    nop

    .line 384
    return-object v0

    .line 380
    :catch_e
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public getKioskMode()Landroid/sec/enterprise/kioskmode/KioskMode;
    .registers 3

    .line 308
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

    .line 309
    .local v0, "result":Landroid/sec/enterprise/kioskmode/KioskMode;
    if-nez v0, :cond_17

    .line 310
    monitor-enter p0

    .line 311
    :try_start_5
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

    move-object v0, v1

    .line 312
    if-nez v0, :cond_12

    .line 313
    new-instance v1, Landroid/sec/enterprise/kioskmode/KioskMode;

    invoke-direct {v1}, Landroid/sec/enterprise/kioskmode/KioskMode;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

    .line 315
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 317
    :cond_17
    :goto_17
    return-object v0
.end method

.method public getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;
    .registers 3

    .line 205
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    .line 206
    .local v0, "result":Landroid/sec/enterprise/PasswordPolicy;
    if-nez v0, :cond_17

    .line 207
    monitor-enter p0

    .line 208
    :try_start_5
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    move-object v0, v1

    .line 209
    if-nez v0, :cond_12

    .line 210
    new-instance v1, Landroid/sec/enterprise/PasswordPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/PasswordPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    .line 212
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 214
    :cond_17
    :goto_17
    return-object v0
.end method

.method public getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .registers 3

    .line 277
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    .line 278
    .local v0, "result":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    if-nez v0, :cond_17

    .line 279
    monitor-enter p0

    .line 280
    :try_start_5
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-object v0, v1

    .line 281
    if-nez v0, :cond_12

    .line 282
    new-instance v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    .line 284
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 286
    :cond_17
    :goto_17
    return-object v0
.end method

.method public getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;
    .registers 3

    .line 187
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .line 188
    .local v0, "result":Landroid/sec/enterprise/RestrictionPolicy;
    if-nez v0, :cond_17

    .line 189
    monitor-enter p0

    .line 190
    :try_start_5
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    move-object v0, v1

    .line 191
    if-nez v0, :cond_12

    .line 192
    new-instance v1, Landroid/sec/enterprise/RestrictionPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/RestrictionPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .line 194
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 196
    :cond_17
    :goto_17
    return-object v0
.end method

.method public getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;
    .registers 3

    .line 169
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    .line 170
    .local v0, "result":Landroid/sec/enterprise/RoamingPolicy;
    if-nez v0, :cond_17

    .line 171
    monitor-enter p0

    .line 172
    :try_start_5
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    move-object v0, v1

    .line 173
    if-nez v0, :cond_12

    .line 174
    new-instance v1, Landroid/sec/enterprise/RoamingPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/RoamingPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    .line 176
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 178
    :cond_17
    :goto_17
    return-object v0
.end method

.method public getTimaKeystore()Landroid/sec/enterprise/TimaKeystore;
    .registers 3

    .line 412
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

    .line 413
    .local v0, "result":Landroid/sec/enterprise/TimaKeystore;
    if-nez v0, :cond_17

    .line 414
    monitor-enter p0

    .line 415
    :try_start_5
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

    move-object v0, v1

    .line 416
    if-nez v0, :cond_12

    .line 417
    new-instance v1, Landroid/sec/enterprise/TimaKeystore;

    invoke-direct {v1}, Landroid/sec/enterprise/TimaKeystore;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

    .line 419
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 421
    :cond_17
    :goto_17
    return-object v0
.end method

.method public getWifiPolicy()Landroid/sec/enterprise/WifiPolicy;
    .registers 3

    .line 295
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    .line 296
    .local v0, "result":Landroid/sec/enterprise/WifiPolicy;
    if-nez v0, :cond_17

    .line 297
    monitor-enter p0

    .line 298
    :try_start_5
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    move-object v0, v1

    .line 299
    if-nez v0, :cond_12

    .line 300
    new-instance v1, Landroid/sec/enterprise/WifiPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/WifiPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    .line 302
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 304
    :cond_17
    :goto_17
    return-object v0
.end method

.method public registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z
    .registers 4
    .param p1, "callback"    # Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 425
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 426
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_b

    .line 427
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 431
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_b
    goto :goto_d

    .line 429
    :catch_c
    move-exception v0

    .line 432
    :goto_d
    const/4 v0, 0x0

    return v0
.end method
