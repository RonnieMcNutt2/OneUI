.class public abstract Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback$Stub;
.super Landroid/os/Binder;
.source "ISehThermalChangedCallback.java"

# interfaces
.implements Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_notifyTemperatures:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    invoke-virtual {p0}, Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback$Stub;->markVintfStability()V

    .line 41
    sget-object v0, Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_4
    sget-object v0, Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback;

    if-eqz v1, :cond_14

    .line 54
    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback;

    return-object v1

    .line 56
    :cond_14
    new-instance v1, Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 65
    sparse-switch p0, :sswitch_data_e

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 73
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 77
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 69
    :sswitch_b
    const-string v0, "notifyTemperatures"

    return-object v0

    :sswitch_data_e
    .sparse-switch
        0x1 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 206
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 88
    invoke-static {p1}, Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 92
    sget-object v0, Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 93
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_d
    sparse-switch p1, :sswitch_data_42

    .line 116
    packed-switch p1, :pswitch_data_50

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 100
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 105
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p0}, Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    return v1

    .line 111
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p0}, Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return v1

    .line 121
    :pswitch_32
    sget-object v2, Lvendor/samsung/hardware/thermal/SehTemperature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/samsung/hardware/thermal/SehTemperature;

    .line 122
    .local v2, "_arg0":[Lvendor/samsung/hardware/thermal/SehTemperature;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback$Stub;->notifyTemperatures([Lvendor/samsung/hardware/thermal/SehTemperature;)V

    .line 124
    nop

    .line 131
    .end local v2    # "_arg0":[Lvendor/samsung/hardware/thermal/SehTemperature;
    return v1

    :sswitch_data_42
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_32
    .end packed-switch
.end method
