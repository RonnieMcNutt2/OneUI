.class public abstract Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;
.super Landroid/os/Binder;
.source "IIntegrityControlCheckCenter.java"

# interfaces
.implements Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getDeviceInfo:I = 0x6

.field static final TRANSACTION_getDeviceStatus:I = 0x5

.field static final TRANSACTION_getSecureData:I = 0x1

.field static final TRANSACTION_getTrustedBootData:I = 0x3

.field static final TRANSACTION_setAttestationData:I = 0x4

.field static final TRANSACTION_setSecureData:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "com.samsung.android.iccc.IIntegrityControlCheckCenter"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    const-string v0, "com.samsung.android.iccc.IIntegrityControlCheckCenter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    if-eqz v1, :cond_14

    .line 62
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    return-object v1

    .line 64
    :cond_14
    new-instance v1, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 73
    packed-switch p0, :pswitch_data_1e

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 97
    :pswitch_5
    const-string/jumbo v0, "getDeviceInfo"

    return-object v0

    .line 93
    :pswitch_9
    const-string/jumbo v0, "getDeviceStatus"

    return-object v0

    .line 89
    :pswitch_d
    const-string/jumbo v0, "setAttestationData"

    return-object v0

    .line 85
    :pswitch_11
    const-string/jumbo v0, "getTrustedBootData"

    return-object v0

    .line 81
    :pswitch_15
    const-string/jumbo v0, "setSecureData"

    return-object v0

    .line 77
    :pswitch_19
    const-string/jumbo v0, "getSecureData"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 68
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 328
    const/4 v0, 0x5

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 108
    invoke-static {p1}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 112
    const-string v0, "com.samsung.android.iccc.IIntegrityControlCheckCenter"

    .line 113
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_d
    packed-switch p1, :pswitch_data_8a

    .line 124
    packed-switch p1, :pswitch_data_90

    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 120
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v1

    .line 180
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 181
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;->getDeviceInfo([B)[B

    move-result-object v3

    .line 183
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 185
    goto :goto_89

    .line 168
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":[B
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 171
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;->getDeviceStatus(I[B)[B

    move-result-object v4

    .line 173
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 175
    goto :goto_89

    .line 158
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":[B
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 159
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;->setAttestationData([B)[B

    move-result-object v3

    .line 161
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 163
    goto :goto_89

    .line 150
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":[B
    :pswitch_56
    invoke-virtual {p0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;->getTrustedBootData()I

    move-result v2

    .line 151
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    goto :goto_89

    .line 139
    .end local v2    # "_result":I
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 142
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;->setSecureData(II)I

    move-result v4

    .line 144
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    goto :goto_89

    .line 129
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;->getSecureData(I)I

    move-result v3

    .line 132
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    nop

    .line 192
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :goto_89
    return v1

    :pswitch_data_8a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_77
        :pswitch_61
        :pswitch_56
        :pswitch_44
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
