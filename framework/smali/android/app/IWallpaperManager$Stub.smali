.class public abstract Landroid/app/IWallpaperManager$Stub;
.super Landroid/os/Binder;
.source "IWallpaperManager.java"

# interfaces
.implements Landroid/app/IWallpaperManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.IWallpaperManager"

.field static final TRANSACTION_addOnLocalColorsChangedListener:I = 0x1b

.field static final TRANSACTION_clearWallpaper:I = 0xb

.field static final TRANSACTION_copyFileToWallpaperFile:I = 0x49

.field static final TRANSACTION_copyPreloadedFileToWallpaperFile:I = 0x4a

.field static final TRANSACTION_forceRebindWallpaper:I = 0x5d

.field static final TRANSACTION_getAnimatedPkgName:I = 0x43

.field static final TRANSACTION_getDesktopMode:I = 0x28

.field static final TRANSACTION_getDeviceColor:I = 0x44

.field static final TRANSACTION_getDisplayId:I = 0x58

.field static final TRANSACTION_getHeightHint:I = 0xf

.field static final TRANSACTION_getHighlightFilterState:I = 0x4c

.field static final TRANSACTION_getLastCallingPackage:I = 0x46

.field static final TRANSACTION_getLegacyDeviceColor:I = 0x45

.field static final TRANSACTION_getLidState:I = 0x57

.field static final TRANSACTION_getLockWallpaper:I = 0x6

.field static final TRANSACTION_getLockWallpaperType:I = 0x2b

.field static final TRANSACTION_getMotionWallpaperPkgName:I = 0x37

.field static final TRANSACTION_getName:I = 0x11

.field static final TRANSACTION_getSnapshotCount:I = 0x40

.field static final TRANSACTION_getVideoFileName:I = 0x35

.field static final TRANSACTION_getVideoFilePath:I = 0x33

.field static final TRANSACTION_getVideoPackage:I = 0x34

.field static final TRANSACTION_getWallpaper:I = 0x4

.field static final TRANSACTION_getWallpaperColors:I = 0x19

.field static final TRANSACTION_getWallpaperComponentExtras:I = 0x4d

.field static final TRANSACTION_getWallpaperDimAmount:I = 0x22

.field static final TRANSACTION_getWallpaperExtras:I = 0x4e

.field static final TRANSACTION_getWallpaperIdForUser:I = 0x7

.field static final TRANSACTION_getWallpaperInfo:I = 0x8

.field static final TRANSACTION_getWallpaperInfoFile:I = 0xa

.field static final TRANSACTION_getWallpaperInfoWithFlags:I = 0x9

.field static final TRANSACTION_getWallpaperOrientation:I = 0x4f

.field static final TRANSACTION_getWallpaperThumbnailFileDescriptor:I = 0x32

.field static final TRANSACTION_getWallpaperWithFeature:I = 0x5

.field static final TRANSACTION_getWidthHint:I = 0xe

.field static final TRANSACTION_hasNamedWallpaper:I = 0xc

.field static final TRANSACTION_hasVideoWallpaper:I = 0x31

.field static final TRANSACTION_isDefaultWallpaperState:I = 0x2e

.field static final TRANSACTION_isDesktopMode:I = 0x27

.field static final TRANSACTION_isDesktopModeEnabled:I = 0x29

.field static final TRANSACTION_isDesktopStandAloneMode:I = 0x2a

.field static final TRANSACTION_isLockscreenLiveWallpaperEnabled:I = 0x25

.field static final TRANSACTION_isMultiCropEnabled:I = 0x26

.field static final TRANSACTION_isSetWallpaperAllowed:I = 0x14

.field static final TRANSACTION_isSnapshotTestMode:I = 0x3e

.field static final TRANSACTION_isStaticWallpaper:I = 0x24

.field static final TRANSACTION_isSystemAndLockPaired:I = 0x4b

.field static final TRANSACTION_isValidSnapshot:I = 0x42

.field static final TRANSACTION_isVideoWallpaper:I = 0x30

.field static final TRANSACTION_isVirtualWallpaperDisplay:I = 0x59

.field static final TRANSACTION_isWaitingForUnlockUser:I = 0x5a

.field static final TRANSACTION_isWallpaperBackupAllowed:I = 0x16

.field static final TRANSACTION_isWallpaperBackupEligible:I = 0x15

.field static final TRANSACTION_isWallpaperDataExists:I = 0x5f

.field static final TRANSACTION_isWallpaperSupported:I = 0x13

.field static final TRANSACTION_lockScreenWallpaperExists:I = 0x23

.field static final TRANSACTION_makeSnapshot:I = 0x3c

.field static final TRANSACTION_notifyGoingToSleep:I = 0x20

.field static final TRANSACTION_notifyPid:I = 0x5e

.field static final TRANSACTION_notifyWakingUp:I = 0x1f

.field static final TRANSACTION_registerWallpaperColorsCallback:I = 0x1c

.field static final TRANSACTION_removeOnLocalColorsChangedListener:I = 0x1a

.field static final TRANSACTION_removeSnapshotByKey:I = 0x3a

