.class public abstract Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;
.super Landroid/os/Binder;
.source "ISemMdnieManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/display/ISemMdnieManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/ISemMdnieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_afpcDataApply:I = 0x1e

.field static final TRANSACTION_afpcDataOff:I = 0x1f

.field static final TRANSACTION_afpcDataVerify:I = 0x1c

.field static final TRANSACTION_afpcDataWrite:I = 0x1d

.field static final TRANSACTION_afpcWorkOff:I = 0x20

.field static final TRANSACTION_disableNightMode:I = 0xd

.field static final TRANSACTION_enableNightMode:I = 0xc

.field static final TRANSACTION_getContentMode:I = 0x2

.field static final TRANSACTION_getNightModeBlock:I = 0xf

.field static final TRANSACTION_getNightModeStep:I = 0x11

.field static final TRANSACTION_getScreenMode:I = 0x1

.field static final TRANSACTION_getSupportedContentMode:I = 0x6

.field static final TRANSACTION_getSupportedScreenMode:I = 0x4

.field static final TRANSACTION_isContentModeSupported:I = 0x5

.field static final TRANSACTION_isNightModeSupported:I = 0xb

.field static final TRANSACTION_isScreenModeSupported:I = 0x3

.field static final TRANSACTION_setAmoledACL:I = 0x9

.field static final TRANSACTION_setColorFadeNightDim:I = 0x13

.field static final TRANSACTION_setColorVision:I = 0x14

.field static final TRANSACTION_setContentMode:I = 0x8

.field static final TRANSACTION_setLightNotificationMode:I = 0x1a

.field static final TRANSACTION_setNightMode:I = 0x12

.field static final TRANSACTION_setNightModeBlock:I = 0xe

.field static final TRANSACTION_setNightModeStep:I = 0x10

.field static final TRANSACTION_setScreenMode:I = 0x7

.field static final TRANSACTION_setWhiteRGB:I = 0xa

.field static final TRANSACTION_setmDNIeAccessibilityMode:I = 0x19

.field static final TRANSACTION_setmDNIeColorBlind:I = 0x15

.field static final TRANSACTION_setmDNIeEmergencyMode:I = 0x18

.field static final TRANSACTION_setmDNIeNegative:I = 0x16

.field static final TRANSACTION_setmDNIeScreenCurtain:I = 0x17

