.class Landroid/hardware/thermal/Temperature$1;
.super Ljava/lang/Object;
.source "Temperature.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/thermal/Temperature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/thermal/Temperature;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/thermal/Temperature;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 17
    new-instance v0, Landroid/hardware/thermal/Temperature;

    invoke-direct {v0}, Landroid/hardware/thermal/Temperature;-><init>()V

    .line 18
    .local v0, "_aidl_out":Landroid/hardware/thermal/Temperature;
    invoke-virtual {v0, p1}, Landroid/hardware/thermal/Temperature;->readFromParcel(Landroid/os/Parcel;)V

    .line 19
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Landroid/hardware/thermal/Temperature$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/thermal/Temperature;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/thermal/Temperature;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 23
    new-array v0, p1, [Landroid/hardware/thermal/Temperature;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Landroid/hardware/thermal/Temperature$1;->newArray(I)[Landroid/hardware/thermal/Temperature;

    move-result-object p1

    return-object p1
.end method
