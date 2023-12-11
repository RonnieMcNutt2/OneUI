.class public abstract Landroid/os/image/IDynamicSystemService$Stub;
.super Landroid/os/Binder;
.source "IDynamicSystemService.java"

# interfaces
.implements Landroid/os/image/IDynamicSystemService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/image/IDynamicSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/image/IDynamicSystemService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abort:I = 0x6

.field static final TRANSACTION_closePartition:I = 0x3

.field static final TRANSACTION_createPartition:I = 0x2

.field static final TRANSACTION_finishInstallation:I = 0x4

.field static final TRANSACTION_getAvbPublicKey:I = 0xe

.field static final TRANSACTION_getInstallationProgress:I = 0x5

.field static final TRANSACTION_isEnabled:I = 0x9

.field static final TRANSACTION_isInUse:I = 0x7

.field static final TRANSACTION_isInstalled:I = 0x8

.field static final TRANSACTION_remove:I = 0xa

.field static final TRANSACTION_setAshmem:I = 0xc

.field static final TRANSACTION_setEnable:I = 0xb

.field static final TRANSACTION_startInstallation:I = 0x1

.field static final TRANSACTION_submitFromAshmem:I = 0xd

.field static final TRANSACTION_suggestScratchSize:I = 0xf


# instance fields
.field private final mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    nop

    .line 165
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/image/IDynamicSystemService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 154
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 155
    const-string v0, "android.os.image.IDynamicSystemService"

    invoke-virtual {p0, p0, v0}, Landroid/os/image/IDynamicSystemService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 156
    if-eqz p1, :cond_d

    .line 159
    iput-object p1, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 160
    return-void

    .line 157
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/image/IDynamicSystemService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 173
    if-nez p0, :cond_4

    .line 174
    const/4 v0, 0x0

    return-object v0

    .line 176
    :cond_4
    const-string v0, "android.os.image.IDynamicSystemService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 177
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/image/IDynamicSystemService;

    if-eqz v1, :cond_14

    .line 178
    move-object v1, v0

    check-cast v1, Landroid/os/image/IDynamicSystemService;

    return-object v1

    .line 180
    :cond_14
    new-instance v1, Landroid/os/image/IDynamicSystemService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/image/IDynamicSystemService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 189
    packed-switch p0, :pswitch_data_3c

    .line 253
    const/4 v0, 0x0

    return-object v0

    .line 249
    :pswitch_5
    const-string/jumbo v0, "suggestScratchSize"

    return-object v0

    .line 245
    :pswitch_9
    const-string v0, "getAvbPublicKey"

    return-object v0

    .line 241
    :pswitch_c
    const-string/jumbo v0, "submitFromAshmem"

    return-object v0

    .line 237
    :pswitch_10
    const-string/jumbo v0, "setAshmem"

    return-object v0

    .line 233
    :pswitch_14
    const-string/jumbo v0, "setEnable"

    return-object v0

    .line 229
    :pswitch_18
    const-string/jumbo v0, "remove"

    return-object v0

    .line 225
    :pswitch_1c
    const-string/jumbo v0, "isEnabled"

    return-object v0

    .line 221
    :pswitch_20
    const-string/jumbo v0, "isInstalled"

    return-object v0

    .line 217
    :pswitch_24
    const-string/jumbo v0, "isInUse"

    return-object v0

    .line 213
    :pswitch_28
    const-string v0, "abort"

    return-object v0

    .line 209
    :pswitch_2b
    const-string v0, "getInstallationProgress"

    return-object v0

    .line 205
    :pswitch_2e
    const-string v0, "finishInstallation"

    return-object v0

    .line 201
    :pswitch_31
    const-string v0, "closePartition"

    return-object v0

    .line 197
    :pswitch_34
    const-string v0, "createPartition"

    return-object v0

    .line 193
    :pswitch_37
    const-string/jumbo v0, "startInstallation"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected abort_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 800
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 801
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 184
    return-object p0
.end method

.method protected closePartition_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 785
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 786
    return-void
.end method

.method protected createPartition_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 780
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 781
    return-void
.end method

.method protected finishInstallation_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 790
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 791
    return-void
.end method

.method protected getAvbPublicKey_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 832
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 833
    return-void
.end method

