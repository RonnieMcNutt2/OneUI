.class Landroid/net/vcn/VcnTransportInfo$1;
.super Ljava/lang/Object;
.source "VcnTransportInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnTransportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/vcn/VcnTransportInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/vcn/VcnTransportInfo;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    .local v0, "subId":I
    const-class v1, Landroid/net/wifi/WifiInfo;

    .line 178
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 179
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 184
    .local v3, "minUdpPort4500NatTimeoutSeconds":I
    if-nez v1, :cond_19

    const/4 v4, -0x1

    if-ne v0, v4, :cond_19

    if-ne v3, v4, :cond_19

    .line 188
    return-object v2

    .line 191
    :cond_19
    new-instance v4, Landroid/net/vcn/VcnTransportInfo;

    invoke-direct {v4, v1, v0, v3, v2}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;IILandroid/net/vcn/VcnTransportInfo-IA;)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 174
    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnTransportInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/vcn/VcnTransportInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/vcn/VcnTransportInfo;
    .registers 3
    .param p1, "size"    # I

    .line 195
    new-array v0, p1, [Landroid/net/vcn/VcnTransportInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 174
    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnTransportInfo$1;->newArray(I)[Landroid/net/vcn/VcnTransportInfo;

    move-result-object p1

    return-object p1
.end method
