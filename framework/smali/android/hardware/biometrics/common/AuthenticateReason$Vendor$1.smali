.class Landroid/hardware/biometrics/common/AuthenticateReason$Vendor$1;
.super Ljava/lang/Object;
.source "AuthenticateReason.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 179
    new-instance v0, Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;-><init>()V

    .line 180
    .local v0, "_aidl_out":Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;
    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;->readFromParcel(Landroid/os/Parcel;)V

    .line 181
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 176
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/common/AuthenticateReason$Vendor$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 185
    new-array v0, p1, [Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 176
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/common/AuthenticateReason$Vendor$1;->newArray(I)[Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    move-result-object p1

    return-object p1
.end method
