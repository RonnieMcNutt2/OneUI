.class public abstract Landroid/hardware/display/IColorDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IColorDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IColorDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IColorDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IColorDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getColorMode:I = 0x11

.field static final TRANSACTION_getNightDisplayAutoMode:I = 0xa

.field static final TRANSACTION_getNightDisplayAutoModeRaw:I = 0xb

.field static final TRANSACTION_getNightDisplayColorTemperature:I = 0x8

.field static final TRANSACTION_getNightDisplayCustomEndTime:I = 0xf

.field static final TRANSACTION_getNightDisplayCustomStartTime:I = 0xd

.field static final TRANSACTION_getReduceBrightColorsOffsetFactor:I = 0x19

.field static final TRANSACTION_getReduceBrightColorsStrength:I = 0x17

.field static final TRANSACTION_getTransformCapabilities:I = 0x5

.field static final TRANSACTION_isDeviceColorManaged:I = 0x1

.field static final TRANSACTION_isDisplayWhiteBalanceEnabled:I = 0x13

.field static final TRANSACTION_isNightDisplayActivated:I = 0x6

.field static final TRANSACTION_isReduceBrightColorsActivated:I = 0x15

.field static final TRANSACTION_isSaturationActivated:I = 0x4

.field static final TRANSACTION_setAppSaturationLevel:I = 0x3

.field static final TRANSACTION_setColorMode:I = 0x12

.field static final TRANSACTION_setDisplayWhiteBalanceEnabled:I = 0x14

.field static final TRANSACTION_setNightDisplayActivated:I = 0x7

.field static final TRANSACTION_setNightDisplayAutoMode:I = 0xc

.field static final TRANSACTION_setNightDisplayColorTemperature:I = 0x9

.field static final TRANSACTION_setNightDisplayCustomEndTime:I = 0x10

.field static final TRANSACTION_setNightDisplayCustomStartTime:I = 0xe

.field static final TRANSACTION_setReduceBrightColorsActivated:I = 0x16

.field static final TRANSACTION_setReduceBrightColorsStrength:I = 0x18

.field static final TRANSACTION_setSaturationLevel:I = 0x2


