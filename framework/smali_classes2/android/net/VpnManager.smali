.class public Landroid/net/VpnManager;
.super Ljava/lang/Object;
.source "VpnManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/VpnManager$VpnType;
    }
.end annotation


# static fields
.field public static final ACTION_VPN_MANAGER_EVENT:Ljava/lang/String; = "android.net.action.VPN_MANAGER_EVENT"

.field public static final CATEGORY_EVENT_ALWAYS_ON_STATE_CHANGED:Ljava/lang/String; = "android.net.category.EVENT_ALWAYS_ON_STATE_CHANGED"

.field public static final CATEGORY_EVENT_DEACTIVATED_BY_USER:Ljava/lang/String; = "android.net.category.EVENT_DEACTIVATED_BY_USER"

.field public static final CATEGORY_EVENT_IKE_ERROR:Ljava/lang/String; = "android.net.category.EVENT_IKE_ERROR"

.field public static final CATEGORY_EVENT_NETWORK_ERROR:Ljava/lang/String; = "android.net.category.EVENT_NETWORK_ERROR"

.field public static final ERROR_CLASS_NOT_RECOVERABLE:I = 0x1

.field public static final ERROR_CLASS_RECOVERABLE:I = 0x2

.field public static final ERROR_CODE_NETWORK_IO:I = 0x3

.field public static final ERROR_CODE_NETWORK_LOST:I = 0x2

.field public static final ERROR_CODE_NETWORK_PROTOCOL_TIMEOUT:I = 0x1

.field public static final ERROR_CODE_NETWORK_UNKNOWN_HOST:I = 0x0

.field public static final EXTRA_ERROR_CLASS:Ljava/lang/String; = "android.net.extra.ERROR_CLASS"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "android.net.extra.ERROR_CODE"

.field public static final EXTRA_SESSION_KEY:Ljava/lang/String; = "android.net.extra.SESSION_KEY"

.field public static final EXTRA_TIMESTAMP_MILLIS:Ljava/lang/String; = "android.net.extra.TIMESTAMP_MILLIS"

.field public static final EXTRA_UNDERLYING_LINK_PROPERTIES:Ljava/lang/String; = "android.net.extra.UNDERLYING_LINK_PROPERTIES"

.field public static final EXTRA_UNDERLYING_NETWORK:Ljava/lang/String; = "android.net.extra.UNDERLYING_NETWORK"

.field public static final EXTRA_UNDERLYING_NETWORK_CAPABILITIES:Ljava/lang/String; = "android.net.extra.UNDERLYING_NETWORK_CAPABILITIES"

.field public static final EXTRA_VPN_PROFILE_STATE:Ljava/lang/String; = "android.net.extra.VPN_PROFILE_STATE"

.field public static final NOTIFICATION_CHANNEL_VPN:Ljava/lang/String; = "VPN"

.field public static final TYPE_VPN_LEGACY:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final TYPE_VPN_NONE:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final TYPE_VPN_OEM:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final TYPE_VPN_PLATFORM:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final TYPE_VPN_SERVICE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/net/IVpnManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/IVpnManager;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IVpnManager;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    const-string v0, "missing Context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/net/VpnManager;->mContext:Landroid/content/Context;

    .line 337
    const-string v0, "missing IVpnManager"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IVpnManager;

    iput-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    .line 338
    return-void
.end method

.method private static getIntentForConfirmation()Landroid/content/Intent;
    .registers 3

    .line 319
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 321
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104035f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 323
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 324
    return-object v0
.end method


