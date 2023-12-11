.class public abstract Lcom/samsung/android/service/reactive/IReactiveService$Stub;
.super Landroid/os/Binder;
.source "IReactiveService.java"

# interfaces
.implements Lcom/samsung/android/service/reactive/IReactiveService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/reactive/IReactiveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/reactive/IReactiveService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getErrorCode:I = 0x9

.field static final TRANSACTION_getFlag:I = 0x2

.field static final TRANSACTION_getRandom:I = 0xb

.field static final TRANSACTION_getServiceSupport:I = 0x1

.field static final TRANSACTION_getString:I = 0x4

.field static final TRANSACTION_removeString:I = 0x6

.field static final TRANSACTION_sessionAccept:I = 0x7

.field static final TRANSACTION_sessionComplete:I = 0x8

.field static final TRANSACTION_setFlag:I = 0x3

.field static final TRANSACTION_setString:I = 0x5

.field static final TRANSACTION_verify:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 149
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 150
    const-string v0, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/reactive/IReactiveService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 158
    if-nez p0, :cond_4

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_4
    const-string v0, "com.samsung.android.service.reactive.IReactiveService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 162
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/service/reactive/IReactiveService;

    if-eqz v1, :cond_14

    .line 163
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/service/reactive/IReactiveService;

    return-object v1

    .line 165
    :cond_14
    new-instance v1, Lcom/samsung/android/service/reactive/IReactiveService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 174
    packed-switch p0, :pswitch_data_32

    .line 222
    const/4 v0, 0x0

    return-object v0

    .line 218
    :pswitch_5
    const-string/jumbo v0, "getRandom"

    return-object v0

    .line 214
    :pswitch_9
    const-string/jumbo v0, "verify"

    return-object v0

    .line 210
    :pswitch_d
    const-string/jumbo v0, "getErrorCode"

    return-object v0

    .line 206
    :pswitch_11
    const-string/jumbo v0, "sessionComplete"

    return-object v0

    .line 202
    :pswitch_15
    const-string/jumbo v0, "sessionAccept"

    return-object v0

    .line 198
    :pswitch_19
    const-string/jumbo v0, "removeString"

    return-object v0

    .line 194
    :pswitch_1d
    const-string/jumbo v0, "setString"

    return-object v0

    .line 190
    :pswitch_21
    const-string/jumbo v0, "getString"

    return-object v0

    .line 186
    :pswitch_25
    const-string/jumbo v0, "setFlag"

    return-object v0

    .line 182
    :pswitch_29
    const-string/jumbo v0, "getFlag"

    return-object v0

    .line 178
    :pswitch_2d
    const-string/jumbo v0, "getServiceSupport"

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
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

    .line 169
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 662
    const/16 v0, 0xa

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 229
    invoke-static {p1}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    const-string v0, "com.samsung.android.service.reactive.IReactiveService"

    .line 234
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 235
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    :cond_d
    packed-switch p1, :pswitch_data_d0

    .line 245
    packed-switch p1, :pswitch_data_d6

    .line 350
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 241
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    return v1

    .line 343
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->getRandom()[B

    move-result-object v2

    .line 344
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 346
    goto/16 :goto_cf

    .line 332
    .end local v2    # "_result":[B
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 335
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->verify(Ljava/lang/String;I)I

    move-result v4

    .line 337
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    goto/16 :goto_cf

    .line 324
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_3f
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->getErrorCode()I

    move-result v2

    .line 325
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    goto/16 :goto_cf

    .line 315
    .end local v2    # "_result":I
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 316
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->sessionComplete([B)I

    move-result v3

    .line 318
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    goto/16 :goto_cf

    .line 305
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":I
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 306
    .restart local v2    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->sessionAccept([B)[B

    move-result-object v3

    .line 308
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 310
    goto :goto_cf

    .line 297
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":[B
    :pswitch_70
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->removeString()I

    move-result v2

    .line 298
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    goto :goto_cf

    .line 288
    .end local v2    # "_result":I
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->setString(Ljava/lang/String;)I

    move-result v3

    .line 291
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    goto :goto_cf

    .line 280
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_8d
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->getString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    goto :goto_cf

    .line 267
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 269
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 271
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->setFlag(IILjava/lang/String;)I

    move-result v5

    .line 274
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    goto :goto_cf

    .line 257
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 258
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->getFlag(I)I

    move-result v3

    .line 260
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    goto :goto_cf

    .line 249
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_c4
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->getServiceSupport()I

    move-result v2

    .line 250
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    nop

    .line 353
    .end local v2    # "_result":I
    :goto_cf
    return v1

    :pswitch_data_d0
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_c4
        :pswitch_b2
        :pswitch_98
        :pswitch_8d
        :pswitch_7b
        :pswitch_70
        :pswitch_5e
        :pswitch_4b
        :pswitch_3f
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
