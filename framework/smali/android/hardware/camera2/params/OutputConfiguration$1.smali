.class Landroid/hardware/camera2/params/OutputConfiguration$1;
.super Ljava/lang/Object;
.source "OutputConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/OutputConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/camera2/params/OutputConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/params/OutputConfiguration;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1433
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/OutputConfiguration-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1430
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/OutputConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/camera2/params/OutputConfiguration;
    .registers 3
    .param p1, "size"    # I

    .line 1438
    new-array v0, p1, [Landroid/hardware/camera2/params/OutputConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1430
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/OutputConfiguration$1;->newArray(I)[Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p1

    return-object p1
.end method
