.class Landroid/location/LocationConstants$STATE_TYPE$1;
.super Ljava/lang/Object;
.source "LocationConstants.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationConstants$STATE_TYPE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/LocationConstants$STATE_TYPE;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/LocationConstants$STATE_TYPE;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/location/LocationConstants$STATE_TYPE;->valueOf(Ljava/lang/String;)Landroid/location/LocationConstants$STATE_TYPE;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Landroid/location/LocationConstants$STATE_TYPE$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/LocationConstants$STATE_TYPE;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/LocationConstants$STATE_TYPE;
    .registers 3
    .param p1, "size"    # I

    .line 105
    new-array v0, p1, [Landroid/location/LocationConstants$STATE_TYPE;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Landroid/location/LocationConstants$STATE_TYPE$1;->newArray(I)[Landroid/location/LocationConstants$STATE_TYPE;

    move-result-object p1

    return-object p1
.end method
