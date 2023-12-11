.class public abstract Landroid/hardware/gnss/IGnssPsds$Stub;
.super Landroid/os/Binder;
.source "IGnssPsds.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssPsds;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssPsds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssPsds$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_injectPsdsData:I = 0x1

.field static final TRANSACTION_setCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssPsds$Stub;->markVintfStability()V

    .line 45
    sget-object v0, Landroid/hardware/gnss/IGnssPsds$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnssPsds$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssPsds;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    sget-object v0, Landroid/hardware/gnss/IGnssPsds$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/gnss/IGnssPsds;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IGnssPsds;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Landroid/hardware/gnss/IGnssPsds$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IGnssPsds$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 69
    sparse-switch p0, :sswitch_data_12

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 81
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 85
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 77
    :sswitch_b
    const-string v0, "setCallback"

    return-object v0

    .line 73
    :sswitch_e
    const-string v0, "injectPsdsData"

    return-object v0

    nop

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 249
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 96
    invoke-static {p1}, Landroid/hardware/gnss/IGnssPsds$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 100
    sget-object v0, Landroid/hardware/gnss/IGnssPsds$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 101
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_d
    sparse-switch p1, :sswitch_data_58

    .line 124
    packed-switch p1, :pswitch_data_66

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 108
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v1

    .line 113
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssPsds$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return v1

    .line 119
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssPsds$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v1

    .line 140
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/IGnssPsdsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssPsdsCallback;

    move-result-object v2

    .line 141
    .local v2, "_arg0":Landroid/hardware/gnss/IGnssPsdsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2}, Landroid/hardware/gnss/IGnssPsds$Stub;->setCallback(Landroid/hardware/gnss/IGnssPsdsCallback;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    goto :goto_56

    .line 129
    .end local v2    # "_arg0":Landroid/hardware/gnss/IGnssPsdsCallback;
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 132
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v2, v3}, Landroid/hardware/gnss/IGnssPsds$Stub;->injectPsdsData(I[B)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    nop

    .line 151
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :goto_56
    return v1

    nop

    :sswitch_data_58
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_44
        :pswitch_32
    .end packed-switch
.end method
