.class Landroid/telephony/CellIdentityTdscdma$1;
.super Ljava/lang/Object;
.source "CellIdentityTdscdma.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellIdentityTdscdma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/CellIdentityTdscdma;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentityTdscdma;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 320
    invoke-static {p1}, Landroid/telephony/CellIdentityTdscdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 316
    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentityTdscdma$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/CellIdentityTdscdma;
    .registers 3
    .param p1, "size"    # I

    .line 325
    new-array v0, p1, [Landroid/telephony/CellIdentityTdscdma;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 316
    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentityTdscdma$1;->newArray(I)[Landroid/telephony/CellIdentityTdscdma;

    move-result-object p1

    return-object p1
.end method
