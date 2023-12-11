.class public abstract Landroid/os/IServiceManager$Stub;
.super Landroid/os/Binder;
.source "IServiceManager.java"

# interfaces
.implements Landroid/os/IServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IServiceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addService:I = 0x3

.field static final TRANSACTION_checkService:I = 0x2

.field static final TRANSACTION_getConnectionInfo:I = 0xb

.field static final TRANSACTION_getDeclaredInstances:I = 0x8

.field static final TRANSACTION_getService:I = 0x1

.field static final TRANSACTION_getServiceDebugInfo:I = 0xe

.field static final TRANSACTION_getUpdatableNames:I = 0xa

.field static final TRANSACTION_isDeclared:I = 0x7

.field static final TRANSACTION_listServices:I = 0x4

.field static final TRANSACTION_registerClientCallback:I = 0xc

.field static final TRANSACTION_registerForNotifications:I = 0x5

.field static final TRANSACTION_tryUnregisterService:I = 0xd

.field static final TRANSACTION_unregisterForNotifications:I = 0x6

.field static final TRANSACTION_updatableViaApex:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 123
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 124
    const-string v0, "android.os.IServiceManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IServiceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 132
    if-nez p0, :cond_4

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_4
    const-string v0, "android.os.IServiceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 136
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IServiceManager;

    if-eqz v1, :cond_14

    .line 137
    move-object v1, v0

    check-cast v1, Landroid/os/IServiceManager;

    return-object v1

    .line 139
    :cond_14
    new-instance v1, Landroid/os/IServiceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IServiceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 148
    packed-switch p0, :pswitch_data_3a

    .line 208
    const/4 v0, 0x0

    return-object v0

    .line 204
    :pswitch_5
    const-string/jumbo v0, "getServiceDebugInfo"

    return-object v0

    .line 200
    :pswitch_9
    const-string/jumbo v0, "tryUnregisterService"

    return-object v0

    .line 196
    :pswitch_d
    const-string/jumbo v0, "registerClientCallback"

    return-object v0

    .line 192
    :pswitch_11
    const-string v0, "getConnectionInfo"

    return-object v0

    .line 188
    :pswitch_14
    const-string/jumbo v0, "getUpdatableNames"

    return-object v0

    .line 184
    :pswitch_18
    const-string/jumbo v0, "updatableViaApex"

    return-object v0

    .line 180
    :pswitch_1c
    const-string v0, "getDeclaredInstances"

    return-object v0

    .line 176
    :pswitch_1f
    const-string/jumbo v0, "isDeclared"

    return-object v0

    .line 172
    :pswitch_23
    const-string/jumbo v0, "unregisterForNotifications"

    return-object v0

    .line 168
    :pswitch_27
    const-string/jumbo v0, "registerForNotifications"

    return-object v0

    .line 164
    :pswitch_2b
    const-string/jumbo v0, "listServices"

    return-object v0

    .line 160
    :pswitch_2f
    const-string v0, "addService"

    return-object v0

    .line 156
    :pswitch_32
    const-string v0, "checkService"

    return-object v0

    .line 152
    :pswitch_35
    const-string/jumbo v0, "getService"

    return-object v0

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 143
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 709
    const/16 v0, 0xd

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 215
    invoke-static {p1}, Landroid/os/IServiceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 219
    const-string v0, "android.os.IServiceManager"

    .line 220
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 221
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    :cond_d
    packed-switch p1, :pswitch_data_132

    .line 231
    packed-switch p1, :pswitch_data_138

    .line 383
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 227
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    return v1

    .line 376
    :pswitch_1c
    invoke-virtual {p0}, Landroid/os/IServiceManager$Stub;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v2

    .line 377
    .local v2, "_result":[Landroid/os/ServiceDebugInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 379
    goto/16 :goto_131

    .line 366
    .end local v2    # "_result":[Landroid/os/ServiceDebugInfo;
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 369
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, v2, v3}, Landroid/os/IServiceManager$Stub;->tryUnregisterService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    goto/16 :goto_131

    .line 353
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 355
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 357
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IClientCallback;

    move-result-object v4

    .line 358
    .local v4, "_arg2":Landroid/os/IClientCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IServiceManager$Stub;->registerClientCallback(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/IClientCallback;)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    goto/16 :goto_131

    .line 343
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Landroid/os/IClientCallback;
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 344
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->getConnectionInfo(Ljava/lang/String;)Landroid/os/ConnectionInfo;

    move-result-object v3

    .line 346
    .local v3, "_result":Landroid/os/ConnectionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 348
    goto/16 :goto_131

    .line 333
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/ConnectionInfo;
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 334
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->getUpdatableNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 338
    goto/16 :goto_131

    .line 323
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 324
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->updatableViaApex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    goto/16 :goto_131

    .line 313
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 314
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 318
    goto/16 :goto_131

    .line 303
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 304
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->isDeclared(Ljava/lang/String;)Z

    move-result v3

    .line 306
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 308
    goto/16 :goto_131

    .line 292
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 294
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceCallback;

    move-result-object v3

    .line 295
    .local v3, "_arg1":Landroid/os/IServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2, v3}, Landroid/os/IServiceManager$Stub;->unregisterForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    goto :goto_131

    .line 281
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IServiceCallback;
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 283
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceCallback;

    move-result-object v3

    .line 284
    .restart local v3    # "_arg1":Landroid/os/IServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2, v3}, Landroid/os/IServiceManager$Stub;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    goto :goto_131

    .line 271
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IServiceCallback;
    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 272
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->listServices(I)[Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 276
    goto :goto_131

    .line 256
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 260
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 262
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 263
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/os/IServiceManager$Stub;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    goto :goto_131

    .line 246
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":I
    :pswitch_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 247
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 249
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 251
    goto :goto_131

    .line 236
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_11f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 237
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 239
    .restart local v3    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 241
    nop

    .line 386
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/IBinder;
    :goto_131
    return v1

    :pswitch_data_132
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_11f
        :pswitch_10d
        :pswitch_f3
        :pswitch_e1
        :pswitch_cb
        :pswitch_b5
        :pswitch_a2
        :pswitch_8f
        :pswitch_7c
        :pswitch_69
        :pswitch_56
        :pswitch_3b
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
