.class public Landroid/net/VpnService;
.super Landroid/app/Service;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/VpnService$Callback;,
        Landroid/net/VpnService$Builder;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final FAST_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.fast"

.field private static final KNOXGUARD_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.kgclient"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.net.VpnService"

.field public static final SERVICE_META_DATA_SUPPORTS_ALWAYS_ON:Ljava/lang/String; = "android.net.VpnService.SUPPORTS_ALWAYS_ON"

.field private static final SYSTEM_VPN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VpnService"

.field private static mIsKGClientPackageInstalled:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetmIsKGClientPackageInstalled()Z
    .registers 1

    sget-boolean v0, Landroid/net/VpnService;->mIsKGClientPackageInstalled:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smcheck(Ljava/net/InetAddress;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smcheckNonPrefixBytes(Ljava/net/InetAddress;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/net/VpnService;->checkNonPrefixBytes(Ljava/net/InetAddress;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetService()Landroid/net/IVpnManager;
    .registers 1

    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 210
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/VpnService;->DBG:Z

    .line 216
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/VpnService;->mIsKGClientPackageInstalled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static check(Ljava/net/InetAddress;I)V
    .registers 4
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "prefixLength"    # I

    .line 589
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_32

    .line 592
    instance-of v0, p0, Ljava/net/Inet4Address;

    const-string v1, "Bad prefixLength"

    if-eqz v0, :cond_19

    .line 593
    if-ltz p1, :cond_13

    const/16 v0, 0x20

    if-gt p1, v0, :cond_13

    goto :goto_23

    .line 594
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_19
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2a

    .line 597
    if-ltz p1, :cond_24

    const/16 v0, 0x80

    if-gt p1, v0, :cond_24

    .line 603
    :goto_23
    return-void

    .line 598
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkNonPrefixBytes(Ljava/net/InetAddress;I)V
    .registers 5
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "prefixLength"    # I

    .line 606
    new-instance v0, Landroid/net/IpPrefix;

    invoke-direct {v0, p0, p1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 607
    .local v0, "prefix":Landroid/net/IpPrefix;
    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 610
    return-void

    .line 608
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad address"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getService()Landroid/net/IVpnManager;
    .registers 1

    .line 206
    nop

    .line 207
    const-string v0, "vpn_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object v0

    return-object v0
.end method

.method private static isKGClientPackageInstalled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 243
    const-string v0, "com.samsung.android.kgclient"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 245
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    :try_start_7
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 246
    const-string v3, "android"

    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_10} :catch_14

    if-nez v0, :cond_13

    .line 247
    return v2

    .line 251
    :cond_13
    goto :goto_1c

    .line 249
    :catch_14
    move-exception v0

    .line 250
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "VpnService"

    const-string v3, "Exception occured while calling packageManager.getPackageInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method private static isSecureWifiPackage(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.fast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 163
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "android"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1a

    .line 164
    const/4 v1, 0x1

    return v1

    .line 166
    :cond_1a
    const-string v1, "VpnService"

    const-string v2, "Secure Wi-Fi signature mismatched"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public static prepare(Landroid/content/Context;)Landroid/content/Intent;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .line 281
    invoke-static {p0}, Landroid/net/VpnService;->isKGClientPackageInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 282
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/VpnService;->mIsKGClientPackageInstalled:Z

    .line 287
    :cond_9
    instance-of v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    .line 288
    const-string v0, "prepare function with generic vpn context is called for knox vpn profile"

    const-string v2, "VpnService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;

    .line 290
    .local v0, "knoxVPNContext":Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->getVPNProfile()Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "profile":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->getVPNState()Z

    move-result v4

    .line 292
    .local v4, "isConnecting":Z
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 293
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->isMetaEnabled()Z

    move-result v6

    .line 294
    .local v6, "isMetaEnabled":Z
    const/4 v7, 0x0

    .line 297
    .local v7, "profileType":I
    :try_start_2d
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v8

    invoke-interface {v8, v3}, Landroid/net/IVpnManager;->knoxVpnProfileType(Ljava/lang/String;)I

    move-result v8

    move v7, v8

    .line 298
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v8

    invoke-interface {v8, v3, v6}, Landroid/net/IVpnManager;->prepareEnterpriseVpnExt(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3e} :catch_42

    if-eqz v2, :cond_41

    .line 300
    return-object v1

    .line 304
    :cond_41
    goto :goto_48

    .line 302
    :catch_42
    move-exception v8

    .line 303
    .local v8, "e":Landroid/os/RemoteException;
    const-string v9, "Exception occured while trying to prepare knox vpn profile"

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_48
    if-nez v7, :cond_4e

    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v1

    :cond_4e
    return-object v1

    .line 311
    .end local v0    # "knoxVPNContext":Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;
    .end local v3    # "profile":Ljava/lang/String;
    .end local v4    # "isConnecting":Z
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "isMetaEnabled":Z
    .end local v7    # "profileType":I
    :cond_4f
    invoke-static {p0}, Landroid/net/VpnService;->isSecureWifiPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 312
    invoke-static {}, Landroid/net/VpnService;->prepareAndAuthorizeVpnForFast()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 316
    :cond_5a
    :try_start_5a
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v2, v1, v3}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_6a} :catch_6e

    if-eqz v0, :cond_6d

    .line 317
    return-object v1

    .line 321
    :cond_6d
    goto :goto_6f

    .line 319
    :catch_6e
    move-exception v0

    .line 322
    :goto_6f
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static prepareAndAuthorize(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 342
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    .line 343
    .local v0, "vm":Landroid/net/IVpnManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "packageName":Ljava/lang/String;
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 347
    .local v2, "userId":I
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_16

    .line 348
    invoke-interface {v0, v3, v1, v2}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 350
    :cond_16
    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/net/IVpnManager;->setVpnPackageAuthorization(Ljava/lang/String;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1a} :catch_1b

    .line 353
    .end local v2    # "userId":I
    goto :goto_1c

    .line 351
    :catch_1b
    move-exception v2

    .line 354
    :goto_1c
    return-void
.end method

.method private static prepareAndAuthorizeVpnForFast()Landroid/content/Intent;
    .registers 5

    .line 226
    const-string v0, "com.samsung.android.fast"

    :try_start_2
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v1

    .line 228
    .local v1, "vm":Landroid/net/IVpnManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 229
    .local v2, "userId":I
    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_14

    .line 230
    invoke-interface {v1, v3, v0, v2}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 232
    :cond_14
    const/4 v4, 0x1

    invoke-interface {v1, v0, v2, v4}, Landroid/net/IVpnManager;->setVpnPackageAuthorization(Ljava/lang/String;II)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_19

    .line 233
    return-object v3

    .line 234
    .end local v1    # "vm":Landroid/net/IVpnManager;
    .end local v2    # "userId":I
    :catch_19
    move-exception v0

    .line 237
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAddress(Ljava/net/InetAddress;I)Z
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    .line 433
    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    .line 435
    :try_start_3
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/IVpnManager;->addVpnAddress(Ljava/lang/String;I)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_10

    return v0

    .line 436
    :catch_10
    move-exception v0

    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final isAlwaysOn()Z
    .registers 3

    .line 519
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/IVpnManager;->isCallerCurrentAlwaysOnVpnApp()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 520
    :catch_9
    move-exception v0

    .line 521
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final isLockdownEnabled()Z
    .registers 3

    .line 534
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/IVpnManager;->isCallerCurrentAlwaysOnVpnLockdownApp()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 535
    :catch_9
    move-exception v0

    .line 536
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 550
    const/4 v0, 0x0

    if-eqz p1, :cond_15

    const-string v1, "android.net.VpnService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 551
    new-instance v1, Landroid/net/VpnService$Callback;

    invoke-direct {v1, p0, v0}, Landroid/net/VpnService$Callback;-><init>(Landroid/net/VpnService;Landroid/net/VpnService$Callback-IA;)V

    return-object v1

    .line 553
    :cond_15
    return-object v0
.end method

.method public onRevoke()V
    .registers 1

    .line 568
    invoke-virtual {p0}, Landroid/net/VpnService;->stopSelf()V

    .line 569
    return-void
.end method

.method public protect(I)Z
    .registers 5
    .param p1, "socket"    # I

    .line 373
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 374
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IVpnManager;->getChainingEnabledForProfile(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 375
    invoke-static {p1}, Lcom/android/internal/net/NetworkUtilsInternal;->protectFromVpn(I)Z

    move-result v0

    return v0

    .line 377
    :cond_19
    sget-boolean v0, Landroid/net/VpnService;->DBG:Z

    if-eqz v0, :cond_39

    const-string v0, "VpnService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protect is not going to be called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_39
    const/4 v0, 0x1

    return v0

    .line 383
    :cond_3b
    invoke-static {p1}, Lcom/android/internal/net/NetworkUtilsInternal;->protectFromVpn(I)Z

    move-result v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    return v0

    .line 386
    :catch_40
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public protect(Ljava/net/DatagramSocket;)Z
    .registers 3
    .param p1, "socket"    # Ljava/net/DatagramSocket;

    .line 410
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public protect(Ljava/net/Socket;)Z
    .registers 3
    .param p1, "socket"    # Ljava/net/Socket;

    .line 399
    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public removeAddress(Ljava/net/InetAddress;I)Z
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    .line 463
    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    .line 465
    :try_start_3
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/IVpnManager;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_10

    return v0

    .line 466
    :catch_10
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setUnderlyingNetworks([Landroid/net/Network;)Z
    .registers 4
    .param p1, "networks"    # [Landroid/net/Network;

    .line 505
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/IVpnManager;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 506
    :catch_9
    move-exception v0

    .line 507
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
