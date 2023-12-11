.class public abstract Landroid/hardware/IRemoteDevice$Stub;
.super Landroid/os/Binder;
.source "IRemoteDevice.java"

# interfaces
.implements Landroid/hardware/IRemoteDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/IRemoteDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/IRemoteDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_clearRequest:I = 0x7

.field static final TRANSACTION_close:I = 0x9

.field static final TRANSACTION_createDefaultRequest:I = 0x5

.field static final TRANSACTION_createStream:I = 0x3

.field static final TRANSACTION_deleteStream:I = 0x4

.field static final TRANSACTION_getCameraCharacteristic:I = 0x2

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_setCallback:I = 0x8

.field static final TRANSACTION_submitRequest:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "android.hardware.IRemoteDevice"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/IRemoteDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/IRemoteDevice;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 77
    if-nez p0, :cond_4

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_4
    const-string v0, "android.hardware.IRemoteDevice"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 81
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/IRemoteDevice;

    if-eqz v1, :cond_14

    .line 82
    move-object v1, v0

    check-cast v1, Landroid/hardware/IRemoteDevice;

    return-object v1

    .line 84
    :cond_14
    new-instance v1, Landroid/hardware/IRemoteDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/IRemoteDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 93
    packed-switch p0, :pswitch_data_24

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 129
    :pswitch_5
    const-string v0, "close"

    return-object v0

    .line 125
    :pswitch_8
    const-string/jumbo v0, "setCallback"

    return-object v0

    .line 121
    :pswitch_c
    const-string v0, "clearRequest"

    return-object v0

    .line 117
    :pswitch_f
    const-string/jumbo v0, "submitRequest"

    return-object v0

    .line 113
    :pswitch_13
    const-string v0, "createDefaultRequest"

    return-object v0

    .line 109
    :pswitch_16
    const-string v0, "deleteStream"

    return-object v0

    .line 105
    :pswitch_19
    const-string v0, "createStream"

    return-object v0

    .line 101
    :pswitch_1c
    const-string v0, "getCameraCharacteristic"

    return-object v0

    .line 97
    :pswitch_1f
    const-string/jumbo v0, "open"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 88
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 430
    const/16 v0, 0x8

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 140
    invoke-static {p1}, Landroid/hardware/IRemoteDevice$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    const-string v0, "android.hardware.IRemoteDevice"

    .line 145
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 146
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    :cond_d
    packed-switch p1, :pswitch_data_aa

    .line 156
    packed-switch p1, :pswitch_data_b0

    .line 239
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 152
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    return v1

    .line 233
    :pswitch_1c
    invoke-virtual {p0}, Landroid/hardware/IRemoteDevice$Stub;->close()V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    goto/16 :goto_a8

    .line 225
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/IRemoteDeviceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/IRemoteDeviceCallback;

    move-result-object v2

    .line 226
    .local v2, "_arg0":Landroid/hardware/IRemoteDeviceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2}, Landroid/hardware/IRemoteDevice$Stub;->setCallback(Landroid/hardware/IRemoteDeviceCallback;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    goto/16 :goto_a8

    .line 218
    .end local v2    # "_arg0":Landroid/hardware/IRemoteDeviceCallback;
    :pswitch_37
    invoke-virtual {p0}, Landroid/hardware/IRemoteDevice$Stub;->clearRequest()V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    goto :goto_a8

    .line 206
    :pswitch_3e
    sget-object v2, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 208
    .local v2, "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 210
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 211
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/IRemoteDevice$Stub;->submitRequest(Landroid/hardware/camera2/impl/CameraMetadataNative;[IZ)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    goto :goto_a8

    .line 198
    .end local v2    # "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":Z
    :pswitch_58
    invoke-virtual {p0}, Landroid/hardware/IRemoteDevice$Stub;->createDefaultRequest()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    .line 199
    .local v2, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 201
    goto :goto_a8

    .line 190
    .end local v2    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2}, Landroid/hardware/IRemoteDevice$Stub;->deleteStream(I)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto :goto_a8

    .line 180
    .end local v2    # "_arg0":I
    :pswitch_71
    sget-object v2, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 181
    .local v2, "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2}, Landroid/hardware/IRemoteDevice$Stub;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v3

    .line 183
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    goto :goto_a8

    .line 172
    .end local v2    # "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v3    # "_result":I
    :pswitch_87
    invoke-virtual {p0}, Landroid/hardware/IRemoteDevice$Stub;->getCameraCharacteristic()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    .line 173
    .local v2, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 175
    goto :goto_a8

    .line 161
    .end local v2    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2, v3}, Landroid/hardware/IRemoteDevice$Stub;->open(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    nop

    .line 242
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :goto_a8
    return v1

    nop

    :pswitch_data_aa
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_92
        :pswitch_87
        :pswitch_71
        :pswitch_63
        :pswitch_58
        :pswitch_3e
        :pswitch_37
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method
