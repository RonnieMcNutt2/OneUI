.class public abstract Landroid/hardware/input/VirtualInputDeviceConfig;
.super Ljava/lang/Object;
.source "VirtualInputDeviceConfig.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
    }
.end annotation


# instance fields
.field private final mAssociatedDisplayId:I

.field private final mInputDeviceName:Ljava/lang/String;

.field private final mProductId:I

.field private final mVendorId:I


# direct methods
.method protected constructor <init>(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<",
            "+",
            "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<",
            "*>;>;)V"
        }
    .end annotation

    .line 43
    .local p1, "builder":Landroid/hardware/input/VirtualInputDeviceConfig$Builder;, "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<+Landroid/hardware/input/VirtualInputDeviceConfig$Builder<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->-$$Nest$fgetmVendorId(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mVendorId:I

    .line 45
    invoke-static {p1}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->-$$Nest$fgetmProductId(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mProductId:I

    .line 46
    invoke-static {p1}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->-$$Nest$fgetmAssociatedDisplayId(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    .line 47
    invoke-static {p1}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->-$$Nest$fgetmInputDeviceName(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mVendorId:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mProductId:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public getAssociatedDisplayId()I
    .registers 2

    .line 76
    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    return v0
.end method

.method public getInputDeviceName()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .registers 2

    .line 69
    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mProductId:I

    return v0
.end method

.method public getVendorId()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mVendorId:I

    return v0
.end method

.method writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 88
    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 92
    return-void
.end method
