.class public Landroid/net/ProxyInfoWrapper;
.super Ljava/lang/Object;
.source "ProxyInfoWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/ProxyInfoWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mProxyInfo:Landroid/net/ProxyInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Landroid/net/ProxyInfoWrapper$1;

    invoke-direct {v0}, Landroid/net/ProxyInfoWrapper$1;-><init>()V

    sput-object v0, Landroid/net/ProxyInfoWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/ProxyInfo;)V
    .registers 2
    .param p1, "proxyInfo"    # Landroid/net/ProxyInfo;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/net/ProxyInfoWrapper;->mProxyInfo:Landroid/net/ProxyInfo;

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 42
    sget-object v0, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ProxyInfo;

    iput-object v0, p0, Landroid/net/ProxyInfoWrapper;->mProxyInfo:Landroid/net/ProxyInfo;

    goto :goto_17

    .line 44
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ProxyInfoWrapper;->mProxyInfo:Landroid/net/ProxyInfo;

    .line 46
    :goto_17
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/ProxyInfoWrapper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/ProxyInfoWrapper;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getProxyInfo()Landroid/net/ProxyInfo;
    .registers 2

    .line 37
    iget-object v0, p0, Landroid/net/ProxyInfoWrapper;->mProxyInfo:Landroid/net/ProxyInfo;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 61
    iget-object v0, p0, Landroid/net/ProxyInfoWrapper;->mProxyInfo:Landroid/net/ProxyInfo;

    if-eqz v0, :cond_e

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Landroid/net/ProxyInfoWrapper;->mProxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v0, p1, p2}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 65
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    :goto_12
    return-void
.end method
