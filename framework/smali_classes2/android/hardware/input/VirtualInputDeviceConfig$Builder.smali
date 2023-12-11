.class public abstract Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
.super Ljava/lang/Object;
.source "VirtualInputDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualInputDeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAssociatedDisplayId:I

.field private mInputDeviceName:Ljava/lang/String;

.field private mProductId:I

.field private mVendorId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAssociatedDisplayId(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->mAssociatedDisplayId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInputDeviceName(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->mInputDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProductId(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->mProductId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVendorId(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->mVendorId:I

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 100
    .local p0, "this":Landroid/hardware/input/VirtualInputDeviceConfig$Builder;, "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method self()Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 141
    .local p0, "this":Landroid/hardware/input/VirtualInputDeviceConfig$Builder;, "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<TT;>;"
    return-object p0
.end method

.method public setAssociatedDisplayId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
    .registers 3
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 126
    .local p0, "this":Landroid/hardware/input/VirtualInputDeviceConfig$Builder;, "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<TT;>;"
    iput p1, p0, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->mAssociatedDisplayId:I

    .line 127
    invoke-virtual {p0}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->self()Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setInputDeviceName(Ljava/lang/String;)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
    .registers 3
    .param p1, "deviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 133
    .local p0, "this":Landroid/hardware/input/VirtualInputDeviceConfig$Builder;, "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<TT;>;"
    iput-object p1, p0, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->mInputDeviceName:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->self()Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setProductId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
    .registers 3
    .param p1, "productId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 119
    .local p0, "this":Landroid/hardware/input/VirtualInputDeviceConfig$Builder;, "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<TT;>;"
    iput p1, p0, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->mProductId:I

    .line 120
    invoke-virtual {p0}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->self()Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setVendorId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
    .registers 3
    .param p1, "vendorId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 111
    .local p0, "this":Landroid/hardware/input/VirtualInputDeviceConfig$Builder;, "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<TT;>;"
    iput p1, p0, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->mVendorId:I

    .line 112
    invoke-virtual {p0}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->self()Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method