.field static final TRANSACTION_updateAlwaysOnDisplay:I = 0x1b


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 148
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 149
    const-string v0, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/display/ISemMdnieManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 157
    if-nez p0, :cond_4

    .line 158
    const/4 v0, 0x0

    return-object v0

    .line 160
    :cond_4
    const-string v0, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 161
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-eqz v1, :cond_14

    .line 162
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/hardware/display/ISemMdnieManager;

    return-object v1

    .line 164
    :cond_14
    new-instance v1, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 173
    packed-switch p0, :pswitch_data_7e

    .line 305
    const/4 v0, 0x0

    return-object v0

    .line 301
    :pswitch_5
    const-string v0, "afpcWorkOff"

    return-object v0

    .line 297
    :pswitch_8
    const-string v0, "afpcDataOff"

    return-object v0

    .line 293
    :pswitch_b
    const-string v0, "afpcDataApply"

    return-object v0

    .line 289
    :pswitch_e
    const-string v0, "afpcDataWrite"

    return-object v0

    .line 285
    :pswitch_11
    const-string v0, "afpcDataVerify"

    return-object v0

    .line 281
    :pswitch_14
    const-string/jumbo v0, "updateAlwaysOnDisplay"

    return-object v0

    .line 277
    :pswitch_18
    const-string/jumbo v0, "setLightNotificationMode"

    return-object v0

    .line 273
    :pswitch_1c
    const-string/jumbo v0, "setmDNIeAccessibilityMode"

    return-object v0

    .line 269
    :pswitch_20
    const-string/jumbo v0, "setmDNIeEmergencyMode"

    return-object v0

    .line 265
    :pswitch_24
    const-string/jumbo v0, "setmDNIeScreenCurtain"

    return-object v0

    .line 261
    :pswitch_28
    const-string/jumbo v0, "setmDNIeNegative"

    return-object v0

    .line 257
    :pswitch_2c
    const-string/jumbo v0, "setmDNIeColorBlind"

    return-object v0

    .line 253
    :pswitch_30
    const-string/jumbo v0, "setColorVision"

    return-object v0

    .line 249
    :pswitch_34
    const-string/jumbo v0, "setColorFadeNightDim"

    return-object v0

    .line 245
    :pswitch_38
    const-string/jumbo v0, "setNightMode"

    return-object v0

    .line 241
    :pswitch_3c
    const-string/jumbo v0, "getNightModeStep"

    return-object v0

    .line 237
    :pswitch_40
    const-string/jumbo v0, "setNightModeStep"

    return-object v0

    .line 233
    :pswitch_44
    const-string/jumbo v0, "getNightModeBlock"

    return-object v0

    .line 229
    :pswitch_48
    const-string/jumbo v0, "setNightModeBlock"

    return-object v0

    .line 225
    :pswitch_4c
    const-string v0, "disableNightMode"

    return-object v0

    .line 221
    :pswitch_4f
    const-string v0, "enableNightMode"

    return-object v0

    .line 217
    :pswitch_52
    const-string/jumbo v0, "isNightModeSupported"

    return-object v0

    .line 213
    :pswitch_56
    const-string/jumbo v0, "setWhiteRGB"

    return-object v0

    .line 209
    :pswitch_5a
    const-string/jumbo v0, "setAmoledACL"

    return-object v0

    .line 205
    :pswitch_5e
    const-string/jumbo v0, "setContentMode"

    return-object v0

    .line 201
    :pswitch_62
    const-string/jumbo v0, "setScreenMode"

    return-object v0

    .line 197
    :pswitch_66
    const-string/jumbo v0, "getSupportedContentMode"

    return-object v0

    .line 193
    :pswitch_6a
    const-string/jumbo v0, "isContentModeSupported"

    return-object v0

    .line 189
    :pswitch_6e
    const-string/jumbo v0, "getSupportedScreenMode"

    return-object v0

    .line 185
    :pswitch_72
    const-string/jumbo v0, "isScreenModeSupported"

    return-object v0

    .line 181
    :pswitch_76
    const-string/jumbo v0, "getContentMode"

    return-object v0

    .line 177
    :pswitch_7a
    const-string/jumbo v0, "getScreenMode"

    return-object v0

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
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

    .line 168
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 1244
    const/16 v0, 0x1f

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 312
    invoke-static {p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 316
    const-string v0, "com.samsung.android.hardware.display.ISemMdnieManager"

    .line 317
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 318
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    :cond_d
    packed-switch p1, :pswitch_data_228

    .line 328
    packed-switch p1, :pswitch_data_22e

    .line 622
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 324
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    return v1

    .line 615
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->afpcWorkOff()Z

    move-result v2

    .line 616
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 618
    goto/16 :goto_226

    .line 608
    .end local v2    # "_result":Z
    :pswitch_28
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->afpcDataOff()Z

    move-result v2

    .line 609
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 611
    goto/16 :goto_226

    .line 601
    .end local v2    # "_result":Z
    :pswitch_34
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->afpcDataApply()Z

    move-result v2

    .line 602
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 604
    goto/16 :goto_226

    .line 594
    .end local v2    # "_result":Z
    :pswitch_40
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->afpcDataWrite()Z

    move-result v2

    .line 595
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 597
    goto/16 :goto_226

    .line 587
    .end local v2    # "_result":Z
    :pswitch_4c
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->afpcDataVerify()Z

    move-result v2

    .line 588
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 590
    goto/16 :goto_226

    .line 577
    .end local v2    # "_result":Z
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 579
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 580
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 581
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->updateAlwaysOnDisplay(ZI)V

    .line 582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    goto/16 :goto_226

    .line 567
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 568
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setLightNotificationMode(Z)Z

    move-result v3

    .line 570
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 572
    goto/16 :goto_226

    .line 555
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 557
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 558
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeAccessibilityMode(IZ)Z

    move-result v4

    .line 560
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 562
    goto/16 :goto_226

    .line 545
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 546
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 547
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeEmergencyMode(Z)Z

    move-result v3

    .line 548
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 550
    goto/16 :goto_226

    .line 535
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 536
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeScreenCurtain(Z)Z

    move-result v3

    .line 538
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 540
    goto/16 :goto_226

    .line 525
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 526
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeNegative(Z)Z

    move-result v3

    .line 528
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 530
    goto/16 :goto_226

    .line 513
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 515
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 516
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 517
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeColorBlind(Z[I)Z

    move-result v4

    .line 518
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 520
    goto/16 :goto_226

    .line 499
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":Z
    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 501
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 503
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 504
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setColorVision(ZII)Z

    move-result v5

    .line 506
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 508
    goto/16 :goto_226

    .line 489
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 490
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setColorFadeNightDim(Z)Z

    move-result v3

    .line 492
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 494
    goto/16 :goto_226

    .line 477
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 479
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 480
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setNightMode(ZI)Z

    move-result v4

    .line 482
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 484
    goto/16 :goto_226

    .line 469
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_12a
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getNightModeStep()I

    move-result v2

    .line 470
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    goto/16 :goto_226

    .line 460
    .end local v2    # "_result":I
    :pswitch_136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 461
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setNightModeStep(I)Z

    move-result v3

    .line 463
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 465
    goto/16 :goto_226

    .line 452
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_149
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getNightModeBlock()Z

    move-result v2

    .line 453
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 455
    goto/16 :goto_226

    .line 443
    .end local v2    # "_result":Z
    :pswitch_155
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 444
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setNightModeBlock(Z)Z

    move-result v3

    .line 446
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 448
    goto/16 :goto_226

    .line 435
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_168
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->disableNightMode()Z

    move-result v2

    .line 436
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 438
    goto/16 :goto_226

    .line 426
    .end local v2    # "_result":Z
    :pswitch_174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 427
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->enableNightMode(I)Z

    move-result v3

    .line 429
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 431
    goto/16 :goto_226

    .line 418
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_187
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->isNightModeSupported()Z

    move-result v2

    .line 419
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 421
    goto/16 :goto_226

    .line 405
    .end local v2    # "_result":Z
    :pswitch_193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 407
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 409
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 410
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setWhiteRGB(III)Z

    move-result v5

    .line 412
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 414
    goto/16 :goto_226

    .line 395
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_1ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 396
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setAmoledACL(I)Z

    move-result v3

    .line 398
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 400
    goto :goto_226

    .line 385
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 386
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setContentMode(I)Z

    move-result v3

    .line 388
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 390
    goto :goto_226

    .line 375
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 376
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setScreenMode(I)Z

    move-result v3

    .line 378
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 380
    goto :goto_226

    .line 367
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1e4
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getSupportedContentMode()[I

    move-result-object v2

    .line 368
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 370
    goto :goto_226

    .line 360
    .end local v2    # "_result":[I
    :pswitch_1ef
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->isContentModeSupported()Z

    move-result v2

    .line 361
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 363
    goto :goto_226

    .line 353
    .end local v2    # "_result":Z
    :pswitch_1fa
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getSupportedScreenMode()[I

    move-result-object v2

    .line 354
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 356
    goto :goto_226

    .line 346
    .end local v2    # "_result":[I
    :pswitch_205
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->isScreenModeSupported()Z

    move-result v2

    .line 347
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 349
    goto :goto_226

    .line 339
    .end local v2    # "_result":Z
    :pswitch_210
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getContentMode()I

    move-result v2

    .line 340
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    goto :goto_226

    .line 332
    .end local v2    # "_result":I
    :pswitch_21b
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getScreenMode()I

    move-result v2

    .line 333
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    nop

    .line 625
    .end local v2    # "_result":I
    :goto_226
    return v1

    nop

    :pswitch_data_228
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_22e
    .packed-switch 0x1
        :pswitch_21b
        :pswitch_210
        :pswitch_205
        :pswitch_1fa
        :pswitch_1ef
        :pswitch_1e4
        :pswitch_1d2
        :pswitch_1c0
        :pswitch_1ae
        :pswitch_193
        :pswitch_187
        :pswitch_174
        :pswitch_168
        :pswitch_155
        :pswitch_149
        :pswitch_136
        :pswitch_12a
        :pswitch_113
        :pswitch_100
        :pswitch_e5
        :pswitch_ce
        :pswitch_bb
        :pswitch_a8
        :pswitch_95
        :pswitch_7e
        :pswitch_6b
        :pswitch_58
        :pswitch_4c
        :pswitch_40
        :pswitch_34
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