# virtual methods
.method public deleteProvisionedVpnProfile()V
    .registers 3

    .line 386
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    iget-object v1, p0, Landroid/net/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/IVpnManager;->deleteVpnProfile(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 389
    nop

    .line 390
    return-void

    .line 387
    :catch_d
    move-exception v0

    .line 388
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public factoryReset()V
    .registers 3

    .line 465
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0}, Landroid/net/IVpnManager;->factoryReset()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 468
    nop

    .line 469
    return-void

    .line 466
    :catch_7
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 583
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1}, Landroid/net/IVpnManager;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 584
    :catch_7
    move-exception v0

    .line 585
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAppExclusionList(ILjava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 654
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IVpnManager;->getAppExclusionList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 655
    :catch_7
    move-exception v0

    .line 656
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;
    .registers 4
    .param p1, "userId"    # I

    .line 681
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1}, Landroid/net/IVpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 682
    :catch_7
    move-exception v0

    .line 683
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProvisionedVpnProfileState()Landroid/net/VpnProfileState;
    .registers 3

    .line 452
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    iget-object v1, p0, Landroid/net/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/IVpnManager;->getProvisionedVpnProfileState(Ljava/lang/String;)Landroid/net/VpnProfileState;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 453
    :catch_d
    move-exception v0

    .line 454
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getVpnConfig(I)Lcom/android/internal/net/VpnConfig;
    .registers 4
    .param p1, "userId"    # I

    .line 437
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1}, Landroid/net/IVpnManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 438
    :catch_7
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getVpnLockdownAllowlist(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 669
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1}, Landroid/net/IVpnManager;->getVpnLockdownAllowlist(I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 670
    :catch_7
    move-exception v0

    .line 671
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAlwaysOnVpnPackageSupportedForUser(ILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "vpnPackage"    # Ljava/lang/String;

    .line 533
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IVpnManager;->isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 534
    :catch_7
    move-exception v0

    .line 535
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isVpnLockdownEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 597
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1}, Landroid/net/IVpnManager;->isVpnLockdownEnabled(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 598
    :catch_7
    move-exception v0

    .line 599
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 488
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 489
    :catch_7
    move-exception v0

    .line 490
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public provisionVpnProfile(Landroid/net/PlatformVpnProfile;)Landroid/content/Intent;
    .registers 5
    .param p1, "profile"    # Landroid/net/PlatformVpnProfile;

    .line 360
    :try_start_0
    invoke-virtual {p1}, Landroid/net/PlatformVpnProfile;->toVpnProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v0
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_4} :catch_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_21

    .line 366
    .local v0, "internalProfile":Lcom/android/internal/net/VpnProfile;
    nop

    .line 370
    :try_start_5
    iget-object v1, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    iget-object v2, p0, Landroid/net/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/net/IVpnManager;->provisionVpnProfile(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)Z

    move-result v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_1b

    if-eqz v1, :cond_15

    .line 371
    const/4 v1, 0x0

    return-object v1

    .line 375
    :cond_15
    nop

    .line 376
    invoke-static {}, Landroid/net/VpnManager;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 373
    :catch_1b
    move-exception v1

    .line 374
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 361
    .end local v0    # "internalProfile":Lcom/android/internal/net/VpnProfile;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_21
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to serialize PlatformVpnProfile"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAlwaysOnVpnPackageForUser(ILjava/lang/String;ZLjava/util/List;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .param p3, "lockdownEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 564
    .local p4, "lockdownAllowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/net/IVpnManager;->setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 566
    :catch_7
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAppExclusionList(ILjava/lang/String;Ljava/util/List;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 629
    .local p3, "excludedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IVpnManager;->setAppExclusionList(ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 630
    :catch_7
    move-exception v0

    .line 631
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setVpnPackageAuthorization(Ljava/lang/String;II)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "vpnType"    # I

    .line 510
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IVpnManager;->setVpnPackageAuthorization(Ljava/lang/String;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 513
    nop

    .line 514
    return-void

    .line 511
    :catch_7
    move-exception v0

    .line 512
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .registers 4
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .line 697
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1}, Landroid/net/IVpnManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 700
    nop

    .line 701
    return-void

    .line 698
    :catch_7
    move-exception v0

    .line 699
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startProvisionedVpnProfile()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 418
    invoke-virtual {p0}, Landroid/net/VpnManager;->startProvisionedVpnProfileSession()Ljava/lang/String;

    .line 419
    return-void
.end method

.method public startProvisionedVpnProfileSession()Ljava/lang/String;
    .registers 3

    .line 402
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    iget-object v1, p0, Landroid/net/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/IVpnManager;->startVpnProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 403
    :catch_d
    move-exception v0

    .line 404
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopProvisionedVpnProfile()V
    .registers 3

    .line 424
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    iget-object v1, p0, Landroid/net/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/IVpnManager;->stopVpnProfile(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 427
    nop

    .line 428
    return-void

    .line 425
    :catch_d
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateLockdownVpn()Z
    .registers 3

    .line 715
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0}, Landroid/net/IVpnManager;->updateLockdownVpn()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 716
    :catch_7
    move-exception v0

    .line 717
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