# instance fields
.field private final mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    nop

    .line 132
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/display/IColorDisplayManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 121
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 122
    const-string v0, "android.hardware.display.IColorDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IColorDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 123
    if-eqz p1, :cond_d

    .line 126
    iput-object p1, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 127
    return-void

    .line 124
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IColorDisplayManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 140
    if-nez p0, :cond_4

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 143
    :cond_4
    const-string v0, "android.hardware.display.IColorDisplayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 144
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/display/IColorDisplayManager;

    if-eqz v1, :cond_14

    .line 145
    move-object v1, v0

    check-cast v1, Landroid/hardware/display/IColorDisplayManager;

    return-object v1

    .line 147
    :cond_14
    new-instance v1, Landroid/hardware/display/IColorDisplayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/display/IColorDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 156
    packed-switch p0, :pswitch_data_50

    .line 260
    const/4 v0, 0x0

    return-object v0

    .line 256
    :pswitch_5
    const-string v0, "getReduceBrightColorsOffsetFactor"

    return-object v0

    .line 252
    :pswitch_8
    const-string v0, "setReduceBrightColorsStrength"

    return-object v0

    .line 248
    :pswitch_b
    const-string v0, "getReduceBrightColorsStrength"

    return-object v0

    .line 244
    :pswitch_e
    const-string v0, "setReduceBrightColorsActivated"

    return-object v0

    .line 240
    :pswitch_11
    const-string v0, "isReduceBrightColorsActivated"

    return-object v0

    .line 236
    :pswitch_14
    const-string v0, "setDisplayWhiteBalanceEnabled"

    return-object v0

    .line 232
    :pswitch_17
    const-string v0, "isDisplayWhiteBalanceEnabled"

    return-object v0

    .line 228
    :pswitch_1a
    const-string v0, "setColorMode"

    return-object v0

    .line 224
    :pswitch_1d
    const-string v0, "getColorMode"

    return-object v0

    .line 220
    :pswitch_20
    const-string v0, "setNightDisplayCustomEndTime"

    return-object v0

    .line 216
    :pswitch_23
    const-string v0, "getNightDisplayCustomEndTime"

    return-object v0

    .line 212
    :pswitch_26
    const-string v0, "setNightDisplayCustomStartTime"

    return-object v0

    .line 208
    :pswitch_29
    const-string v0, "getNightDisplayCustomStartTime"

    return-object v0

    .line 204
    :pswitch_2c
    const-string v0, "setNightDisplayAutoMode"

    return-object v0

    .line 200
    :pswitch_2f
    const-string v0, "getNightDisplayAutoModeRaw"

    return-object v0

    .line 196
    :pswitch_32
    const-string v0, "getNightDisplayAutoMode"

    return-object v0

    .line 192
    :pswitch_35
    const-string v0, "setNightDisplayColorTemperature"

    return-object v0

    .line 188
    :pswitch_38
    const-string v0, "getNightDisplayColorTemperature"

    return-object v0

    .line 184
    :pswitch_3b
    const-string v0, "setNightDisplayActivated"

    return-object v0

    .line 180
    :pswitch_3e
    const-string v0, "isNightDisplayActivated"

    return-object v0

    .line 176
    :pswitch_41
    const-string v0, "getTransformCapabilities"

    return-object v0

    .line 172
    :pswitch_44
    const-string v0, "isSaturationActivated"

    return-object v0

    .line 168
    :pswitch_47
    const-string v0, "setAppSaturationLevel"

    return-object v0

    .line 164
    :pswitch_4a
    const-string v0, "setSaturationLevel"

    return-object v0

    .line 160
    :pswitch_4d
    const-string v0, "isDeviceColorManaged"

    return-object v0

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
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

    .line 151
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 991
    const/16 v0, 0x18

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 267
    invoke-static {p1}, Landroid/hardware/display/IColorDisplayManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTransformCapabilities_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 966
    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 967
    return-void
.end method