.method protected getInstallationProgress_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 795
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 796
    return-void
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 842
    const/16 v0, 0xe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 260
    invoke-static {p1}, Landroid/os/image/IDynamicSystemService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 807
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 808
    return-void
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

    .line 264
    const-string v0, "android.os.image.IDynamicSystemService"

    .line 265
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 266
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    :cond_d
    packed-switch p1, :pswitch_data_10a

    .line 276
    packed-switch p1, :pswitch_data_110

    .line 412
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 272
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    return v1

    .line 405
    :pswitch_1c
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->suggestScratchSize()J

    move-result-wide v2

    .line 406
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 408
    goto/16 :goto_109

    .line 395
    .end local v2    # "_result":J
    :pswitch_28
    new-instance v2, Landroid/gsi/AvbPublicKey;

    invoke-direct {v2}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 396
    .local v2, "_arg0":Landroid/gsi/AvbPublicKey;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2}, Landroid/os/image/IDynamicSystemService$Stub;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)Z

    move-result v3

    .line 398
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 400
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 401
    goto/16 :goto_109

    .line 385
    .end local v2    # "_arg0":Landroid/gsi/AvbPublicKey;
    .end local v3    # "_result":Z
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 386
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v2, v3}, Landroid/os/image/IDynamicSystemService$Stub;->submitFromAshmem(J)Z

    move-result v4

    .line 388
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 390
    goto/16 :goto_109

    .line 373
    .end local v2    # "_arg0":J
    .end local v4    # "_result":Z
    :pswitch_52
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 375
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 376
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/image/IDynamicSystemService$Stub;->setAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    move-result v5

    .line 378
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 380
    goto/16 :goto_109

    .line 361
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":J
    .end local v5    # "_result":Z
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 363
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 364
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {p0, v2, v3}, Landroid/os/image/IDynamicSystemService$Stub;->setEnable(ZZ)Z

    move-result v4

    .line 366
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 368
    goto/16 :goto_109

    .line 353
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_84
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->remove()Z

    move-result v2

    .line 354
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 356
    goto/16 :goto_109

    .line 346
    .end local v2    # "_result":Z
    :pswitch_90
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->isEnabled()Z

    move-result v2

    .line 347
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 349
    goto :goto_109

    .line 339
    .end local v2    # "_result":Z
    :pswitch_9b
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->isInstalled()Z

    move-result v2

    .line 340
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 342
    goto :goto_109

    .line 332
    .end local v2    # "_result":Z
    :pswitch_a6
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->isInUse()Z

    move-result v2

    .line 333
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 335
    goto :goto_109

    .line 325
    .end local v2    # "_result":Z
    :pswitch_b1
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->abort()Z

    move-result v2

    .line 326
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 328
    goto :goto_109

    .line 318
    .end local v2    # "_result":Z
    :pswitch_bc
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->getInstallationProgress()Landroid/gsi/GsiProgress;

    move-result-object v2

    .line 319
    .local v2, "_result":Landroid/gsi/GsiProgress;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 321
    goto :goto_109

    .line 311
    .end local v2    # "_result":Landroid/gsi/GsiProgress;
    :pswitch_c7
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->finishInstallation()Z

    move-result v2

    .line 312
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 314
    goto :goto_109

    .line 304
    .end local v2    # "_result":Z
    :pswitch_d2
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->closePartition()Z

    move-result v2

    .line 305
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 307
    goto :goto_109

    .line 291
    .end local v2    # "_result":Z
    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 295
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 296
    .local v5, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/os/image/IDynamicSystemService$Stub;->createPartition(Ljava/lang/String;JZ)I

    move-result v6

    .line 298
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    goto :goto_109

    .line 281
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":Z
    .end local v6    # "_result":I
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 282
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v2}, Landroid/os/image/IDynamicSystemService$Stub;->startInstallation(Ljava/lang/String;)Z

    move-result v3

    .line 284
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 286
    nop

    .line 415
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :goto_109
    return v1

    :pswitch_data_10a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_f7
        :pswitch_dd
        :pswitch_d2
        :pswitch_c7
        :pswitch_bc
        :pswitch_b1
        :pswitch_a6
        :pswitch_9b
        :pswitch_90
        :pswitch_84
        :pswitch_6d
        :pswitch_52
        :pswitch_3f
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method

.method protected remove_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 812
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 813
    return-void
.end method

.method protected setAshmem_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 822
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 823
    return-void
.end method

.method protected setEnable_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 817
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 818
    return-void
.end method

.method protected startInstallation_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 775
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 776
    return-void
.end method

.method protected submitFromAshmem_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 827
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 828
    return-void
.end method

.method protected suggestScratchSize_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 837
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 838
    return-void
.end method
