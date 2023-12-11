.class public abstract Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;
.super Landroid/os/Binder;
.source "IVirtualSensorCallback.java"

# interfaces
.implements Landroid/companion/virtual/sensor/IVirtualSensorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/sensor/IVirtualSensorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onConfigurationChanged:I = 0x1

.field static final TRANSACTION_onDirectChannelConfigured:I = 0x4

.field static final TRANSACTION_onDirectChannelCreated:I = 0x2

.field static final TRANSACTION_onDirectChannelDestroyed:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.companion.virtual.sensor.IVirtualSensorCallback"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/sensor/IVirtualSensorCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_4
    const-string v0, "android.companion.virtual.sensor.IVirtualSensorCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    if-eqz v1, :cond_14

    .line 80
    move-object v1, v0

    check-cast v1, Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    return-object v1

    .line 82
    :cond_14
    new-instance v1, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 91
    packed-switch p0, :pswitch_data_16

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 107
    :pswitch_5
    const-string/jumbo v0, "onDirectChannelConfigured"

    return-object v0

    .line 103
    :pswitch_9
    const-string/jumbo v0, "onDirectChannelDestroyed"

    return-object v0

    .line 99
    :pswitch_d
    const-string/jumbo v0, "onDirectChannelCreated"

    return-object v0

    .line 95
    :pswitch_11
    const-string/jumbo v0, "onConfigurationChanged"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 86
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 296
    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 118
    invoke-static {p1}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    const-string v0, "android.companion.virtual.sensor.IVirtualSensorCallback"

    .line 123
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_d
    packed-switch p1, :pswitch_data_72

    .line 134
    packed-switch p1, :pswitch_data_78

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 130
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v1

    .line 171
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .local v2, "_arg0":I
    sget-object v3, Landroid/companion/virtual/sensor/VirtualSensor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/virtual/sensor/VirtualSensor;

    .line 175
    .local v3, "_arg1":Landroid/companion/virtual/sensor/VirtualSensor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 177
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 178
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;->onDirectChannelConfigured(ILandroid/companion/virtual/sensor/VirtualSensor;II)V

    .line 180
    goto :goto_70

    .line 163
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/companion/virtual/sensor/VirtualSensor;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 164
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;->onDirectChannelDestroyed(I)V

    .line 166
    goto :goto_70

    .line 153
    .end local v2    # "_arg0":I
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SharedMemory;

    .line 156
    .local v3, "_arg1":Landroid/os/SharedMemory;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;->onDirectChannelCreated(ILandroid/os/SharedMemory;)V

    .line 158
    goto :goto_70

    .line 139
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/SharedMemory;
    :pswitch_55
    sget-object v2, Landroid/companion/virtual/sensor/VirtualSensor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/sensor/VirtualSensor;

    .line 141
    .local v2, "_arg0":Landroid/companion/virtual/sensor/VirtualSensor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 143
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 145
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 146
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;->onConfigurationChanged(Landroid/companion/virtual/sensor/VirtualSensor;ZII)V

    .line 148
    nop

    .line 187
    .end local v2    # "_arg0":Landroid/companion/virtual/sensor/VirtualSensor;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :goto_70
    return v1

    nop

    :pswitch_data_72
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_55
        :pswitch_42
        :pswitch_37
        :pswitch_1c
    .end packed-switch
.end method
