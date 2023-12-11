.class public final Landroid/companion/virtual/sensor/VirtualSensor;
.super Ljava/lang/Object;
.source "VirtualSensor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/sensor/VirtualSensor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHandle:I

.field private final mName:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field private final mType:I

.field private final mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 131
    new-instance v0, Landroid/companion/virtual/sensor/VirtualSensor$1;

    invoke-direct {v0}, Landroid/companion/virtual/sensor/VirtualSensor$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/sensor/VirtualSensor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "handle"    # I
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .param p5, "token"    # Landroid/os/IBinder;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mHandle:I

    .line 51
    iput p2, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mType:I

    .line 52
    iput-object p3, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mName:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    .line 54
    iput-object p5, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mToken:Landroid/os/IBinder;

    .line 55
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mHandle:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mType:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mName:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/virtual/IVirtualDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mToken:Landroid/os/IBinder;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/companion/virtual/sensor/VirtualSensor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/virtual/sensor/VirtualSensor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()I
    .registers 3

    .line 98
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->getDeviceId()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 99
    :catch_7
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getHandle()I
    .registers 2

    .line 71
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mHandle:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 81
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mType:I

    return v0
.end method

.method public sendEvent(Landroid/companion/virtual/sensor/VirtualSensorEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/companion/virtual/sensor/VirtualSensorEvent;

    .line 124
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/companion/virtual/IVirtualDevice;->sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 127
    nop

    .line 128
    return-void

    .line 125
    :catch_9
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 111
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 115
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 116
    return-void
.end method
