.class Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal$1;
.super Ljava/lang/Object;
.source "FingerprintSensorPropertiesInternal.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 90
    new-instance v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-direct {v0, p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 87
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .registers 3
    .param p1, "size"    # I

    .line 95
    new-array v0, p1, [Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 87
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal$1;->newArray(I)[Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p1

    return-object p1
.end method