.method protected isSaturationActivated_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 961
    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 962
    return-void
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

    .line 271
    const-string v0, "android.hardware.display.IColorDisplayManager"

    .line 272
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 273
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    :cond_d
    packed-switch p1, :pswitch_data_196

    .line 283
    packed-switch p1, :pswitch_data_19c

    .line 496
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 279
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    return v1

    .line 489
    :pswitch_1c
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getReduceBrightColorsOffsetFactor()F

    move-result v2

    .line 490
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 492
    goto/16 :goto_195

    .line 480
    .end local v2    # "_result":F
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 481
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setReduceBrightColorsStrength(I)Z

    move-result v3

    .line 483
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 485
    goto/16 :goto_195

    .line 472
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getReduceBrightColorsStrength()I

    move-result v2

    .line 473
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    goto/16 :goto_195

    .line 463
    .end local v2    # "_result":I
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 464
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setReduceBrightColorsActivated(Z)Z

    move-result v3

    .line 466
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 468
    goto/16 :goto_195

    .line 455
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_5a
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isReduceBrightColorsActivated()Z

    move-result v2

    .line 456
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 458
    goto/16 :goto_195

    .line 446
    .end local v2    # "_result":Z
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 447
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setDisplayWhiteBalanceEnabled(Z)Z

    move-result v3

    .line 449
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 451
    goto/16 :goto_195

    .line 438
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_79
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isDisplayWhiteBalanceEnabled()Z

    move-result v2

    .line 439
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 441
    goto/16 :goto_195

    .line 430
    .end local v2    # "_result":Z
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 431
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setColorMode(I)V

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    goto/16 :goto_195

    .line 422
    .end local v2    # "_arg0":I
    :pswitch_94
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getColorMode()I

    move-result v2

    .line 423
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    goto/16 :goto_195

    .line 413
    .end local v2    # "_result":I
    :pswitch_a0
    sget-object v2, Landroid/hardware/display/Time;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/Time;

    .line 414
    .local v2, "_arg0":Landroid/hardware/display/Time;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayCustomEndTime(Landroid/hardware/display/Time;)Z

    move-result v3

    .line 416
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 418
    goto/16 :goto_195

    .line 405
    .end local v2    # "_arg0":Landroid/hardware/display/Time;
    .end local v3    # "_result":Z
    :pswitch_b7
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayCustomEndTime()Landroid/hardware/display/Time;

    move-result-object v2

    .line 406
    .local v2, "_result":Landroid/hardware/display/Time;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 408
    goto/16 :goto_195

    .line 396
    .end local v2    # "_result":Landroid/hardware/display/Time;
    :pswitch_c3
    sget-object v2, Landroid/hardware/display/Time;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/Time;

    .line 397
    .local v2, "_arg0":Landroid/hardware/display/Time;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayCustomStartTime(Landroid/hardware/display/Time;)Z

    move-result v3

    .line 399
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 401
    goto/16 :goto_195

    .line 388
    .end local v2    # "_arg0":Landroid/hardware/display/Time;
    .end local v3    # "_result":Z
    :pswitch_da
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayCustomStartTime()Landroid/hardware/display/Time;

    move-result-object v2

    .line 389
    .local v2, "_result":Landroid/hardware/display/Time;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 391
    goto/16 :goto_195

    .line 379
    .end local v2    # "_result":Landroid/hardware/display/Time;
    :pswitch_e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 380
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayAutoMode(I)Z

    move-result v3

    .line 382
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 384
    goto/16 :goto_195

    .line 371
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_f9
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayAutoModeRaw()I

    move-result v2

    .line 372
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    goto/16 :goto_195

    .line 364
    .end local v2    # "_result":I
    :pswitch_105
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayAutoMode()I

    move-result v2

    .line 365
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    goto/16 :goto_195

    .line 355
    .end local v2    # "_result":I
    :pswitch_111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 356
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayColorTemperature(I)Z

    move-result v3

    .line 358
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 360
    goto/16 :goto_195

    .line 347
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_124
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayColorTemperature()I

    move-result v2

    .line 348
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    goto :goto_195

    .line 338
    .end local v2    # "_result":I
    :pswitch_12f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 339
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayActivated(Z)Z

    move-result v3

    .line 341
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 343
    goto :goto_195

    .line 330
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_141
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isNightDisplayActivated()Z

    move-result v2

    .line 331
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 333
    goto :goto_195

    .line 323
    .end local v2    # "_result":Z
    :pswitch_14c
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getTransformCapabilities()I

    move-result v2

    .line 324
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    goto :goto_195

    .line 316
    .end local v2    # "_result":I
    :pswitch_157
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isSaturationActivated()Z

    move-result v2

    .line 317
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 319
    goto :goto_195

    .line 305
    .end local v2    # "_result":Z
    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 308
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IColorDisplayManager$Stub;->setAppSaturationLevel(Ljava/lang/String;I)Z

    move-result v4

    .line 310
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 312
    goto :goto_195

    .line 295
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 296
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setSaturationLevel(I)Z

    move-result v3

    .line 298
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 300
    goto :goto_195

    .line 287
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_18a
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isDeviceColorManaged()Z

    move-result v2

    .line 288
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 290
    nop

    .line 499
    .end local v2    # "_result":Z
    :goto_195
    return v1

    :pswitch_data_196
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_19c
    .packed-switch 0x1
        :pswitch_18a
        :pswitch_178
        :pswitch_162
        :pswitch_157
        :pswitch_14c
        :pswitch_141
        :pswitch_12f
        :pswitch_124
        :pswitch_111
        :pswitch_105
        :pswitch_f9
        :pswitch_e6
        :pswitch_da
        :pswitch_c3
        :pswitch_b7
        :pswitch_a0
        :pswitch_94
        :pswitch_85
        :pswitch_79
        :pswitch_66
        :pswitch_5a
        :pswitch_47
        :pswitch_3b
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method

.method protected setAppSaturationLevel_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 956
    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 957
    return-void
.end method
