.class public abstract Landroid/app/blob/IBlobStoreSession$Stub;
.super Landroid/os/Binder;
.source "IBlobStoreSession.java"

# interfaces
.implements Landroid/app/blob/IBlobStoreSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/blob/IBlobStoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/blob/IBlobStoreSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abandon:I = 0xb

.field static final TRANSACTION_allowPackageAccess:I = 0x3

.field static final TRANSACTION_allowPublicAccess:I = 0x5

.field static final TRANSACTION_allowSameSignatureAccess:I = 0x4

.field static final TRANSACTION_close:I = 0xa

.field static final TRANSACTION_commit:I = 0xc

.field static final TRANSACTION_getSize:I = 0x9

.field static final TRANSACTION_isPackageAccessAllowed:I = 0x6

.field static final TRANSACTION_isPublicAccessAllowed:I = 0x8

.field static final TRANSACTION_isSameSignatureAccessAllowed:I = 0x7

.field static final TRANSACTION_openRead:I = 0x2

.field static final TRANSACTION_openWrite:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "android.app.blob.IBlobStoreSession"

    invoke-virtual {p0, p0, v0}, Landroid/app/blob/IBlobStoreSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/blob/IBlobStoreSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_4
    const-string v0, "android.app.blob.IBlobStoreSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/blob/IBlobStoreSession;

    if-eqz v1, :cond_14

    .line 77
    move-object v1, v0

    check-cast v1, Landroid/app/blob/IBlobStoreSession;

    return-object v1

    .line 79
    :cond_14
    new-instance v1, Landroid/app/blob/IBlobStoreSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/blob/IBlobStoreSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 88
    packed-switch p0, :pswitch_data_2e

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 136
    :pswitch_5
    const-string v0, "commit"

    return-object v0

    .line 132
    :pswitch_8
    const-string v0, "abandon"

    return-object v0

    .line 128
    :pswitch_b
    const-string v0, "close"

    return-object v0

    .line 124
    :pswitch_e
    const-string v0, "getSize"

    return-object v0

    .line 120
    :pswitch_11
    const-string/jumbo v0, "isPublicAccessAllowed"

    return-object v0

    .line 116
    :pswitch_15
    const-string/jumbo v0, "isSameSignatureAccessAllowed"

    return-object v0

    .line 112
    :pswitch_19
    const-string/jumbo v0, "isPackageAccessAllowed"

    return-object v0

    .line 108
    :pswitch_1d
    const-string v0, "allowPublicAccess"

    return-object v0

    .line 104
    :pswitch_20
    const-string v0, "allowSameSignatureAccess"

    return-object v0

    .line 100
    :pswitch_23
    const-string v0, "allowPackageAccess"

    return-object v0

    .line 96
    :pswitch_26
    const-string/jumbo v0, "openRead"

    return-object v0

    .line 92
    :pswitch_2a
    const-string/jumbo v0, "openWrite"

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 83
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 492
    const/16 v0, 0xb

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 147
    invoke-static {p1}, Landroid/app/blob/IBlobStoreSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    const-string v0, "android.app.blob.IBlobStoreSession"

    .line 152
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 153
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    :cond_d
    packed-switch p1, :pswitch_data_b8

    .line 163
    packed-switch p1, :pswitch_data_be

    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 159
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return v1

    .line 255
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/blob/IBlobCommitCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/blob/IBlobCommitCallback;

    move-result-object v2

    .line 256
    .local v2, "_arg0":Landroid/app/blob/IBlobCommitCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2}, Landroid/app/blob/IBlobStoreSession$Stub;->commit(Landroid/app/blob/IBlobCommitCallback;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    goto/16 :goto_b7

    .line 248
    .end local v2    # "_arg0":Landroid/app/blob/IBlobCommitCallback;
    :pswitch_2f
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->abandon()V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto/16 :goto_b7

    .line 242
    :pswitch_37
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->close()V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    goto/16 :goto_b7

    .line 235
    :pswitch_3f
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->getSize()J

    move-result-wide v2

    .line 236
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 238
    goto :goto_b7

    .line 228
    .end local v2    # "_result":J
    :pswitch_4a
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->isPublicAccessAllowed()Z

    move-result v2

    .line 229
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 231
    goto :goto_b7

    .line 221
    .end local v2    # "_result":Z
    :pswitch_55
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->isSameSignatureAccessAllowed()Z

    move-result v2

    .line 222
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 224
    goto :goto_b7

    .line 210
    .end local v2    # "_result":Z
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 213
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2, v3}, Landroid/app/blob/IBlobStoreSession$Stub;->isPackageAccessAllowed(Ljava/lang/String;[B)Z

    move-result v4

    .line 215
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 217
    goto :goto_b7

    .line 203
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":Z
    :pswitch_76
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->allowPublicAccess()V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    goto :goto_b7

    .line 197
    :pswitch_7d
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->allowSameSignatureAccess()V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto :goto_b7

    .line 187
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 190
    .restart local v3    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2, v3}, Landroid/app/blob/IBlobStoreSession$Stub;->allowPackageAccess(Ljava/lang/String;[B)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    goto :goto_b7

    .line 179
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    :pswitch_96
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->openRead()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 180
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 182
    goto :goto_b7

    .line 168
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 170
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 171
    .local v4, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/blob/IBlobStoreSession$Stub;->openWrite(JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 173
    .local v6, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 175
    nop

    .line 266
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":J
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :goto_b7
    return v1

    :pswitch_data_b8
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_96
        :pswitch_84
        :pswitch_7d
        :pswitch_76
        :pswitch_60
        :pswitch_55
        :pswitch_4a
        :pswitch_3f
        :pswitch_37
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
