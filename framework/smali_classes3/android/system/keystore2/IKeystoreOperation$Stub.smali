.class public abstract Landroid/system/keystore2/IKeystoreOperation$Stub;
.super Landroid/os/Binder;
.source "IKeystoreOperation.java"

# interfaces
.implements Landroid/system/keystore2/IKeystoreOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/keystore2/IKeystoreOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/keystore2/IKeystoreOperation$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abort:I = 0x4

.field static final TRANSACTION_finish:I = 0x3

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_update:I = 0x2

.field static final TRANSACTION_updateAad:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->markVintfStability()V

    .line 53
    sget-object v0, Landroid/system/keystore2/IKeystoreOperation$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/system/keystore2/IKeystoreOperation;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_4
    sget-object v0, Landroid/system/keystore2/IKeystoreOperation$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/system/keystore2/IKeystoreOperation;

    if-eqz v1, :cond_14

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/system/keystore2/IKeystoreOperation;

    return-object v1

    .line 68
    :cond_14
    new-instance v1, Landroid/system/keystore2/IKeystoreOperation$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/system/keystore2/IKeystoreOperation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 77
    sparse-switch p0, :sswitch_data_1a

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 97
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 101
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 93
    :sswitch_b
    const-string v0, "abort"

    return-object v0

    .line 89
    :sswitch_e
    const-string v0, "finish"

    return-object v0

    .line 85
    :sswitch_11
    const-string/jumbo v0, "update"

    return-object v0

    .line 81
    :sswitch_15
    const-string/jumbo v0, "updateAad"

    return-object v0

    nop

    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_11
        0x3 -> :sswitch_e
        0x4 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 72
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 329
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 112
    invoke-static {p1}, Landroid/system/keystore2/IKeystoreOperation$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 116
    sget-object v0, Landroid/system/keystore2/IKeystoreOperation$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 117
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 118
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    :cond_d
    sparse-switch p1, :sswitch_data_70

    .line 140
    packed-switch p1, :pswitch_data_7e

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 124
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return v1

    .line 129
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return v1

    .line 135
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    return v1

    .line 175
    :pswitch_32
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->abort()V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_6f

    .line 164
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 166
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 167
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2, v3}, Landroid/system/keystore2/IKeystoreOperation$Stub;->finish([B[B)[B

    move-result-object v4

    .line 169
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 171
    goto :goto_6f

    .line 154
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":[B
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 155
    .restart local v2    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2}, Landroid/system/keystore2/IKeystoreOperation$Stub;->update([B)[B

    move-result-object v3

    .line 157
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 159
    goto :goto_6f

    .line 145
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":[B
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 146
    .restart local v2    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2}, Landroid/system/keystore2/IKeystoreOperation$Stub;->updateAad([B)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    nop

    .line 184
    .end local v2    # "_arg0":[B
    :goto_6f
    return v1

    :sswitch_data_70
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_61
        :pswitch_4f
        :pswitch_39
        :pswitch_32
    .end packed-switch
.end method
