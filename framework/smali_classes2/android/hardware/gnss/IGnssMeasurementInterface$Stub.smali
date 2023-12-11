.class public abstract Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;
.super Landroid/os/Binder;
.source "IGnssMeasurementInterface.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssMeasurementInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssMeasurementInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssMeasurementInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_setCallback:I = 0x1

.field static final TRANSACTION_setCallbackWithOptions:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->markVintfStability()V

    .line 48
    sget-object v0, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssMeasurementInterface;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    sget-object v0, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/gnss/IGnssMeasurementInterface;

    if-eqz v1, :cond_14

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IGnssMeasurementInterface;

    return-object v1

    .line 63
    :cond_14
    new-instance v1, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 72
    sparse-switch p0, :sswitch_data_14

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 88
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 92
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 84
    :sswitch_b
    const-string v0, "setCallbackWithOptions"

    return-object v0

    .line 80
    :sswitch_e
    const-string v0, "close"

    return-object v0

    .line 76
    :sswitch_11
    const-string v0, "setCallback"

    return-object v0

    :sswitch_data_14
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_e
        0x3 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 286
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 103
    invoke-static {p1}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 107
    sget-object v0, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->DESCRIPTOR:Ljava/lang/String;

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
    sparse-switch p1, :sswitch_data_6e

    .line 131
    packed-switch p1, :pswitch_data_7c

    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 115
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v1

    .line 120
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    return v1

    .line 126
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v1

    .line 155
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/IGnssMeasurementCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssMeasurementCallback;

    move-result-object v2

    .line 157
    .local v2, "_arg0":Landroid/hardware/gnss/IGnssMeasurementCallback;
    sget-object v3, Landroid/hardware/gnss/IGnssMeasurementInterface$Options;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/IGnssMeasurementInterface$Options;

    .line 158
    .local v3, "_arg1":Landroid/hardware/gnss/IGnssMeasurementInterface$Options;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2, v3}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->setCallbackWithOptions(Landroid/hardware/gnss/IGnssMeasurementCallback;Landroid/hardware/gnss/IGnssMeasurementInterface$Options;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    goto :goto_6d

    .line 148
    .end local v2    # "_arg0":Landroid/hardware/gnss/IGnssMeasurementCallback;
    .end local v3    # "_arg1":Landroid/hardware/gnss/IGnssMeasurementInterface$Options;
    :pswitch_4c
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->close()V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    goto :goto_6d

    .line 136
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/IGnssMeasurementCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssMeasurementCallback;

    move-result-object v2

    .line 138
    .restart local v2    # "_arg0":Landroid/hardware/gnss/IGnssMeasurementCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 140
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 141
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->setCallback(Landroid/hardware/gnss/IGnssMeasurementCallback;ZZ)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    nop

    .line 168
    .end local v2    # "_arg0":Landroid/hardware/gnss/IGnssMeasurementCallback;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Z
    :goto_6d
    return v1

    :sswitch_data_6e
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4c
        :pswitch_32
    .end packed-switch
.end method
