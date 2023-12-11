.class public abstract Landroid/app/IUiModeManager$Stub;
.super Landroid/os/Binder;
.source "IUiModeManager.java"

# interfaces
.implements Landroid/app/IUiModeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUiModeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.IUiModeManager"

.field static final TRANSACTION_addCallback:I = 0x1

.field static final TRANSACTION_addNightPriorityAllowedPackageFromShell:I = 0x10

.field static final TRANSACTION_addOnProjectionStateChangedListener:I = 0x1c

.field static final TRANSACTION_disableCarMode:I = 0x4

.field static final TRANSACTION_disableCarModeByCallingPackage:I = 0x5

.field static final TRANSACTION_enableCarMode:I = 0x3

.field static final TRANSACTION_getActiveProjectionTypes:I = 0x1f

.field static final TRANSACTION_getContrast:I = 0x20

.field static final TRANSACTION_getCurrentModeType:I = 0x6

.field static final TRANSACTION_getCustomNightModeEnd:I = 0x18

.field static final TRANSACTION_getCustomNightModeStart:I = 0x16

.field static final TRANSACTION_getNightMode:I = 0x8

.field static final TRANSACTION_getNightModeCustomType:I = 0xa

.field static final TRANSACTION_getNightPriorityAllowedPackagesFromScpm:I = 0xf

.field static final TRANSACTION_getPackageNightMode:I = 0xd

.field static final TRANSACTION_getProjectingPackages:I = 0x1e

.field static final TRANSACTION_isNightModeLocked:I = 0x13

.field static final TRANSACTION_isUiModeLocked:I = 0x12

.field static final TRANSACTION_releaseProjection:I = 0x1b

.field static final TRANSACTION_removeCallback:I = 0x2

.field static final TRANSACTION_removeOnProjectionStateChangedListener:I = 0x1d

.field static final TRANSACTION_requestProjection:I = 0x1a

.field static final TRANSACTION_resetNightPriorityAppliedPackages:I = 0x11

.field static final TRANSACTION_setApplicationNightMode:I = 0xb

.field static final TRANSACTION_setCustomNightModeEnd:I = 0x19

.field static final TRANSACTION_setCustomNightModeStart:I = 0x17

.field static final TRANSACTION_setDesktopMode:I = 0x21

.field static final TRANSACTION_setNightMode:I = 0x7

.field static final TRANSACTION_setNightModeActivated:I = 0x15

.field static final TRANSACTION_setNightModeActivatedForCustomMode:I = 0x14

.field static final TRANSACTION_setNightModeCustomType:I = 0x9

.field static final TRANSACTION_setNightPriorityAllowedPackagesFromScpm:I = 0xe

