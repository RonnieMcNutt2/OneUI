.class Landroid/hardware/scontext/SContextWirelessChargingDetection$1;
.super Ljava/lang/Object;
.source "SContextWirelessChargingDetection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextWirelessChargingDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/scontext/SContextWirelessChargingDetection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextWirelessChargingDetection;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 158
    new-instance v0, Landroid/hardware/scontext/SContextWirelessChargingDetection;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextWirelessChargingDetection;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 154
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextWirelessChargingDetection$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextWirelessChargingDetection;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/scontext/SContextWirelessChargingDetection;
    .registers 3
    .param p1, "size"    # I

    .line 163
    new-array v0, p1, [Landroid/hardware/scontext/SContextWirelessChargingDetection;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 154
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextWirelessChargingDetection$1;->newArray(I)[Landroid/hardware/scontext/SContextWirelessChargingDetection;

    move-result-object p1

    return-object p1
.end method
