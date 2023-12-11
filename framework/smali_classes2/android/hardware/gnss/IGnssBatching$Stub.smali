.class public abstract Landroid/hardware/gnss/IGnssBatching$Stub;
.super Landroid/os/Binder;
.source "IGnssBatching.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssBatching;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssBatching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssBatching$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cleanup:I = 0x6

.field static final TRANSACTION_flush:I = 0x4

.field static final TRANSACTION_getBatchSize:I = 0x2

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_start:I = 0x3

.field static final TRANSACTION_stop:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->markVintfStability()V

    .line 58
    sget-object v0, Landroid/hardware/gnss/IGnssBatching$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnssBatching$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssBatching;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_4
    sget-object v0, Landroid/hardware/gnss/IGnssBatching$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/gnss/IGnssBatching;

    if-eqz v1, :cond_14

    .line 71
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IGnssBatching;

    return-object v1

    .line 73
    :cond_14
    new-instance v1, Landroid/hardware/gnss/IGnssBatching$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IGnssBatching$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 82
    sparse-switch p0, :sswitch_data_1e

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 110
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 114
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 106
    :sswitch_b
    const-string v0, "cleanup"

    return-object v0

    .line 102
    :sswitch_e
    const-string v0, "stop"

    return-object v0

    .line 98
    :sswitch_11
    const-string v0, "flush"

    return-object v0

    .line 94
    :sswitch_14
    const-string v0, "start"

    return-object v0

    .line 90
    :sswitch_17
    const-string v0, "getBatchSize"

    return-object v0

    .line 86
    :sswitch_1a
    const-string v0, "init"

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

    .line 77
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 375
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 125
    invoke-static {p1}, Landroid/hardware/gnss/IGnssBatching$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 129
    sget-object v0, Landroid/hardware/gnss/IGnssBatching$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 130
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 131
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    :cond_d
    sparse-switch p1, :sswitch_data_78

    .line 153
    packed-switch p1, :pswitch_data_86

    .line 200
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 137
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    return v1

    .line 142
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    return v1

    .line 148
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    return v1

    .line 194
    :pswitch_32
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->cleanup()V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    goto :goto_76

    .line 188
    :pswitch_39
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->stop()V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    goto :goto_76

    .line 182
    :pswitch_40
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->flush()V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    goto :goto_76

    .line 174
    :pswitch_47
    sget-object v2, Landroid/hardware/gnss/IGnssBatching$Options;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/IGnssBatching$Options;

    .line 175
    .local v2, "_arg0":Landroid/hardware/gnss/IGnssBatching$Options;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2}, Landroid/hardware/gnss/IGnssBatching$Stub;->start(Landroid/hardware/gnss/IGnssBatching$Options;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_76

    .line 166
    .end local v2    # "_arg0":Landroid/hardware/gnss/IGnssBatching$Options;
    :pswitch_59
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->getBatchSize()I

    move-result v2

    .line 167
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    goto :goto_76

    .line 158
    .end local v2    # "_result":I
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/IGnssBatchingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssBatchingCallback;

    move-result-object v2

    .line 159
    .local v2, "_arg0":Landroid/hardware/gnss/IGnssBatchingCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2}, Landroid/hardware/gnss/IGnssBatching$Stub;->init(Landroid/hardware/gnss/IGnssBatchingCallback;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    nop

    .line 203
    .end local v2    # "_arg0":Landroid/hardware/gnss/IGnssBatchingCallback;
    :goto_76
    return v1

    nop

    :sswitch_data_78
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_64
        :pswitch_59
        :pswitch_47
        :pswitch_40
        :pswitch_39
        :pswitch_32
    .end packed-switch
.end method
