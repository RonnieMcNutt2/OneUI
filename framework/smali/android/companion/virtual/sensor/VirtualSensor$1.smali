.class Landroid/companion/virtual/sensor/VirtualSensor$1;
.super Ljava/lang/Object;
.source "VirtualSensor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/sensor/VirtualSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/companion/virtual/sensor/VirtualSensor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/companion/virtual/sensor/VirtualSensor;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 134
    new-instance v0, Landroid/companion/virtual/sensor/VirtualSensor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/companion/virtual/sensor/VirtualSensor;-><init>(Landroid/os/Parcel;Landroid/companion/virtual/sensor/VirtualSensor-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 132
    invoke-virtual {p0, p1}, Landroid/companion/virtual/sensor/VirtualSensor$1;->createFromParcel(Landroid/os/Parcel;)Landroid/companion/virtual/sensor/VirtualSensor;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/companion/virtual/sensor/VirtualSensor;
    .registers 3
    .param p1, "size"    # I

    .line 138
    new-array v0, p1, [Landroid/companion/virtual/sensor/VirtualSensor;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 132
    invoke-virtual {p0, p1}, Landroid/companion/virtual/sensor/VirtualSensor$1;->newArray(I)[Landroid/companion/virtual/sensor/VirtualSensor;

    move-result-object p1

    return-object p1
.end method