.field static final TRANSACTION_removeSnapshotBySource:I = 0x3b

.field static final TRANSACTION_removeSnapshotByWhich:I = 0x39

.field static final TRANSACTION_restoreSnapshot:I = 0x3d

.field static final TRANSACTION_semGetPrimaryWallpaperColors:I = 0x52

.field static final TRANSACTION_semGetSmartCropRect:I = 0x56

.field static final TRANSACTION_semGetUri:I = 0x5c

.field static final TRANSACTION_semGetWallpaperColors:I = 0x51

.field static final TRANSACTION_semGetWallpaperCropHint:I = 0x2d

.field static final TRANSACTION_semGetWallpaperType:I = 0x2c

.field static final TRANSACTION_semRequestWallpaperColorsAnalysis:I = 0x53

.field static final TRANSACTION_semSendWallpaperCommand:I = 0x50

.field static final TRANSACTION_semSetDLSWallpaperColors:I = 0x54

.field static final TRANSACTION_semSetSmartCropRect:I = 0x55

.field static final TRANSACTION_semSetUri:I = 0x5b

.field static final TRANSACTION_setAnimatedWallpaper:I = 0x38

.field static final TRANSACTION_setCoverWallpaperCallback:I = 0x18

.field static final TRANSACTION_setDimensionHints:I = 0xd

.field static final TRANSACTION_setDisplayPadding:I = 0x10

.field static final TRANSACTION_setInAmbientMode:I = 0x1e

.field static final TRANSACTION_setKWPTypeLiveWallpaper:I = 0x47

.field static final TRANSACTION_setKWPTypeLiveWallpaperWithMode:I = 0x48

.field static final TRANSACTION_setLockWallpaperCallback:I = 0x17

.field static final TRANSACTION_setMotionWallpaper:I = 0x36

.field static final TRANSACTION_setSnapshotSource:I = 0x41

.field static final TRANSACTION_setSnapshotTestMode:I = 0x3f

.field static final TRANSACTION_setVideoWallpaper:I = 0x2f

.field static final TRANSACTION_setWallpaper:I = 0x1

.field static final TRANSACTION_setWallpaperComponent:I = 0x3

.field static final TRANSACTION_setWallpaperComponentChecked:I = 0x2

.field static final TRANSACTION_setWallpaperDimAmount:I = 0x21

.field static final TRANSACTION_settingsRestored:I = 0x12

