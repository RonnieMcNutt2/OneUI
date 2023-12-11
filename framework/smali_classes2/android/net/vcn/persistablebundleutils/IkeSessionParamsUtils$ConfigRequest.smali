.class final Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;
.super Ljava/lang/Object;
.source "IkeSessionParamsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConfigRequest"
.end annotation


# static fields
.field private static final ADDRESS_KEY:Ljava/lang/String; = "address"

.field private static final IPV4_P_CSCF_ADDRESS:I = 0x1

.field private static final IPV6_P_CSCF_ADDRESS:I = 0x2

.field private static final TYPE_KEY:Ljava/lang/String; = "type"


# instance fields
.field public final address:Ljava/net/InetAddress;

.field public final type:I


# direct methods
.method constructor <init>(Landroid/net/ipsec/ike/IkeSessionParams$IkeConfigRequest;)V
    .registers 4
    .param p1, "config"    # Landroid/net/ipsec/ike/IkeSessionParams$IkeConfigRequest;

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    instance-of v0, p1, Landroid/net/ipsec/ike/IkeSessionParams$ConfigRequestIpv4PcscfServer;

    if-eqz v0, :cond_14

    .line 524
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;->type:I

    .line 525
    move-object v0, p1

    check-cast v0, Landroid/net/ipsec/ike/IkeSessionParams$ConfigRequestIpv4PcscfServer;

    invoke-interface {v0}, Landroid/net/ipsec/ike/IkeSessionParams$ConfigRequestIpv4PcscfServer;->getAddress()Ljava/net/Inet4Address;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    goto :goto_24

    .line 526
    :cond_14
    instance-of v0, p1, Landroid/net/ipsec/ike/IkeSessionParams$ConfigRequestIpv6PcscfServer;

    if-eqz v0, :cond_25

    .line 527
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;->type:I

    .line 528
    move-object v0, p1

    check-cast v0, Landroid/net/ipsec/ike/IkeSessionParams$ConfigRequestIpv6PcscfServer;

    invoke-interface {v0}, Landroid/net/ipsec/ike/IkeSessionParams$ConfigRequestIpv6PcscfServer;->getAddress()Ljava/net/Inet6Address;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    .line 532
    :goto_24
    return-void

    .line 530
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown TunnelModeChildConfigRequest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "in"    # Landroid/os/PersistableBundle;

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    const-string v0, "PersistableBundle was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 537
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;->type:I

    .line 539
    const-string v0, "address"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "addressStr":Ljava/lang/String;
    if-nez v0, :cond_1c

    .line 541
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    goto :goto_22

    .line 543
    :cond_1c
    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    .line 545
    :goto_22
    return-void
.end method


# virtual methods
.method public toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 549
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 551
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "type"

    iget v2, p0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 552
    iget-object v1, p0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    if-eqz v1, :cond_19

    .line 553
    const-string v2, "address"

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_19
    return-object v0
.end method