.field static final TRANSACTION_setPackageNightMode:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 221
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 222
    const-string v0, "android.app.IUiModeManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUiModeManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 230
    if-nez p0, :cond_4

    .line 231
    const/4 v0, 0x0

    return-object v0

    .line 233
    :cond_4
    const-string v0, "android.app.IUiModeManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 234
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IUiModeManager;

    if-eqz v1, :cond_14

    .line 235
    move-object v1, v0

    check-cast v1, Landroid/app/IUiModeManager;

    return-object v1

    .line 237
    :cond_14
    new-instance v1, Landroid/app/IUiModeManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IUiModeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 246
    packed-switch p0, :pswitch_data_7a

    .line 382
    const/4 v0, 0x0

    return-object v0

    .line 378
    :pswitch_5
    const-string/jumbo v0, "setDesktopMode"

    return-object v0

    .line 374
    :pswitch_9
    const-string v0, "getContrast"

    return-object v0

    .line 370
    :pswitch_c
    const-string v0, "getActiveProjectionTypes"

    return-object v0

    .line 366
    :pswitch_f
    const-string v0, "getProjectingPackages"

    return-object v0

    .line 362
    :pswitch_12
    const-string/jumbo v0, "removeOnProjectionStateChangedListener"

    return-object v0

    .line 358
    :pswitch_16
    const-string v0, "addOnProjectionStateChangedListener"

    return-object v0

    .line 354
    :pswitch_19
    const-string/jumbo v0, "releaseProjection"

    return-object v0

    .line 350
    :pswitch_1d
    const-string/jumbo v0, "requestProjection"

    return-object v0

    .line 346
    :pswitch_21
    const-string/jumbo v0, "setCustomNightModeEnd"

    return-object v0

    .line 342
    :pswitch_25
    const-string v0, "getCustomNightModeEnd"

    return-object v0

    .line 338
    :pswitch_28
    const-string/jumbo v0, "setCustomNightModeStart"

    return-object v0

    .line 334
    :pswitch_2c
    const-string v0, "getCustomNightModeStart"

    return-object v0

    .line 330
    :pswitch_2f
    const-string/jumbo v0, "setNightModeActivated"

    return-object v0

    .line 326
    :pswitch_33
    const-string/jumbo v0, "setNightModeActivatedForCustomMode"

    return-object v0

    .line 322
    :pswitch_37
    const-string/jumbo v0, "isNightModeLocked"

    return-object v0

    .line 318
    :pswitch_3b
    const-string/jumbo v0, "isUiModeLocked"

    return-object v0

    .line 314
    :pswitch_3f
    const-string/jumbo v0, "resetNightPriorityAppliedPackages"

    return-object v0

    .line 310
    :pswitch_43
    const-string v0, "addNightPriorityAllowedPackageFromShell"

    return-object v0

    .line 306
    :pswitch_46
    const-string v0, "getNightPriorityAllowedPackagesFromScpm"

    return-object v0

    .line 302
    :pswitch_49
    const-string/jumbo v0, "setNightPriorityAllowedPackagesFromScpm"

    return-object v0

    .line 298
    :pswitch_4d
    const-string v0, "getPackageNightMode"

    return-object v0

    .line 294
    :pswitch_50
    const-string/jumbo v0, "setPackageNightMode"

    return-object v0

    .line 290
    :pswitch_54
    const-string/jumbo v0, "setApplicationNightMode"

    return-object v0

    .line 286
    :pswitch_58
    const-string v0, "getNightModeCustomType"

    return-object v0

    .line 282
    :pswitch_5b
    const-string/jumbo v0, "setNightModeCustomType"

    return-object v0

    .line 278
    :pswitch_5f
    const-string v0, "getNightMode"

    return-object v0

    .line 274
    :pswitch_62
    const-string/jumbo v0, "setNightMode"

    return-object v0

    .line 270
    :pswitch_66
    const-string v0, "getCurrentModeType"

    return-object v0

    .line 266
    :pswitch_69
    const-string v0, "disableCarModeByCallingPackage"

    return-object v0

    .line 262
    :pswitch_6c
    const-string v0, "disableCarMode"

    return-object v0

    .line 258
    :pswitch_6f
    const-string v0, "enableCarMode"

    return-object v0

    .line 254
    :pswitch_72
    const-string/jumbo v0, "removeCallback"

    return-object v0

    .line 250
    :pswitch_76
    const-string v0, "addCallback"

    return-object v0

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_76
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_62
        :pswitch_5f
        :pswitch_5b
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4d
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2c
        :pswitch_28
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 241
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 1398
    const/16 v0, 0x20

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 389
    invoke-static {p1}, Landroid/app/IUiModeManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 393
    const-string v0, "android.app.IUiModeManager"

    .line 394
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 395
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    :cond_d
    packed-switch p1, :pswitch_data_23c

    .line 405
    packed-switch p1, :pswitch_data_242

    .line 714
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 401
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 402
    return v1

    .line 706
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 707
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 708
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setDesktopMode(Z)V

    .line 709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    goto/16 :goto_23a

    .line 698
    .end local v2    # "_arg0":Z
    :pswitch_2b
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getContrast()F

    move-result v2

    .line 699
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 701
    goto/16 :goto_23a

    .line 691
    .end local v2    # "_result":F
    :pswitch_37
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getActiveProjectionTypes()I

    move-result v2

    .line 692
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    goto/16 :goto_23a

    .line 682
    .end local v2    # "_result":I
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 683
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->getProjectingPackages(I)Ljava/util/List;

    move-result-object v3

    .line 685
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 687
    goto/16 :goto_23a

    .line 673
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IOnProjectionStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOnProjectionStateChangedListener;

    move-result-object v2

    .line 674
    .local v2, "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V

    .line 676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    goto/16 :goto_23a

    .line 662
    .end local v2    # "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IOnProjectionStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOnProjectionStateChangedListener;

    move-result-object v2

    .line 664
    .restart local v2    # "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 665
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V

    .line 667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    goto/16 :goto_23a

    .line 650
    .end local v2    # "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    .end local v3    # "_arg1":I
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 652
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 653
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 654
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->releaseProjection(ILjava/lang/String;)Z

    move-result v4

    .line 655
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 657
    goto/16 :goto_23a

    .line 636
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 638
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 640
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 641
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiModeManager$Stub;->requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v5

    .line 643
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 645
    goto/16 :goto_23a

    .line 627
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 628
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setCustomNightModeEnd(J)V

    .line 630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    goto/16 :goto_23a

    .line 619
    .end local v2    # "_arg0":J
    :pswitch_c1
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCustomNightModeEnd()J

    move-result-wide v2

    .line 620
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 622
    goto/16 :goto_23a

    .line 611
    .end local v2    # "_result":J
    :pswitch_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 612
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 613
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setCustomNightModeStart(J)V

    .line 614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    goto/16 :goto_23a

    .line 603
    .end local v2    # "_arg0":J
    :pswitch_dc
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCustomNightModeStart()J

    move-result-wide v2

    .line 604
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 606
    goto/16 :goto_23a

    .line 594
    .end local v2    # "_result":J
    :pswitch_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 595
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightModeActivated(Z)Z

    move-result v3

    .line 597
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 599
    goto/16 :goto_23a

    .line 582
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 584
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 585
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setNightModeActivatedForCustomMode(IZ)Z

    move-result v4

    .line 587
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 589
    goto/16 :goto_23a

    .line 574
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_112
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->isNightModeLocked()Z

    move-result v2

    .line 575
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 577
    goto/16 :goto_23a

    .line 567
    .end local v2    # "_result":Z
    :pswitch_11e
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->isUiModeLocked()Z

    move-result v2

    .line 568
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 570
    goto/16 :goto_23a

    .line 559
    .end local v2    # "_result":Z
    :pswitch_12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 560
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->resetNightPriorityAppliedPackages(I)V

    .line 562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    goto/16 :goto_23a

    .line 550
    .end local v2    # "_arg0":I
    :pswitch_139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->addNightPriorityAllowedPackageFromShell(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    goto/16 :goto_23a

    .line 542
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_148
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightPriorityAllowedPackagesFromScpm()Ljava/util/List;

    move-result-object v2

    .line 543
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 545
    goto/16 :goto_23a

    .line 534
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_154
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 535
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightPriorityAllowedPackagesFromScpm(Ljava/util/List;)V

    .line 537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    goto/16 :goto_23a

    .line 522
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 525
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->getPackageNightMode(Ljava/lang/String;I)I

    move-result v4

    .line 527
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    goto/16 :goto_23a

    .line 509
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_17a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 511
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 513
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 514
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 515
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiModeManager$Stub;->setPackageNightMode(Ljava/lang/String;II)V

    .line 516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    goto/16 :goto_23a

    .line 500
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 501
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setApplicationNightMode(I)V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    goto/16 :goto_23a

    .line 492
    .end local v2    # "_arg0":I
    :pswitch_1a0
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightModeCustomType()I

    move-result v2

    .line 493
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    goto/16 :goto_23a

    .line 484
    .end local v2    # "_result":I
    :pswitch_1ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 485
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightModeCustomType(I)V

    .line 487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    goto/16 :goto_23a

    .line 476
    .end local v2    # "_arg0":I
    :pswitch_1bb
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightMode()I

    move-result v2

    .line 477
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    goto/16 :goto_23a

    .line 468
    .end local v2    # "_result":I
    :pswitch_1c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 469
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightMode(I)V

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    goto :goto_23a

    .line 460
    .end local v2    # "_arg0":I
    :pswitch_1d5
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCurrentModeType()I

    move-result v2

    .line 461
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    goto :goto_23a

    .line 450
    .end local v2    # "_result":I
    :pswitch_1e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 452
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->disableCarModeByCallingPackage(ILjava/lang/String;)V

    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    goto :goto_23a

    .line 441
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 442
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->disableCarMode(I)V

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    goto :goto_23a

    .line 428
    .end local v2    # "_arg0":I
    :pswitch_200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 430
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 432
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 433
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiModeManager$Stub;->enableCarMode(IILjava/lang/String;)V

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    goto :goto_23a

    .line 419
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_216
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IUiModeManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManagerCallback;

    move-result-object v2

    .line 420
    .local v2, "_arg0":Landroid/app/IUiModeManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->removeCallback(Landroid/app/IUiModeManagerCallback;)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    goto :goto_23a

    .line 410
    .end local v2    # "_arg0":Landroid/app/IUiModeManagerCallback;
    :pswitch_228
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IUiModeManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManagerCallback;

    move-result-object v2

    .line 411
    .restart local v2    # "_arg0":Landroid/app/IUiModeManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->addCallback(Landroid/app/IUiModeManagerCallback;)V

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    nop

    .line 717
    .end local v2    # "_arg0":Landroid/app/IUiModeManagerCallback;
    :goto_23a
    return v1

    nop

    :pswitch_data_23c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_242
    .packed-switch 0x1
        :pswitch_228
        :pswitch_216
        :pswitch_200
        :pswitch_1f2
        :pswitch_1e0
        :pswitch_1d5
        :pswitch_1c7
        :pswitch_1bb
        :pswitch_1ac
        :pswitch_1a0
        :pswitch_191
        :pswitch_17a
        :pswitch_163
        :pswitch_154
        :pswitch_148
        :pswitch_139
        :pswitch_12a
        :pswitch_11e
        :pswitch_112
        :pswitch_fb
        :pswitch_e8
        :pswitch_dc
        :pswitch_cd
        :pswitch_c1
        :pswitch_b2
        :pswitch_97
        :pswitch_80
        :pswitch_69
        :pswitch_56
        :pswitch_43
        :pswitch_37
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
