.class public abstract Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;
.super Landroid/os/Binder;
.source "IDeviceStateManagerCallback.java"

# interfaces
.implements Landroid/hardware/devicestate/IDeviceStateManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/IDeviceStateManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onDeviceStateInfoChanged:I = 0x1

.field static final TRANSACTION_onRequestActive:I = 0x2

.field static final TRANSACTION_onRequestCanceled:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "android.hardware.devicestate.IDeviceStateManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/devicestate/IDeviceStateManagerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_4
    const-string v0, "android.hardware.devicestate.IDeviceStateManagerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    if-eqz v1, :cond_14

    .line 69
    move-object v1, v0

    check-cast v1, Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    return-object v1

    .line 71
    :cond_14
    new-instance v1, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 80
    packed-switch p0, :pswitch_data_e

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 92
    :pswitch_5
    const-string v0, "onRequestCanceled"

    return-object v0

    .line 88
    :pswitch_8
    const-string v0, "onRequestActive"

    return-object v0

    .line 84
    :pswitch_b
    const-string v0, "onDeviceStateInfoChanged"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 75
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 235
    const/4 v0, 0x2

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 103
    invoke-static {p1}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    const-string v0, "android.hardware.devicestate.IDeviceStateManagerCallback"

    .line 108
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_d
    packed-switch p1, :pswitch_data_42

    .line 119
    packed-switch p1, :pswitch_data_48

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 115
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v1

    .line 140
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 141
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;->onRequestCanceled(Landroid/os/IBinder;)V

    .line 143
    goto :goto_41

    .line 132
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 133
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;->onRequestActive(Landroid/os/IBinder;)V

    .line 135
    goto :goto_41

    .line 124
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_32
    sget-object v2, Landroid/hardware/devicestate/DeviceStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/devicestate/DeviceStateInfo;

    .line 125
    .local v2, "_arg0":Landroid/hardware/devicestate/DeviceStateInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;->onDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V

    .line 127
    nop

    .line 150
    .end local v2    # "_arg0":Landroid/hardware/devicestate/DeviceStateInfo;
    :goto_41
    return v1

    :pswitch_data_42
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_32
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
