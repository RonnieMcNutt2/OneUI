.class public abstract Lvendor/samsung/hardware/thermal/ISehThermal$Stub;
.super Landroid/os/Binder;
.source "ISehThermal.java"

# interfaces
.implements Lvendor/samsung/hardware/thermal/ISehThermal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/thermal/ISehThermal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/thermal/ISehThermal$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getScenarioHint:I = 0x6

.field static final TRANSACTION_getTemperatures:I = 0x1

.field static final TRANSACTION_getTemperaturesWithType:I = 0x2

.field static final TRANSACTION_registerThermalChangedCallback:I = 0x3

.field static final TRANSACTION_setScenarioHint:I = 0x5

.field static final TRANSACTION_unregisterThermalChangedCallback:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    invoke-virtual {p0}, Lvendor/samsung/hardware/thermal/ISehThermal$Stub;->markVintfStability()V

    .line 59
    sget-object v0, Lvendor/samsung/hardware/thermal/ISehThermal$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/thermal/ISehThermal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/thermal/ISehThermal;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_4
    sget-object v0, Lvendor/samsung/hardware/thermal/ISehThermal$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lvendor/samsung/hardware/thermal/ISehThermal;

    if-eqz v1, :cond_14

    .line 72
    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/thermal/ISehThermal;

    return-object v1

    .line 74
    :cond_14
    new-instance v1, Lvendor/samsung/hardware/thermal/ISehThermal$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/thermal/ISehThermal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 83
    sparse-switch p0, :sswitch_data_1e

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 111
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 115
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 107
    :sswitch_b
    const-string v0, "getScenarioHint"

    return-object v0

    .line 103
    :sswitch_e
    const-string v0, "setScenarioHint"

    return-object v0

    .line 99
    :sswitch_11
    const-string v0, "unregisterThermalChangedCallback"

    return-object v0

    .line 95
    :sswitch_14
    const-string v0, "registerThermalChangedCallback"

    return-object v0

    .line 91
    :sswitch_17
    const-string v0, "getTemperaturesWithType"

    return-object v0

    .line 87
    :sswitch_1a
    const-string v0, "getTemperatures"

    return-object v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_1a
        0x2 -> :sswitch_17
        0x3 -> :sswitch_14
        0x4 -> :sswitch_11
        0x5 -> :sswitch_e
        0x6 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 78
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 380
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 126
    invoke-static {p1}, Lvendor/samsung/hardware/thermal/ISehThermal$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 130
    sget-object v0, Lvendor/samsung/hardware/thermal/ISehThermal$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 131
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    :cond_d
    sparse-switch p1, :sswitch_data_84

    .line 154
    packed-switch p1, :pswitch_data_92

    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 138
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    return v1

    .line 143
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p0}, Lvendor/samsung/hardware/thermal/ISehThermal$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    return v1

    .line 149
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p0}, Lvendor/samsung/hardware/thermal/ISehThermal$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return v1

    .line 199
    :pswitch_32
    invoke-virtual {p0}, Lvendor/samsung/hardware/thermal/ISehThermal$Stub;->getScenarioHint()I

    move-result v2

    .line 200
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    goto :goto_83

    .line 192
    .end local v2    # "_result":I
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/thermal/ISehThermal$Stub;->setScenarioHint(I)V

    .line 195
    goto :goto_83

    .line 184
    .end local v2    # "_arg0":I
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback;

    move-result-object v2

    .line 185
    .local v2, "_arg0":Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/thermal/ISehThermal$Stub;->unregisterThermalChangedCallback(Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback;)V

    .line 187
    goto :goto_83

    .line 176
    .end local v2    # "_arg0":Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback;
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback;

    move-result-object v2

    .line 177
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/thermal/ISehThermal$Stub;->registerThermalChangedCallback(Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback;)V

    .line 179
    goto :goto_83

    .line 166
    .end local v2    # "_arg0":Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback;
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/thermal/ISehThermal$Stub;->getTemperaturesWithType(I)[Lvendor/samsung/hardware/thermal/SehTemperature;

    move-result-object v3

    .line 169
    .local v3, "_result":[Lvendor/samsung/hardware/thermal/SehTemperature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 171
    goto :goto_83

    .line 158
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Lvendor/samsung/hardware/thermal/SehTemperature;
    :pswitch_78
    invoke-virtual {p0}, Lvendor/samsung/hardware/thermal/ISehThermal$Stub;->getTemperatures()[Lvendor/samsung/hardware/thermal/SehTemperature;

    move-result-object v2

    .line 159
    .local v2, "_result":[Lvendor/samsung/hardware/thermal/SehTemperature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 161
    nop

    .line 209
    .end local v2    # "_result":[Lvendor/samsung/hardware/thermal/SehTemperature;
    :goto_83
    return v1

    :sswitch_data_84
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_78
        :pswitch_66
        :pswitch_57
        :pswitch_48
        :pswitch_3d
        :pswitch_32
    .end packed-switch
.end method
