.class Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation$1;
.super Ljava/lang/Object;
.source "IAGnssRil.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 427
    new-instance v0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;

    invoke-direct {v0}, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;-><init>()V

    .line 428
    .local v0, "_aidl_out":Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;
    invoke-virtual {v0, p1}, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;->readFromParcel(Landroid/os/Parcel;)V

    .line 429
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 424
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 433
    new-array v0, p1, [Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 424
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation$1;->newArray(I)[Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;

    move-result-object p1

    return-object p1
.end method
