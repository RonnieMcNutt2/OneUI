.class public Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;
.super Landroid/content/ContextWrapper;
.source "GenericVpnContext.java"


# static fields
.field public static final CONNECTING:Z = true

.field public static final DISCONNECTING:Z = false

.field public static final META_DISABLED:Z = false

.field public static final META_ENABLED:Z = true

.field public static final PER_APP_VPN:Z = false

.field public static final SYSTEM_VPN:Z = true

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mEnableMetaHeader:Z

.field private mIsConnecting:Z

.field private mProfile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    const-string v0, "GenericVpnContext"

    sput-object v0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "base"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mProfile:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mIsConnecting:Z

    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mEnableMetaHeader:Z

    .line 74
    return-void
.end method


# virtual methods
.method public enableMetaData(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mEnableMetaHeader:Z

    .line 99
    return-void
.end method

.method public getVPNProfile()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getVPNState()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mIsConnecting:Z

    return v0
.end method

.method public isMetaEnabled()Z
    .registers 2

    .line 129
    iget-boolean v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mEnableMetaHeader:Z

    return v0
.end method

.method public setGenericVpnParams(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "profile"    # Ljava/lang/String;
    .param p2, "isConnecting"    # Z

    .line 85
    iput-object p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mProfile:Ljava/lang/String;

    .line 86
    iput-boolean p2, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mIsConnecting:Z

    .line 87
    return-void
.end method
