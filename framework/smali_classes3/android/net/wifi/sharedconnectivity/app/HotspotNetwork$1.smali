.class Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$1;
.super Ljava/lang/Object;
.source "HotspotNetwork.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 396
    invoke-static {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 393
    invoke-virtual {p0, p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    .registers 3
    .param p1, "size"    # I

    .line 401
    new-array v0, p1, [Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 393
    invoke-virtual {p0, p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$1;->newArray(I)[Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    move-result-object p1

    return-object p1
.end method
