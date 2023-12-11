.class public abstract Landroid/hardware/thermal/IThermal$Stub;
.super Landroid/os/Binder;
.source "IThermal.java"

# interfaces
.implements Landroid/hardware/thermal/IThermal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/thermal/IThermal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/thermal/IThermal$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getCoolingDevices:I = 0x1

.field static final TRANSACTION_getCoolingDevicesWithType:I = 0x2

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getTemperatureThresholds:I = 0x5

.field static final TRANSACTION_getTemperatureThresholdsWithType:I = 0x6

.field static final TRANSACTION_getTemperatures:I = 0x3

.field static final TRANSACTION_getTemperaturesWithType:I = 0x4

.field static final TRANSACTION_registerThermalChangedCallback:I = 0x7

.field static final TRANSACTION_registerThermalChangedCallbackWithType:I = 0x8

.field static final TRANSACTION_unregisterThermalChangedCallback:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub;->markVintfStability()V

    .line 72
    sget-object v0, Landroid/hardware/thermal/IThermal$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/thermal/IThermal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/IThermal;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 80
    if-nez p0, :cond_4

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_4
    sget-object v0, Landroid/hardware/thermal/IThermal$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/thermal/IThermal;

    if-eqz v1, :cond_14

    .line 85
    move-object v1, v0

    check-cast v1, Landroid/hardware/thermal/IThermal;

    return-object v1

    .line 87
    :cond_14
    new-instance v1, Landroid/hardware/thermal/IThermal$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/thermal/IThermal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 96
    sparse-switch p0, :sswitch_data_26

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 136
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 140
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 132
    :sswitch_b
    const-string v0, "unregisterThermalChangedCallback"

    return-object v0

    .line 128
    :sswitch_e
    const-string v0, "registerThermalChangedCallbackWithType"

    return-object v0

    .line 124
    :sswitch_11
    const-string v0, "registerThermalChangedCallback"

    return-object v0

    .line 120
    :sswitch_14
    const-string v0, "getTemperatureThresholdsWithType"

    return-object v0

    .line 116
    :sswitch_17
    const-string v0, "getTemperatureThresholds"

    return-object v0

    .line 112
    :sswitch_1a
    const-string v0, "getTemperaturesWithType"

    return-object v0

    .line 108
    :sswitch_1d
    const-string v0, "getTemperatures"

    return-object v0

    .line 104
    :sswitch_20
    const-string v0, "getCoolingDevicesWithType"

    return-object v0

    .line 100
    :sswitch_23
    const-string v0, "getCoolingDevices"

    return-object v0

    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_20
        0x3 -> :sswitch_1d
        0x4 -> :sswitch_1a
        0x5 -> :sswitch_17
        0x6 -> :sswitch_14
        0x7 -> :sswitch_11
        0x8 -> :sswitch_e
        0x9 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 91
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 512
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 151
    invoke-static {p1}, Landroid/hardware/thermal/IThermal$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    sget-object v0, Landroid/hardware/thermal/IThermal$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 156
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 157
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    :cond_d
    sparse-switch p1, :sswitch_data_c6

    .line 179
    packed-switch p1, :pswitch_data_d4

    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 163
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return v1

    .line 168
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    return v1

    .line 174
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    return v1

    .line 255
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/thermal/IThermalChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/IThermalChangedCallback;

    move-result-object v2

    .line 256
    .local v2, "_arg0":Landroid/hardware/thermal/IThermalChangedCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2}, Landroid/hardware/thermal/IThermal$Stub;->unregisterThermalChangedCallback(Landroid/hardware/thermal/IThermalChangedCallback;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    goto/16 :goto_c4

    .line 244
    .end local v2    # "_arg0":Landroid/hardware/thermal/IThermalChangedCallback;
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/thermal/IThermalChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/IThermalChangedCallback;

    move-result-object v2

    .line 246
    .restart local v2    # "_arg0":Landroid/hardware/thermal/IThermalChangedCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 247
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2, v3}, Landroid/hardware/thermal/IThermal$Stub;->registerThermalChangedCallbackWithType(Landroid/hardware/thermal/IThermalChangedCallback;I)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto :goto_c4

    .line 235
    .end local v2    # "_arg0":Landroid/hardware/thermal/IThermalChangedCallback;
    .end local v3    # "_arg1":I
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/thermal/IThermalChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/IThermalChangedCallback;

    move-result-object v2

    .line 236
    .restart local v2    # "_arg0":Landroid/hardware/thermal/IThermalChangedCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2}, Landroid/hardware/thermal/IThermal$Stub;->registerThermalChangedCallback(Landroid/hardware/thermal/IThermalChangedCallback;)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    goto :goto_c4

    .line 225
    .end local v2    # "_arg0":Landroid/hardware/thermal/IThermalChangedCallback;
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2}, Landroid/hardware/thermal/IThermal$Stub;->getTemperatureThresholdsWithType(I)[Landroid/hardware/thermal/TemperatureThreshold;

    move-result-object v3

    .line 228
    .local v3, "_result":[Landroid/hardware/thermal/TemperatureThreshold;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 230
    goto :goto_c4

    .line 217
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Landroid/hardware/thermal/TemperatureThreshold;
    :pswitch_7f
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub;->getTemperatureThresholds()[Landroid/hardware/thermal/TemperatureThreshold;

    move-result-object v2

    .line 218
    .local v2, "_result":[Landroid/hardware/thermal/TemperatureThreshold;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 220
    goto :goto_c4

    .line 208
    .end local v2    # "_result":[Landroid/hardware/thermal/TemperatureThreshold;
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 209
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2}, Landroid/hardware/thermal/IThermal$Stub;->getTemperaturesWithType(I)[Landroid/hardware/thermal/Temperature;

    move-result-object v3

    .line 211
    .local v3, "_result":[Landroid/hardware/thermal/Temperature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 213
    goto :goto_c4

    .line 200
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Landroid/hardware/thermal/Temperature;
    :pswitch_9c
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub;->getTemperatures()[Landroid/hardware/thermal/Temperature;

    move-result-object v2

    .line 201
    .local v2, "_result":[Landroid/hardware/thermal/Temperature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 203
    goto :goto_c4

    .line 191
    .end local v2    # "_result":[Landroid/hardware/thermal/Temperature;
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2}, Landroid/hardware/thermal/IThermal$Stub;->getCoolingDevicesWithType(I)[Landroid/hardware/thermal/CoolingDevice;

    move-result-object v3

    .line 194
    .local v3, "_result":[Landroid/hardware/thermal/CoolingDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 196
    goto :goto_c4

    .line 183
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Landroid/hardware/thermal/CoolingDevice;
    :pswitch_b9
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub;->getCoolingDevices()[Landroid/hardware/thermal/CoolingDevice;

    move-result-object v2

    .line 184
    .local v2, "_result":[Landroid/hardware/thermal/CoolingDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 186
    nop

    .line 266
    .end local v2    # "_result":[Landroid/hardware/thermal/CoolingDevice;
    :goto_c4
    return v1

    nop

    :sswitch_data_c6
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_b9
        :pswitch_a7
        :pswitch_9c
        :pswitch_8a
        :pswitch_7f
        :pswitch_6d
        :pswitch_5b
        :pswitch_45
        :pswitch_32
    .end packed-switch
.end method