.field static final TRANSACTION_unregisterWallpaperColorsCallback:I = 0x1d


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 536
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 537
    const-string v0, "android.app.IWallpaperManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IWallpaperManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 545
    if-nez p0, :cond_4

    .line 546
    const/4 v0, 0x0

    return-object v0

    .line 548
    :cond_4
    const-string v0, "android.app.IWallpaperManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 549
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_14

    .line 550
    move-object v1, v0

    check-cast v1, Landroid/app/IWallpaperManager;

    return-object v1

    .line 552
    :cond_14
    new-instance v1, Landroid/app/IWallpaperManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IWallpaperManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 561
    packed-switch p0, :pswitch_data_15c

    .line 945
    const/4 v0, 0x0

    return-object v0

    .line 941
    :pswitch_5
    const-string/jumbo v0, "isWallpaperDataExists"

    return-object v0

    .line 937
    :pswitch_9
    const-string/jumbo v0, "notifyPid"

    return-object v0

    .line 933
    :pswitch_d
    const-string v0, "forceRebindWallpaper"

    return-object v0

    .line 929
    :pswitch_10
    const-string/jumbo v0, "semGetUri"

    return-object v0

    .line 925
    :pswitch_14
    const-string/jumbo v0, "semSetUri"

    return-object v0

    .line 921
    :pswitch_18
    const-string/jumbo v0, "isWaitingForUnlockUser"

    return-object v0

    .line 917
    :pswitch_1c
    const-string/jumbo v0, "isVirtualWallpaperDisplay"

    return-object v0

    .line 913
    :pswitch_20
    const-string v0, "getDisplayId"

    return-object v0

    .line 909
    :pswitch_23
    const-string v0, "getLidState"

    return-object v0

    .line 905
    :pswitch_26
    const-string/jumbo v0, "semGetSmartCropRect"

    return-object v0

    .line 901
    :pswitch_2a
    const-string/jumbo v0, "semSetSmartCropRect"

    return-object v0

    .line 897
    :pswitch_2e
    const-string/jumbo v0, "semSetDLSWallpaperColors"

    return-object v0

    .line 893
    :pswitch_32
    const-string/jumbo v0, "semRequestWallpaperColorsAnalysis"

    return-object v0

    .line 889
    :pswitch_36
    const-string/jumbo v0, "semGetPrimaryWallpaperColors"

    return-object v0

    .line 885
    :pswitch_3a
    const-string/jumbo v0, "semGetWallpaperColors"

    return-object v0

    .line 881
    :pswitch_3e
    const-string/jumbo v0, "semSendWallpaperCommand"

    return-object v0

    .line 877
    :pswitch_42
    const-string v0, "getWallpaperOrientation"

    return-object v0

    .line 873
    :pswitch_45
    const-string v0, "getWallpaperExtras"

    return-object v0

    .line 869
    :pswitch_48
    const-string v0, "getWallpaperComponentExtras"

    return-object v0

    .line 865
    :pswitch_4b
    const-string v0, "getHighlightFilterState"

    return-object v0

    .line 861
    :pswitch_4e
    const-string/jumbo v0, "isSystemAndLockPaired"

    return-object v0

    .line 857
    :pswitch_52
    const-string v0, "copyPreloadedFileToWallpaperFile"

    return-object v0

    .line 853
    :pswitch_55
    const-string v0, "copyFileToWallpaperFile"

    return-object v0

    .line 849
    :pswitch_58
    const-string/jumbo v0, "setKWPTypeLiveWallpaperWithMode"

    return-object v0

    .line 845
    :pswitch_5c
    const-string/jumbo v0, "setKWPTypeLiveWallpaper"

    return-object v0

    .line 841
    :pswitch_60
    const-string v0, "getLastCallingPackage"

    return-object v0

    .line 837
    :pswitch_63
    const-string v0, "getLegacyDeviceColor"

    return-object v0

    .line 833
    :pswitch_66
    const-string v0, "getDeviceColor"

    return-object v0

    .line 829
    :pswitch_69
    const-string v0, "getAnimatedPkgName"

    return-object v0

    .line 825
    :pswitch_6c
    const-string/jumbo v0, "isValidSnapshot"

    return-object v0

    .line 821
    :pswitch_70
    const-string/jumbo v0, "setSnapshotSource"

    return-object v0

    .line 817
    :pswitch_74
    const-string v0, "getSnapshotCount"

    return-object v0

    .line 813
    :pswitch_77
    const-string/jumbo v0, "setSnapshotTestMode"

    return-object v0

    .line 809
    :pswitch_7b
    const-string/jumbo v0, "isSnapshotTestMode"

    return-object v0

    .line 805
    :pswitch_7f
    const-string/jumbo v0, "restoreSnapshot"

    return-object v0

    .line 801
    :pswitch_83
    const-string/jumbo v0, "makeSnapshot"

    return-object v0

    .line 797
    :pswitch_87
    const-string/jumbo v0, "removeSnapshotBySource"

    return-object v0

    .line 793
    :pswitch_8b
    const-string/jumbo v0, "removeSnapshotByKey"

    return-object v0

    .line 789
    :pswitch_8f
    const-string/jumbo v0, "removeSnapshotByWhich"

    return-object v0

    .line 785
    :pswitch_93
    const-string/jumbo v0, "setAnimatedWallpaper"

    return-object v0

    .line 781
    :pswitch_97
    const-string v0, "getMotionWallpaperPkgName"

    return-object v0

    .line 777
    :pswitch_9a
    const-string/jumbo v0, "setMotionWallpaper"

    return-object v0

    .line 773
    :pswitch_9e
    const-string v0, "getVideoFileName"

    return-object v0

    .line 769
    :pswitch_a1
    const-string v0, "getVideoPackage"

    return-object v0

    .line 765
    :pswitch_a4
    const-string v0, "getVideoFilePath"

    return-object v0

    .line 761
    :pswitch_a7
    const-string v0, "getWallpaperThumbnailFileDescriptor"

    return-object v0

    .line 757
    :pswitch_aa
    const-string v0, "hasVideoWallpaper"

    return-object v0

    .line 753
    :pswitch_ad
    const-string/jumbo v0, "isVideoWallpaper"

    return-object v0

    .line 749
    :pswitch_b1
    const-string/jumbo v0, "setVideoWallpaper"

    return-object v0

    .line 745
    :pswitch_b5
    const-string/jumbo v0, "isDefaultWallpaperState"

    return-object v0

    .line 741
    :pswitch_b9
    const-string/jumbo v0, "semGetWallpaperCropHint"

    return-object v0

    .line 737
    :pswitch_bd
    const-string/jumbo v0, "semGetWallpaperType"

    return-object v0

    .line 733
    :pswitch_c1
    const-string v0, "getLockWallpaperType"

    return-object v0

    .line 729
    :pswitch_c4
    const-string/jumbo v0, "isDesktopStandAloneMode"

    return-object v0

    .line 725
    :pswitch_c8
    const-string/jumbo v0, "isDesktopModeEnabled"

    return-object v0

    .line 721
    :pswitch_cc
    const-string v0, "getDesktopMode"

    return-object v0

    .line 717
    :pswitch_cf
    const-string/jumbo v0, "isDesktopMode"

    return-object v0

    .line 713
    :pswitch_d3
    const-string/jumbo v0, "isMultiCropEnabled"

    return-object v0

    .line 709
    :pswitch_d7
    const-string/jumbo v0, "isLockscreenLiveWallpaperEnabled"

    return-object v0

    .line 705
    :pswitch_db
    const-string/jumbo v0, "isStaticWallpaper"

    return-object v0

    .line 701
    :pswitch_df
    const-string/jumbo v0, "lockScreenWallpaperExists"

    return-object v0

    .line 697
    :pswitch_e3
    const-string v0, "getWallpaperDimAmount"

    return-object v0

    .line 693
    :pswitch_e6
    const-string/jumbo v0, "setWallpaperDimAmount"

    return-object v0

    .line 689
    :pswitch_ea
    const-string/jumbo v0, "notifyGoingToSleep"

    return-object v0

    .line 685
    :pswitch_ee
    const-string/jumbo v0, "notifyWakingUp"

    return-object v0

    .line 681
    :pswitch_f2
    const-string/jumbo v0, "setInAmbientMode"

    return-object v0

    .line 677
    :pswitch_f6
    const-string/jumbo v0, "unregisterWallpaperColorsCallback"

    return-object v0

    .line 673
    :pswitch_fa
    const-string/jumbo v0, "registerWallpaperColorsCallback"

    return-object v0

    .line 669
    :pswitch_fe
    const-string v0, "addOnLocalColorsChangedListener"

    return-object v0

    .line 665
    :pswitch_101
    const-string/jumbo v0, "removeOnLocalColorsChangedListener"

    return-object v0

    .line 661
    :pswitch_105
    const-string v0, "getWallpaperColors"

    return-object v0

    .line 657
    :pswitch_108
    const-string/jumbo v0, "setCoverWallpaperCallback"

    return-object v0

    .line 653
    :pswitch_10c
    const-string/jumbo v0, "setLockWallpaperCallback"

    return-object v0

    .line 649
    :pswitch_110
    const-string/jumbo v0, "isWallpaperBackupAllowed"

    return-object v0

    .line 645
    :pswitch_114
    const-string/jumbo v0, "isWallpaperBackupEligible"

    return-object v0

    .line 641
    :pswitch_118
    const-string/jumbo v0, "isSetWallpaperAllowed"

    return-object v0

    .line 637
    :pswitch_11c
    const-string/jumbo v0, "isWallpaperSupported"

    return-object v0

    .line 633
    :pswitch_120
    const-string/jumbo v0, "settingsRestored"

    return-object v0

    .line 629
    :pswitch_124
    const-string v0, "getName"

    return-object v0

    .line 625
    :pswitch_127
    const-string/jumbo v0, "setDisplayPadding"

    return-object v0

    .line 621
    :pswitch_12b
    const-string v0, "getHeightHint"

    return-object v0

    .line 617
    :pswitch_12e
    const-string v0, "getWidthHint"

    return-object v0

    .line 613
    :pswitch_131
    const-string/jumbo v0, "setDimensionHints"

    return-object v0

    .line 609
    :pswitch_135
    const-string v0, "hasNamedWallpaper"

    return-object v0

    .line 605
    :pswitch_138
    const-string v0, "clearWallpaper"

    return-object v0

    .line 601
    :pswitch_13b
    const-string v0, "getWallpaperInfoFile"

    return-object v0

    .line 597
    :pswitch_13e
    const-string v0, "getWallpaperInfoWithFlags"

    return-object v0

    .line 593
    :pswitch_141
    const-string v0, "getWallpaperInfo"

    return-object v0

    .line 589
    :pswitch_144
    const-string v0, "getWallpaperIdForUser"

    return-object v0

    .line 585
    :pswitch_147
    const-string v0, "getLockWallpaper"

    return-object v0

    .line 581
    :pswitch_14a
    const-string v0, "getWallpaperWithFeature"

    return-object v0

    .line 577
    :pswitch_14d
    const-string v0, "getWallpaper"

    return-object v0

    .line 573
    :pswitch_150
    const-string/jumbo v0, "setWallpaperComponent"

    return-object v0

    .line 569
    :pswitch_154
    const-string/jumbo v0, "setWallpaperComponentChecked"

    return-object v0

    .line 565
    :pswitch_158
    const-string/jumbo v0, "setWallpaper"

    return-object v0

    :pswitch_data_15c
    .packed-switch 0x1
        :pswitch_158
        :pswitch_154
        :pswitch_150
        :pswitch_14d
        :pswitch_14a
        :pswitch_147
        :pswitch_144
        :pswitch_141
        :pswitch_13e
        :pswitch_13b
        :pswitch_138
        :pswitch_135
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
        :pswitch_127
        :pswitch_124
        :pswitch_120
        :pswitch_11c
        :pswitch_118
        :pswitch_114
        :pswitch_110
        :pswitch_10c
        :pswitch_108
        :pswitch_105
        :pswitch_101
        :pswitch_fe
        :pswitch_fa
        :pswitch_f6
        :pswitch_f2
        :pswitch_ee
        :pswitch_ea
        :pswitch_e6
        :pswitch_e3
        :pswitch_df
        :pswitch_db
        :pswitch_d7
        :pswitch_d3
        :pswitch_cf
        :pswitch_cc
        :pswitch_c8
        :pswitch_c4
        :pswitch_c1
        :pswitch_bd
        :pswitch_b9
        :pswitch_b5
        :pswitch_b1
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9a
        :pswitch_97
        :pswitch_93
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_74
        :pswitch_70
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5c
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 556
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 4032
    const/16 v0, 0x5e

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 952
    invoke-static {p1}, Landroid/app/IWallpaperManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 32
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 956
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v11, "android.app.IWallpaperManager"

    .line 957
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v13, v10, :cond_15

    const v0, 0xffffff

    if-gt v13, v0, :cond_15

    .line 958
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    :cond_15
    packed-switch v13, :pswitch_data_9da

    .line 968
    packed-switch v13, :pswitch_data_9e0

    .line 2047
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 964
    :pswitch_20
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 965
    return v10

    .line 2036
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2038
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2039
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2040
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->isWallpaperDataExists(II)Z

    move-result v2

    .line 2041
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2042
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2043
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 2021
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2023
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2025
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2027
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2028
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2029
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->notifyPid(IILjava/lang/String;Z)V

    .line 2030
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2031
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 2010
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Z
    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2012
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2013
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2014
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->forceRebindWallpaper(II)V

    .line 2015
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2016
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1998
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2000
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2001
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2002
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->semGetUri(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2003
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2004
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2005
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1977
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1979
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 1981
    .local v9, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1983
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1985
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1987
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1989
    .local v19, "_arg5":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Bundle;

    .line 1990
    .local v20, "_arg6":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1991
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v9

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/app/IWallpaperManager$Stub;->semSetUri(Ljava/lang/String;ZIILjava/lang/String;ILandroid/os/Bundle;)V

    .line 1992
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1993
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1965
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Z
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":Landroid/os/Bundle;
    :pswitch_ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1967
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1968
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1969
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->isWaitingForUnlockUser(II)Z

    move-result v2

    .line 1970
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1971
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1972
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1955
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1956
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1957
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isVirtualWallpaperDisplay(I)Z

    move-result v1

    .line 1958
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1959
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1960
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1945
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1946
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1947
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getDisplayId(I)I

    move-result v1

    .line 1948
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1949
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1950
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1937
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_110
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getLidState()I

    move-result v0

    .line 1938
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1939
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1940
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1928
    .end local v0    # "_result":I
    :pswitch_11f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1929
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1930
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->semGetSmartCropRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1931
    .local v1, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1932
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1933
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1915
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Rect;
    :pswitch_135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1917
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1919
    .local v1, "_arg1":Landroid/graphics/Rect;
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1920
    .local v2, "_arg2":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1921
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1922
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1923
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1904
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v2    # "_arg2":Landroid/graphics/Rect;
    :pswitch_157
    sget-object v0, Landroid/app/SemWallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemWallpaperColors;

    .line 1906
    .local v0, "_arg0":Landroid/app/SemWallpaperColors;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1907
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1908
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V

    .line 1909
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1910
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1893
    .end local v0    # "_arg0":Landroid/app/SemWallpaperColors;
    .end local v1    # "_arg1":I
    :pswitch_171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1895
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1896
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1897
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->semRequestWallpaperColorsAnalysis(ILjava/lang/String;)V

    .line 1898
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1899
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1883
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1884
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1885
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->semGetPrimaryWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v1

    .line 1886
    .local v1, "_result":Landroid/app/SemWallpaperColors;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1887
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1888
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1873
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/app/SemWallpaperColors;
    :pswitch_19d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1874
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1875
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v1

    .line 1876
    .restart local v1    # "_result":Landroid/app/SemWallpaperColors;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1877
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1878
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1860
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/app/SemWallpaperColors;
    :pswitch_1b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1862
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1864
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1865
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1866
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1867
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1868
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1848
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_1d1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1850
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1851
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1852
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperOrientation(II)I

    move-result v2

    .line 1853
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1854
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1855
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1836
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_1eb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1838
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1839
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1840
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperExtras(II)Landroid/os/Bundle;

    move-result-object v2

    .line 1841
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1842
    invoke-virtual {v15, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1843
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1824
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1826
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1827
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1828
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperComponentExtras(II)Landroid/os/Bundle;

    move-result-object v2

    .line 1829
    .restart local v2    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1830
    invoke-virtual {v15, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1831
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1814
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_21f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1815
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1816
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getHighlightFilterState(I)I

    move-result v1

    .line 1817
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1818
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1819
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1804
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1805
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1806
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isSystemAndLockPaired(I)Z

    move-result v1

    .line 1807
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1808
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1809
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1793
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_24b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1795
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1796
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1797
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->copyPreloadedFileToWallpaperFile(ILjava/lang/String;)V

    .line 1798
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1799
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1782
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1784
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1785
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1786
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->copyFileToWallpaperFile(ILjava/lang/String;)V

    .line 1787
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1788
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1771
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1773
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1774
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1775
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->setKWPTypeLiveWallpaperWithMode(II)V

    .line 1776
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1777
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1762
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_28d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1763
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1764
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->setKWPTypeLiveWallpaper(I)V

    .line 1765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1766
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1752
    .end local v0    # "_arg0":I
    :pswitch_29f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1753
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1754
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getLastCallingPackage(I)Ljava/lang/String;

    move-result-object v1

    .line 1755
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1757
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1744
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2b5
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getLegacyDeviceColor()Ljava/lang/String;

    move-result-object v0

    .line 1745
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1746
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1747
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1737
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_2c4
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getDeviceColor()Ljava/lang/String;

    move-result-object v0

    .line 1738
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1739
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1740
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1728
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_2d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1729
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1730
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getAnimatedPkgName(I)Ljava/lang/String;

    move-result-object v1

    .line 1731
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1732
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1733
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1718
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2e9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1719
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1720
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isValidSnapshot(I)Z

    move-result v1

    .line 1721
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1722
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1723
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1706
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2ff
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1708
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1709
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1710
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->setSnapshotSource(ILjava/lang/String;)Z

    move-result v2

    .line 1711
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1712
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1713
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1696
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1697
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1698
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getSnapshotCount(I)I

    move-result v1

    .line 1699
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1700
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1701
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1687
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_32f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1688
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1689
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->setSnapshotTestMode(Z)V

    .line 1690
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1691
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1679
    .end local v0    # "_arg0":Z
    :pswitch_341
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->isSnapshotTestMode()Z

    move-result v0

    .line 1680
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1681
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1682
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1668
    .end local v0    # "_result":Z
    :pswitch_350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1670
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1671
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1672
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->restoreSnapshot(ILjava/lang/String;)Z

    move-result v2

    .line 1673
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1674
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1675
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1656
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_36a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1658
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1659
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1660
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->makeSnapshot(II)I

    move-result v2

    .line 1661
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1662
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1663
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1647
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1648
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1649
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->removeSnapshotBySource(Ljava/lang/String;)V

    .line 1650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1651
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1638
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1639
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1640
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->removeSnapshotByKey(I)V

    .line 1641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1642
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1629
    .end local v0    # "_arg0":I
    :pswitch_3a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1630
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1631
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->removeSnapshotByWhich(I)V

    .line 1632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1614
    .end local v0    # "_arg0":I
    :pswitch_3ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1616
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1618
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1620
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1621
    .restart local v3    # "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1622
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->setAnimatedWallpaper(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1624
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1604
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Z
    :pswitch_3d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1605
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1606
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getMotionWallpaperPkgName(I)Ljava/lang/String;

    move-result-object v1

    .line 1607
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1608
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1609
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1589
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_3ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1591
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1593
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1595
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1596
    .restart local v3    # "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1597
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->setMotionWallpaper(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1579
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Z
    :pswitch_40c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1580
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1581
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getVideoFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 1582
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1583
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1584
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1569
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1570
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1571
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v1

    .line 1572
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1573
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1574
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1559
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1560
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1561
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 1562
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1563
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1564
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1543
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_44e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1545
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1547
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1549
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1550
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1551
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->getWallpaperThumbnailFileDescriptor(IIII)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1552
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1553
    invoke-virtual {v15, v4, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1554
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1535
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_470
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->hasVideoWallpaper()Z

    move-result v0

    .line 1536
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1537
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1538
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1528
    .end local v0    # "_result":Z
    :pswitch_47f
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->isVideoWallpaper()Z

    move-result v0

    .line 1529
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1531
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1506
    .end local v0    # "_result":Z
    :pswitch_48e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1508
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1510
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1512
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1514
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1516
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1518
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 1520
    .local v21, "_arg6":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Bundle;

    .line 1521
    .local v22, "_arg7":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1522
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/app/IWallpaperManager$Stub;->setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/os/Bundle;)V

    .line 1523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1524
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1496
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Z
    .end local v22    # "_arg7":Landroid/os/Bundle;
    :pswitch_4d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1497
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1498
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isDefaultWallpaperState(I)Z

    move-result v1

    .line 1499
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1500
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1501
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1486
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4e9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1487
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1488
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->semGetWallpaperCropHint(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1489
    .local v1, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1490
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1491
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1476
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Rect;
    :pswitch_4ff
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1477
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1478
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->semGetWallpaperType(I)I

    move-result v1

    .line 1479
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1480
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1481
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1468
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_515
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getLockWallpaperType()I

    move-result v0

    .line 1469
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1470
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1471
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1461
    .end local v0    # "_result":I
    :pswitch_524
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->isDesktopStandAloneMode()Z

    move-result v0

    .line 1462
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1463
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1464
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1452
    .end local v0    # "_result":Z
    :pswitch_533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1453
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1454
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isDesktopModeEnabled(I)Z

    move-result v1

    .line 1455
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1456
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1457
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1444
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_549
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getDesktopMode()I

    move-result v0

    .line 1445
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1446
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1447
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1437
    .end local v0    # "_result":I
    :pswitch_558
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->isDesktopMode()Z

    move-result v0

    .line 1438
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1439
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1440
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1430
    .end local v0    # "_result":Z
    :pswitch_567
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->isMultiCropEnabled()Z

    move-result v0

    .line 1431
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1432
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1433
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1423
    .end local v0    # "_result":Z
    :pswitch_576
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->isLockscreenLiveWallpaperEnabled()Z

    move-result v0

    .line 1424
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1425
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1426
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1414
    .end local v0    # "_result":Z
    :pswitch_585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1415
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1416
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isStaticWallpaper(I)Z

    move-result v1

    .line 1417
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1418
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1419
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1406
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_59b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->lockScreenWallpaperExists()Z

    move-result v0

    .line 1407
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1408
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1409
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1399
    .end local v0    # "_result":Z
    :pswitch_5aa
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getWallpaperDimAmount()F

    move-result v0

    .line 1400
    .local v0, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1401
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1402
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1392
    .end local v0    # "_result":F
    :pswitch_5b9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 1393
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1394
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->setWallpaperDimAmount(F)V

    .line 1395
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1379
    .end local v0    # "_arg0":F
    :pswitch_5c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1381
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1383
    .local v1, "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1384
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1385
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->notifyGoingToSleep(IILandroid/os/Bundle;)V

    .line 1386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1387
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1367
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_5e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1369
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1371
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1372
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1373
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->notifyWakingUp(IILandroid/os/Bundle;)V

    .line 1374
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1357
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1359
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1360
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1361
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->setInAmbientMode(ZJ)V

    .line 1362
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1344
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":J
    :pswitch_614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    .line 1346
    .local v0, "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1348
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1349
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1350
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 1351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1331
    .end local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    .line 1333
    .restart local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1335
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1336
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1337
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 1338
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1314
    .end local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ILocalWallpaperColorConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ILocalWallpaperColorConsumer;

    move-result-object v6

    .line 1316
    .local v6, "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1318
    .local v7, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1320
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1322
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1323
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1324
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->addOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V

    .line 1325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1326
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1297
    .end local v6    # "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    .end local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ILocalWallpaperColorConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ILocalWallpaperColorConsumer;

    move-result-object v6

    .line 1299
    .restart local v6    # "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1301
    .restart local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1303
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1305
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1306
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1307
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->removeOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V

    .line 1308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1283
    .end local v6    # "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    .end local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_6b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1285
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1287
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1288
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1289
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->getWallpaperColors(III)Landroid/app/WallpaperColors;

    move-result-object v3

    .line 1290
    .local v3, "_result":Landroid/app/WallpaperColors;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    invoke-virtual {v15, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1292
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1273
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/app/WallpaperColors;
    :pswitch_6ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    .line 1274
    .local v0, "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1275
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->setCoverWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    move-result v1

    .line 1276
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1278
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1263
    .end local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v1    # "_result":Z
    :pswitch_6e8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    .line 1264
    .restart local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1265
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    move-result v1

    .line 1266
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1268
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1251
    .end local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v1    # "_result":Z
    :pswitch_702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1253
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1254
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1255
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->isWallpaperBackupAllowed(II)Z

    move-result v2

    .line 1256
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1258
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1239
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_71c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1241
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1242
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1243
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->isWallpaperBackupEligible(II)Z

    move-result v2

    .line 1244
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1245
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1246
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1229
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1230
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1231
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v1

    .line 1232
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1234
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1219
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_74c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1220
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1221
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v1

    .line 1222
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1223
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1224
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1212
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_762
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->settingsRestored()V

    .line 1213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1214
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1205
    :pswitch_76d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1206
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1208
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1193
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_77c
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1195
    .local v0, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1197
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1198
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V

    .line 1200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1183
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_79a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1184
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1185
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getHeightHint(I)I

    move-result v1

    .line 1186
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1173
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_7b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1174
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1175
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getWidthHint(I)I

    move-result v1

    .line 1176
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1178
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1158
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_7c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1160
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1162
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1164
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1165
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1166
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->setDimensionHints(IILjava/lang/String;I)V

    .line 1167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1148
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_7e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1149
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1150
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->hasNamedWallpaper(Ljava/lang/String;)Z

    move-result v1

    .line 1151
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1153
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1135
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_7fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1137
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1139
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1140
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1141
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->clearWallpaper(Ljava/lang/String;II)V

    .line 1142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1125
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1126
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1127
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfoFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1128
    .local v1, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1130
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1113
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_82a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1115
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1116
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfoWithFlags(II)Landroid/app/WallpaperInfo;

    move-result-object v2

    .line 1118
    .local v2, "_result":Landroid/app/WallpaperInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    invoke-virtual {v15, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1120
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1103
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/app/WallpaperInfo;
    :pswitch_844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1104
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1105
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 1106
    .local v1, "_result":Landroid/app/WallpaperInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1108
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1091
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/app/WallpaperInfo;
    :pswitch_85a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1093
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1094
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1095
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperIdForUser(II)I

    move-result v2

    .line 1096
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1098
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1074
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    .line 1076
    .local v0, "_arg0":Landroid/app/IWallpaperManagerCallback;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1078
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1080
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1081
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1082
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->getLockWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1083
    .restart local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1084
    invoke-virtual {v15, v4, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1085
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1086
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1049
    .end local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_89e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1051
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1053
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v17

    .line 1055
    .local v17, "_arg2":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1057
    .local v18, "_arg3":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v8, v0

    .line 1059
    .local v8, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1061
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 1063
    .local v20, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1064
    .local v21, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1065
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object v5, v8

    move/from16 v6, v19

    move/from16 v7, v20

    move-object/from16 v23, v8

    .end local v8    # "_arg4":Landroid/os/Bundle;
    .local v23, "_arg4":Landroid/os/Bundle;
    move/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Landroid/app/IWallpaperManager$Stub;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZI)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1066
    .local v0, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    invoke-virtual {v15, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1068
    move-object/from16 v1, v23

    .end local v23    # "_arg4":Landroid/os/Bundle;
    .local v1, "_arg4":Landroid/os/Bundle;
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1069
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1030
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg4":Landroid/os/Bundle;
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Landroid/app/IWallpaperManagerCallback;
    .end local v18    # "_arg3":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":Z
    .end local v21    # "_arg7":I
    :pswitch_8ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1032
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v7

    .line 1034
    .local v7, "_arg1":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1036
    .local v8, "_arg2":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v9, v0

    .line 1038
    .local v9, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1039
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1040
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1041
    .restart local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    invoke-virtual {v15, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1043
    invoke-virtual {v15, v9, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1044
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1021
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Landroid/app/IWallpaperManagerCallback;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/os/Bundle;
    .end local v16    # "_arg4":I
    :pswitch_924
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1022
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1023
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 1024
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 1004
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_93a
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/ComponentName;

    .line 1006
    .local v6, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1008
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1010
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1012
    .local v9, "_arg3":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 1013
    .local v16, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1014
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 1015
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9d9

    .line 973
    .end local v6    # "_arg0":Landroid/content/ComponentName;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":Landroid/os/Bundle;
    :pswitch_96f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 975
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 977
    .local v17, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/graphics/Rect;

    .line 979
    .local v18, "_arg2":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 981
    .local v19, "_arg3":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v9, v0

    .line 983
    .local v9, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 985
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v21

    .line 987
    .local v21, "_arg6":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 989
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 991
    .local v23, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v24

    .line 993
    .local v24, "_arg9":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    .line 994
    .local v25, "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move-object v5, v9

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move-object v12, v9

    .end local v9    # "_arg4":Landroid/os/Bundle;
    .local v12, "_arg4":Landroid/os/Bundle;
    move/from16 v9, v23

    move v13, v10

    move/from16 v10, v24

    move-object/from16 v26, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v26, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IWallpaperManager$Stub;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIZLandroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 996
    .local v0, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    invoke-virtual {v15, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 998
    invoke-virtual {v15, v12, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 999
    nop

    .line 2050
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v12    # "_arg4":Landroid/os/Bundle;
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Landroid/graphics/Rect;
    .end local v19    # "_arg3":Z
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Landroid/app/IWallpaperManagerCallback;
    .end local v22    # "_arg7":I
    .end local v23    # "_arg8":I
    .end local v24    # "_arg9":Z
    .end local v25    # "_arg10":Landroid/os/Bundle;
    :goto_9d9
    return v13

    :pswitch_data_9da
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_9e0
    .packed-switch 0x1
        :pswitch_96f
        :pswitch_93a
        :pswitch_924
        :pswitch_8ed
        :pswitch_89e
        :pswitch_874
        :pswitch_85a
        :pswitch_844
        :pswitch_82a
        :pswitch_814
        :pswitch_7fa
        :pswitch_7e4
        :pswitch_7c6
        :pswitch_7b0
        :pswitch_79a
        :pswitch_77c
        :pswitch_76d
        :pswitch_762
        :pswitch_74c
        :pswitch_736
        :pswitch_71c
        :pswitch_702
        :pswitch_6e8
        :pswitch_6ce
        :pswitch_6b0
        :pswitch_680
        :pswitch_650
        :pswitch_632
        :pswitch_614
        :pswitch_601
        :pswitch_5e6
        :pswitch_5c8
        :pswitch_5b9
        :pswitch_5aa
        :pswitch_59b
        :pswitch_585
        :pswitch_576
        :pswitch_567
        :pswitch_558
        :pswitch_549
        :pswitch_533
        :pswitch_524
        :pswitch_515
        :pswitch_4ff
        :pswitch_4e9
        :pswitch_4d3
        :pswitch_48e
        :pswitch_47f
        :pswitch_470
        :pswitch_44e
        :pswitch_438
        :pswitch_422
        :pswitch_40c
        :pswitch_3ee
        :pswitch_3d8
        :pswitch_3ba
        :pswitch_3a8
        :pswitch_396
        :pswitch_384
        :pswitch_36a
        :pswitch_350
        :pswitch_341
        :pswitch_32f
        :pswitch_319
        :pswitch_2ff
        :pswitch_2e9
        :pswitch_2d3
        :pswitch_2c4
        :pswitch_2b5
        :pswitch_29f
        :pswitch_28d
        :pswitch_277
        :pswitch_261
        :pswitch_24b
        :pswitch_235
        :pswitch_21f
        :pswitch_205
        :pswitch_1eb
        :pswitch_1d1
        :pswitch_1b3
        :pswitch_19d
        :pswitch_187
        :pswitch_171
        :pswitch_157
        :pswitch_135
        :pswitch_11f
        :pswitch_110
        :pswitch_fa
        :pswitch_e4
        :pswitch_ca
        :pswitch_8c
        :pswitch_72
        :pswitch_5c
        :pswitch_3e
        :pswitch_24
    .end packed-switch
.end method
