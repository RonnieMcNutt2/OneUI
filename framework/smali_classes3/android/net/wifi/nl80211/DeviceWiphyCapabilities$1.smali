.class Landroid/net/wifi/nl80211/DeviceWiphyCapabilities$1;
.super Ljava/lang/Object;
.source "DeviceWiphyCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 291
    new-instance v0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;-><init>()V

    .line 292
    .local v0, "capabilities":Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->-$$Nest$fputm80211nSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->-$$Nest$fputm80211acSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->-$$Nest$fputm80211axSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->-$$Nest$fputm80211beSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->-$$Nest$fputmChannelWidth160MhzSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->-$$Nest$fputmChannelWidth80p80MhzSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->-$$Nest$fputmChannelWidth320MhzSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->-$$Nest$fputmMaxNumberTxSpatialStreams(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;I)V

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->-$$Nest$fputmMaxNumberRxSpatialStreams(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;I)V

    .line 301
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 285
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    .registers 3
    .param p1, "size"    # I

    .line 306
    new-array v0, p1, [Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 285
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities$1;->newArray(I)[Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object p1

    return-object p1
.end method
