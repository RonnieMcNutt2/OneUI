.class Landroid/hardware/radio/network/CellInfoLte$1;
.super Ljava/lang/Object;
.source "CellInfoLte.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/CellInfoLte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/radio/network/CellInfoLte;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/network/CellInfoLte;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 14
    new-instance v0, Landroid/hardware/radio/network/CellInfoLte;

    invoke-direct {v0}, Landroid/hardware/radio/network/CellInfoLte;-><init>()V

    .line 15
    .local v0, "_aidl_out":Landroid/hardware/radio/network/CellInfoLte;
    invoke-virtual {v0, p1}, Landroid/hardware/radio/network/CellInfoLte;->readFromParcel(Landroid/os/Parcel;)V

    .line 16
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/CellInfoLte$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/network/CellInfoLte;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/radio/network/CellInfoLte;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 20
    new-array v0, p1, [Landroid/hardware/radio/network/CellInfoLte;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/CellInfoLte$1;->newArray(I)[Landroid/hardware/radio/network/CellInfoLte;

    move-result-object p1

    return-object p1
.end method
