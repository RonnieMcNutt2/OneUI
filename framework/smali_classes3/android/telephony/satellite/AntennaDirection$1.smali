.class Landroid/telephony/satellite/AntennaDirection$1;
.super Ljava/lang/Object;
.source "AntennaDirection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/AntennaDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/satellite/AntennaDirection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/satellite/AntennaDirection;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    new-instance v0, Landroid/telephony/satellite/AntennaDirection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/satellite/AntennaDirection;-><init>(Landroid/os/Parcel;Landroid/telephony/satellite/AntennaDirection-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/AntennaDirection$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/satellite/AntennaDirection;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/satellite/AntennaDirection;
    .registers 3
    .param p1, "size"    # I

    .line 86
    new-array v0, p1, [Landroid/telephony/satellite/AntennaDirection;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/AntennaDirection$1;->newArray(I)[Landroid/telephony/satellite/AntennaDirection;

    move-result-object p1

    return-object p1
.end method
