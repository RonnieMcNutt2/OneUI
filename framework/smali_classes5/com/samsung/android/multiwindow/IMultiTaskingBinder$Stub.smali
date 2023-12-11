.class public abstract Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;
.super Landroid/os/Binder;
.source "IMultiTaskingBinder.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/IMultiTaskingBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/IMultiTaskingBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_calculateMaxWidth:I = 0x3a

.field static final TRANSACTION_dismissSplitTask:I = 0x24

.field static final TRANSACTION_exitMultiWindow:I = 0x1c

.field static final TRANSACTION_finishNaturalSwitching:I = 0x22

.field static final TRANSACTION_getAllowedMultiWindowPackageList:I = 0x19

.field static final TRANSACTION_getDexTaskInfoFlags:I = 0x12

.field static final TRANSACTION_getEmbedActivityPackageEnabled:I = 0x29

.field static final TRANSACTION_getFreeformContainerPoint:I = 0xa

.field static final TRANSACTION_getMWDisableRequesters:I = 0x10

.field static final TRANSACTION_getMinimizedFreeformTasksForCurrentUser:I = 0xb

.field static final TRANSACTION_getMultiSplitFlags:I = 0x34

.field static final TRANSACTION_getMultiWindowBlockListApp:I = 0x1b

.field static final TRANSACTION_getMultiWindowModeStates:I = 0x1d

.field static final TRANSACTION_getResizeMode:I = 0x17

.field static final TRANSACTION_getSplitActivityAllowPackages:I = 0x26

.field static final TRANSACTION_getSplitActivityPackageEnabled:I = 0x27

.field static final TRANSACTION_getSupportEmbedActivityPackages:I = 0x2b

.field static final TRANSACTION_getSurfaceFreezerSnapshot:I = 0x20

.field static final TRANSACTION_getTaskInfoFromPackageName:I = 0x2e

.field static final TRANSACTION_getVisibleTasks:I = 0xe

.field static final TRANSACTION_hasMinimizedToggleTasks:I = 0x5

.field static final TRANSACTION_hideInputMethod:I = 0x1e

.field static final TRANSACTION_initDockingBounds:I = 0x38

.field static final TRANSACTION_isAllTasksResizable:I = 0x13

.field static final TRANSACTION_isAllowedMultiWindowPackage:I = 0x18

.field static final TRANSACTION_isDismissedFlexPanelMode:I = 0x3f

.field static final TRANSACTION_isFlexPanelRunning:I = 0x23

.field static final TRANSACTION_isMultiWindowBlockListApp:I = 0x1a

.field static final TRANSACTION_isSplitImmersiveModeEnabled:I = 0x32

.field static final TRANSACTION_isValidCornerGesture:I = 0x2d

.field static final TRANSACTION_isVisibleTaskByTaskIdInDexDisplay:I = 0x45

.field static final TRANSACTION_isVisibleTaskInDexDisplay:I = 0x44

.field static final TRANSACTION_minimizeAllTasks:I = 0x2

.field static final TRANSACTION_minimizeAllTasksByRecents:I = 0x3

.field static final TRANSACTION_minimizeTaskById:I = 0x1

.field static final TRANSACTION_minimizeTaskToSpecificPosition:I = 0x4

.field static final TRANSACTION_notifyDragSplitAppIconHasDrawable:I = 0x1f

.field static final TRANSACTION_notifyFreeformMinimizeAnimationEnd:I = 0x8

.field static final TRANSACTION_preventNaturalSwitching:I = 0x41

.field static final TRANSACTION_registerDexSnappingCallback:I = 0x35

.field static final TRANSACTION_registerFreeformCallback:I = 0x6

.field static final TRANSACTION_registerRemoteAppTransitionListener:I = 0x14

.field static final TRANSACTION_removeFocusedTask:I = 0x2f

.field static final TRANSACTION_reportFreeformContainerPoint:I = 0x9

.field static final TRANSACTION_resizeOtherTaskIfNeeded:I = 0x3b

.field static final TRANSACTION_rotateDexCompatTask:I = 0x25

.field static final TRANSACTION_saveFreeformBounds:I = 0x42

.field static final TRANSACTION_scheduleNotifyDexSnappingCallback:I = 0x37

.field static final TRANSACTION_setBlockedMinimizeFreeformEnable:I = 0xc

.field static final TRANSACTION_setCandidateTask:I = 0x39

.field static final TRANSACTION_setCornerGestureEnabledWithSettings:I = 0x2c

.field static final TRANSACTION_setCustomDensityEnabled:I = 0xd

.field static final TRANSACTION_setEmbedActivityPackageEnabled:I = 0x2a

.field static final TRANSACTION_setMaxVisibleFreeformCountForDex:I = 0xf

.field static final TRANSACTION_setMultiWindowEnabledForUser:I = 0x11

.field static final TRANSACTION_setNaviStarSplitImmersiveMode:I = 0x33

.field static final TRANSACTION_setSplitActivityPackageEnabled:I = 0x28

.field static final TRANSACTION_setSplitImmersiveMode:I = 0x31

.field static final TRANSACTION_setStayFocusActivityEnabled:I = 0x30

.field static final TRANSACTION_startNaturalSwitching:I = 0x21

.field static final TRANSACTION_supportMultiSplitAppMinimumSize:I = 0x3d

.field static final TRANSACTION_supportsMultiWindow:I = 0x16

.field static final TRANSACTION_toggleFreeformForDexCompatApp:I = 0x3c

.field static final TRANSACTION_toggleFreeformWindowingMode:I = 0x40

.field static final TRANSACTION_toggleFreeformWindowingModeForDex:I = 0x43

.field static final TRANSACTION_unregisterDexSnappingCallback:I = 0x36

.field static final TRANSACTION_unregisterFreeformCallback:I = 0x7

.field static final TRANSACTION_unregisterRemoteAppTransitionListener:I = 0x15

.field static final TRANSACTION_updateMultiSplitAppMinimumSize:I = 0x3e


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 341
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 342
    const-string v0, "com.samsung.android.multiwindow.IMultiTaskingBinder"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiTaskingBinder;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 350
    if-nez p0, :cond_4

    .line 351
    const/4 v0, 0x0

    return-object v0

    .line 353
    :cond_4
    const-string v0, "com.samsung.android.multiwindow.IMultiTaskingBinder"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 354
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    if-eqz v1, :cond_14

    .line 355
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    return-object v1

    .line 357
    :cond_14
    new-instance v1, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 366
    packed-switch p0, :pswitch_data_114

    .line 646
    const/4 v0, 0x0

    return-object v0

    .line 642
    :pswitch_5
    const-string/jumbo v0, "isVisibleTaskByTaskIdInDexDisplay"

    return-object v0

    .line 638
    :pswitch_9
    const-string/jumbo v0, "isVisibleTaskInDexDisplay"

    return-object v0

    .line 634
    :pswitch_d
    const-string/jumbo v0, "toggleFreeformWindowingModeForDex"

    return-object v0

    .line 630
    :pswitch_11
    const-string/jumbo v0, "saveFreeformBounds"

    return-object v0

    .line 626
    :pswitch_15
    const-string/jumbo v0, "preventNaturalSwitching"

    return-object v0

    .line 622
    :pswitch_19
    const-string/jumbo v0, "toggleFreeformWindowingMode"

    return-object v0

    .line 618
    :pswitch_1d
    const-string/jumbo v0, "isDismissedFlexPanelMode"

    return-object v0

    .line 614
    :pswitch_21
    const-string/jumbo v0, "updateMultiSplitAppMinimumSize"

    return-object v0

    .line 610
    :pswitch_25
    const-string/jumbo v0, "supportMultiSplitAppMinimumSize"

    return-object v0

    .line 606
    :pswitch_29
    const-string/jumbo v0, "toggleFreeformForDexCompatApp"

    return-object v0

    .line 602
    :pswitch_2d
    const-string/jumbo v0, "resizeOtherTaskIfNeeded"

    return-object v0

    .line 598
    :pswitch_31
    const-string v0, "calculateMaxWidth"

    return-object v0

    .line 594
    :pswitch_34
    const-string/jumbo v0, "setCandidateTask"

    return-object v0

    .line 590
    :pswitch_38
    const-string/jumbo v0, "initDockingBounds"

    return-object v0

    .line 586
    :pswitch_3c
    const-string/jumbo v0, "scheduleNotifyDexSnappingCallback"

    return-object v0

    .line 582
    :pswitch_40
    const-string/jumbo v0, "unregisterDexSnappingCallback"

    return-object v0

    .line 578
    :pswitch_44
    const-string/jumbo v0, "registerDexSnappingCallback"

    return-object v0

    .line 574
    :pswitch_48
    const-string/jumbo v0, "getMultiSplitFlags"

    return-object v0

    .line 570
    :pswitch_4c
    const-string/jumbo v0, "setNaviStarSplitImmersiveMode"

    return-object v0

    .line 566
    :pswitch_50
    const-string/jumbo v0, "isSplitImmersiveModeEnabled"

    return-object v0

    .line 562
    :pswitch_54
    const-string/jumbo v0, "setSplitImmersiveMode"

    return-object v0

    .line 558
    :pswitch_58
    const-string/jumbo v0, "setStayFocusActivityEnabled"

    return-object v0

    .line 554
    :pswitch_5c
    const-string/jumbo v0, "removeFocusedTask"

    return-object v0

    .line 550
    :pswitch_60
    const-string/jumbo v0, "getTaskInfoFromPackageName"

    return-object v0

    .line 546
    :pswitch_64
    const-string/jumbo v0, "isValidCornerGesture"

    return-object v0

    .line 542
    :pswitch_68
    const-string/jumbo v0, "setCornerGestureEnabledWithSettings"

    return-object v0

    .line 538
    :pswitch_6c
    const-string/jumbo v0, "getSupportEmbedActivityPackages"

    return-object v0

    .line 534
    :pswitch_70
    const-string/jumbo v0, "setEmbedActivityPackageEnabled"

    return-object v0

    .line 530
    :pswitch_74
    const-string/jumbo v0, "getEmbedActivityPackageEnabled"

    return-object v0

    .line 526
    :pswitch_78
    const-string/jumbo v0, "setSplitActivityPackageEnabled"

    return-object v0

    .line 522
    :pswitch_7c
    const-string/jumbo v0, "getSplitActivityPackageEnabled"

    return-object v0

    .line 518
    :pswitch_80
    const-string/jumbo v0, "getSplitActivityAllowPackages"

    return-object v0

    .line 514
    :pswitch_84
    const-string/jumbo v0, "rotateDexCompatTask"

    return-object v0

    .line 510
    :pswitch_88
    const-string v0, "dismissSplitTask"

    return-object v0

    .line 506
    :pswitch_8b
    const-string/jumbo v0, "isFlexPanelRunning"

    return-object v0

    .line 502
    :pswitch_8f
    const-string v0, "finishNaturalSwitching"

    return-object v0

    .line 498
    :pswitch_92
    const-string/jumbo v0, "startNaturalSwitching"

    return-object v0

    .line 494
    :pswitch_96
    const-string/jumbo v0, "getSurfaceFreezerSnapshot"

    return-object v0

    .line 490
    :pswitch_9a
    const-string/jumbo v0, "notifyDragSplitAppIconHasDrawable"

    return-object v0

    .line 486
    :pswitch_9e
    const-string/jumbo v0, "hideInputMethod"

    return-object v0

    .line 482
    :pswitch_a2
    const-string/jumbo v0, "getMultiWindowModeStates"

    return-object v0

    .line 478
    :pswitch_a6
    const-string v0, "exitMultiWindow"

    return-object v0

    .line 474
    :pswitch_a9
    const-string/jumbo v0, "getMultiWindowBlockListApp"

    return-object v0

    .line 470
    :pswitch_ad
    const-string/jumbo v0, "isMultiWindowBlockListApp"

    return-object v0

    .line 466
    :pswitch_b1
    const-string v0, "getAllowedMultiWindowPackageList"

    return-object v0

    .line 462
    :pswitch_b4
    const-string/jumbo v0, "isAllowedMultiWindowPackage"

    return-object v0

    .line 458
    :pswitch_b8
    const-string/jumbo v0, "getResizeMode"

    return-object v0

    .line 454
    :pswitch_bc
    const-string/jumbo v0, "supportsMultiWindow"

    return-object v0

    .line 450
    :pswitch_c0
    const-string/jumbo v0, "unregisterRemoteAppTransitionListener"

    return-object v0

    .line 446
    :pswitch_c4
    const-string/jumbo v0, "registerRemoteAppTransitionListener"

    return-object v0

    .line 442
    :pswitch_c8
    const-string/jumbo v0, "isAllTasksResizable"

    return-object v0

    .line 438
    :pswitch_cc
    const-string/jumbo v0, "getDexTaskInfoFlags"

    return-object v0

    .line 434
    :pswitch_d0
    const-string/jumbo v0, "setMultiWindowEnabledForUser"

    return-object v0

    .line 430
    :pswitch_d4
    const-string/jumbo v0, "getMWDisableRequesters"

    return-object v0

    .line 426
    :pswitch_d8
    const-string/jumbo v0, "setMaxVisibleFreeformCountForDex"

    return-object v0

    .line 422
    :pswitch_dc
    const-string/jumbo v0, "getVisibleTasks"

    return-object v0

    .line 418
    :pswitch_e0
    const-string/jumbo v0, "setCustomDensityEnabled"

    return-object v0

    .line 414
    :pswitch_e4
    const-string/jumbo v0, "setBlockedMinimizeFreeformEnable"

    return-object v0

    .line 410
    :pswitch_e8
    const-string/jumbo v0, "getMinimizedFreeformTasksForCurrentUser"

    return-object v0

    .line 406
    :pswitch_ec
    const-string/jumbo v0, "getFreeformContainerPoint"

    return-object v0

    .line 402
    :pswitch_f0
    const-string/jumbo v0, "reportFreeformContainerPoint"

    return-object v0

    .line 398
    :pswitch_f4
    const-string/jumbo v0, "notifyFreeformMinimizeAnimationEnd"

    return-object v0

    .line 394
    :pswitch_f8
    const-string/jumbo v0, "unregisterFreeformCallback"

    return-object v0

    .line 390
    :pswitch_fc
    const-string/jumbo v0, "registerFreeformCallback"

    return-object v0

    .line 386
    :pswitch_100
    const-string/jumbo v0, "hasMinimizedToggleTasks"

    return-object v0

    .line 382
    :pswitch_104
    const-string/jumbo v0, "minimizeTaskToSpecificPosition"

    return-object v0

    .line 378
    :pswitch_108
    const-string/jumbo v0, "minimizeAllTasksByRecents"

    return-object v0

    .line 374
    :pswitch_10c
    const-string/jumbo v0, "minimizeAllTasks"

    return-object v0

    .line 370
    :pswitch_110
    const-string/jumbo v0, "minimizeTaskById"

    return-object v0

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_110
        :pswitch_10c
        :pswitch_108
        :pswitch_104
        :pswitch_100
        :pswitch_fc
        :pswitch_f8
        :pswitch_f4
        :pswitch_f0
        :pswitch_ec
        :pswitch_e8
        :pswitch_e4
        :pswitch_e0
        :pswitch_dc
        :pswitch_d8
        :pswitch_d4
        :pswitch_d0
        :pswitch_cc
        :pswitch_c8
        :pswitch_c4
        :pswitch_c0
        :pswitch_bc
        :pswitch_b8
        :pswitch_b4
        :pswitch_b1
        :pswitch_ad
        :pswitch_a9
        :pswitch_a6
        :pswitch_a2
        :pswitch_9e
        :pswitch_9a
        :pswitch_96
        :pswitch_92
        :pswitch_8f
        :pswitch_8b
        :pswitch_88
        :pswitch_84
        :pswitch_80
        :pswitch_7c
        :pswitch_78
        :pswitch_74
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_31
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

    .line 361
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 2641
    const/16 v0, 0x44

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 653
    invoke-static {p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 657
    const-string v0, "com.samsung.android.multiwindow.IMultiTaskingBinder"

    .line 658
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 659
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    :cond_d
    packed-switch p1, :pswitch_data_4d2

    .line 669
    packed-switch p1, :pswitch_data_4d8

    .line 1322
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 665
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 666
    return v1

    .line 1313
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1314
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1315
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isVisibleTaskByTaskIdInDexDisplay(I)Z

    move-result v3

    .line 1316
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1317
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1318
    goto/16 :goto_4d0

    .line 1303
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2f
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 1304
    .local v2, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1305
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isVisibleTaskInDexDisplay(Landroid/app/PendingIntent;)Z

    move-result v3

    .line 1306
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1308
    goto/16 :goto_4d0

    .line 1294
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    .end local v3    # "_result":Z
    :pswitch_46
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    .line 1295
    .local v2, "_arg0":Landroid/window/WindowContainerToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1296
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->toggleFreeformWindowingModeForDex(Landroid/window/WindowContainerToken;)V

    .line 1297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1298
    goto/16 :goto_4d0

    .line 1285
    .end local v2    # "_arg0":Landroid/window/WindowContainerToken;
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1286
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1287
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->saveFreeformBounds(I)V

    .line 1288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    goto/16 :goto_4d0

    .line 1277
    .end local v2    # "_arg0":I
    :pswitch_68
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->preventNaturalSwitching()Z

    move-result v2

    .line 1278
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1280
    goto/16 :goto_4d0

    .line 1270
    .end local v2    # "_result":Z
    :pswitch_74
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->toggleFreeformWindowingMode()Z

    move-result v2

    .line 1271
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1272
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1273
    goto/16 :goto_4d0

    .line 1263
    .end local v2    # "_result":Z
    :pswitch_80
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isDismissedFlexPanelMode()Z

    move-result v2

    .line 1264
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1266
    goto/16 :goto_4d0

    .line 1257
    .end local v2    # "_result":Z
    :pswitch_8c
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->updateMultiSplitAppMinimumSize()V

    .line 1258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    goto/16 :goto_4d0

    .line 1250
    :pswitch_94
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->supportMultiSplitAppMinimumSize()Z

    move-result v2

    .line 1251
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1253
    goto/16 :goto_4d0

    .line 1242
    .end local v2    # "_result":Z
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1243
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1244
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->toggleFreeformForDexCompatApp(I)V

    .line 1245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1246
    goto/16 :goto_4d0

    .line 1231
    .end local v2    # "_arg0":I
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1233
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 1234
    .local v3, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1235
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->resizeOtherTaskIfNeeded(ILandroid/graphics/Rect;)V

    .line 1236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    goto/16 :goto_4d0

    .line 1217
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1219
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1221
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1222
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1223
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->calculateMaxWidth(III)I

    move-result v5

    .line 1224
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    goto/16 :goto_4d0

    .line 1208
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1209
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1210
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setCandidateTask(I)V

    .line 1211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    goto/16 :goto_4d0

    .line 1195
    .end local v2    # "_arg0":I
    :pswitch_f0
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1197
    .local v2, "_arg0":Landroid/graphics/Rect;
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 1199
    .local v3, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1200
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1201
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->initDockingBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    goto/16 :goto_4d0

    .line 1184
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    .end local v4    # "_arg2":I
    :pswitch_10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1186
    .local v2, "_arg0":I
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 1187
    .restart local v3    # "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1188
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->scheduleNotifyDexSnappingCallback(ILandroid/graphics/Rect;)V

    .line 1189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    goto/16 :goto_4d0

    .line 1175
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :pswitch_126
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/IDexSnappingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IDexSnappingCallback;

    move-result-object v2

    .line 1176
    .local v2, "_arg0":Lcom/samsung/android/multiwindow/IDexSnappingCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1177
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->unregisterDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V

    .line 1178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1179
    goto/16 :goto_4d0

    .line 1166
    .end local v2    # "_arg0":Lcom/samsung/android/multiwindow/IDexSnappingCallback;
    :pswitch_139
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/IDexSnappingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IDexSnappingCallback;

    move-result-object v2

    .line 1167
    .restart local v2    # "_arg0":Lcom/samsung/android/multiwindow/IDexSnappingCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1168
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->registerDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V

    .line 1169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    goto/16 :goto_4d0

    .line 1158
    .end local v2    # "_arg0":Lcom/samsung/android/multiwindow/IDexSnappingCallback;
    :pswitch_14c
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getMultiSplitFlags()I

    move-result v2

    .line 1159
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1160
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1161
    goto/16 :goto_4d0

    .line 1150
    .end local v2    # "_result":I
    :pswitch_158
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1151
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1152
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setNaviStarSplitImmersiveMode(Z)V

    .line 1153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    goto/16 :goto_4d0

    .line 1142
    .end local v2    # "_arg0":Z
    :pswitch_167
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isSplitImmersiveModeEnabled()Z

    move-result v2

    .line 1143
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1145
    goto/16 :goto_4d0

    .line 1134
    .end local v2    # "_result":Z
    :pswitch_173
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1135
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1136
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setSplitImmersiveMode(Z)V

    .line 1137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    goto/16 :goto_4d0

    .line 1125
    .end local v2    # "_arg0":Z
    :pswitch_182
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1126
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1127
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setStayFocusActivityEnabled(Z)V

    .line 1128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    goto/16 :goto_4d0

    .line 1115
    .end local v2    # "_arg0":Z
    :pswitch_191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1116
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->removeFocusedTask(I)Z

    move-result v3

    .line 1118
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1120
    goto/16 :goto_4d0

    .line 1105
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1106
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1107
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getTaskInfoFromPackageName(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 1108
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1110
    goto/16 :goto_4d0

    .line 1095
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_1b7
    sget-object v2, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 1096
    .local v2, "_arg0":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1097
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isValidCornerGesture(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1098
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1100
    goto/16 :goto_4d0

    .line 1086
    .end local v2    # "_arg0":Landroid/view/MotionEvent;
    .end local v3    # "_result":Z
    :pswitch_1ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1087
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1088
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setCornerGestureEnabledWithSettings(Z)V

    .line 1089
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1090
    goto/16 :goto_4d0

    .line 1078
    .end local v2    # "_arg0":Z
    :pswitch_1dd
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getSupportEmbedActivityPackages()Ljava/util/List;

    move-result-object v2

    .line 1079
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1081
    goto/16 :goto_4d0

    .line 1066
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1068
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1070
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1071
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1072
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V

    .line 1073
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    goto/16 :goto_4d0

    .line 1054
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1056
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1057
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1058
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z

    move-result v4

    .line 1059
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1060
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1061
    goto/16 :goto_4d0

    .line 1041
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1043
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1045
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1046
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setSplitActivityPackageEnabled(Ljava/lang/String;II)V

    .line 1048
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    goto/16 :goto_4d0

    .line 1029
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_22e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1031
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1032
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getSplitActivityPackageEnabled(Ljava/lang/String;I)I

    move-result v4

    .line 1034
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    goto/16 :goto_4d0

    .line 1021
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_245
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getSplitActivityAllowPackages()Ljava/util/List;

    move-result-object v2

    .line 1022
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1024
    goto/16 :goto_4d0

    .line 1013
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_251
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1014
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1015
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->rotateDexCompatTask(Landroid/os/IBinder;)V

    .line 1016
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    goto/16 :goto_4d0

    .line 1002
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_260
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1004
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1005
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1006
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->dismissSplitTask(Landroid/os/IBinder;Z)V

    .line 1007
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    goto/16 :goto_4d0

    .line 994
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    :pswitch_273
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isFlexPanelRunning()Z

    move-result v2

    .line 995
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 997
    goto/16 :goto_4d0

    .line 988
    .end local v2    # "_result":Z
    :pswitch_27f
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->finishNaturalSwitching()V

    .line 989
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    goto/16 :goto_4d0

    .line 981
    :pswitch_287
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->startNaturalSwitching()Z

    move-result v2

    .line 982
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 984
    goto/16 :goto_4d0

    .line 972
    .end local v2    # "_result":Z
    :pswitch_293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 973
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 974
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;

    move-result-object v3

    .line 975
    .local v3, "_result":Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 977
    goto/16 :goto_4d0

    .line 963
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;
    :pswitch_2a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 964
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 965
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->notifyDragSplitAppIconHasDrawable(Z)V

    .line 966
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    goto/16 :goto_4d0

    .line 954
    .end local v2    # "_arg0":Z
    :pswitch_2b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 955
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->hideInputMethod(I)V

    .line 957
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    goto/16 :goto_4d0

    .line 944
    .end local v2    # "_arg0":I
    :pswitch_2c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 945
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 946
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getMultiWindowModeStates(I)I

    move-result v3

    .line 947
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 949
    goto/16 :goto_4d0

    .line 932
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_2d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 934
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 935
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 936
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->exitMultiWindow(Landroid/os/IBinder;Z)Z

    move-result v4

    .line 937
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 939
    goto/16 :goto_4d0

    .line 924
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_2ee
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getMultiWindowBlockListApp()Landroid/content/pm/StringParceledListSlice;

    move-result-object v2

    .line 925
    .local v2, "_result":Landroid/content/pm/StringParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 927
    goto/16 :goto_4d0

    .line 915
    .end local v2    # "_result":Landroid/content/pm/StringParceledListSlice;
    :pswitch_2fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 916
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 917
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isMultiWindowBlockListApp(Ljava/lang/String;)Z

    move-result v3

    .line 918
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 920
    goto/16 :goto_4d0

    .line 907
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_30d
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getAllowedMultiWindowPackageList()Ljava/util/List;

    move-result-object v2

    .line 908
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 910
    goto/16 :goto_4d0

    .line 898
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_319
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 899
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 900
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isAllowedMultiWindowPackage(Ljava/lang/String;)Z

    move-result v3

    .line 901
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 903
    goto/16 :goto_4d0

    .line 888
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_32c
    sget-object v2, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .line 889
    .local v2, "_arg0":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getResizeMode(Landroid/content/pm/ActivityInfo;)I

    move-result v3

    .line 891
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 893
    goto/16 :goto_4d0

    .line 878
    .end local v2    # "_arg0":Landroid/content/pm/ActivityInfo;
    .end local v3    # "_result":I
    :pswitch_343
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 879
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 880
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->supportsMultiWindow(Landroid/os/IBinder;)Z

    move-result v3

    .line 881
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 883
    goto/16 :goto_4d0

    .line 869
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_356
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;

    move-result-object v2

    .line 870
    .local v2, "_arg0":Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 871
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->unregisterRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V

    .line 872
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    goto/16 :goto_4d0

    .line 860
    .end local v2    # "_arg0":Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;
    :pswitch_369
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;

    move-result-object v2

    .line 861
    .restart local v2    # "_arg0":Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 862
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->registerRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V

    .line 863
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    goto/16 :goto_4d0

    .line 846
    .end local v2    # "_arg0":Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;
    :pswitch_37c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 848
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 850
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 851
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isAllTasksResizable(III)Z

    move-result v5

    .line 853
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 855
    goto/16 :goto_4d0

    .line 836
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_397
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 837
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getDexTaskInfoFlags(Landroid/os/IBinder;)I

    move-result v3

    .line 839
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    goto/16 :goto_4d0

    .line 821
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :pswitch_3aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 823
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 825
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 827
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 828
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 829
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 830
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    goto/16 :goto_4d0

    .line 813
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":I
    :pswitch_3c5
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getMWDisableRequesters()Landroid/content/pm/StringParceledListSlice;

    move-result-object v2

    .line 814
    .local v2, "_result":Landroid/content/pm/StringParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 816
    goto/16 :goto_4d0

    .line 803
    .end local v2    # "_result":Landroid/content/pm/StringParceledListSlice;
    :pswitch_3d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 805
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 806
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 807
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setMaxVisibleFreeformCountForDex(II)V

    .line 808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    goto/16 :goto_4d0

    .line 795
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3e4
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getVisibleTasks()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 796
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 798
    goto/16 :goto_4d0

    .line 787
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_3f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 788
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 789
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setCustomDensityEnabled(I)V

    .line 790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    goto/16 :goto_4d0

    .line 779
    .end local v2    # "_arg0":I
    :pswitch_3ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 780
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 781
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setBlockedMinimizeFreeformEnable(Z)V

    .line 782
    goto/16 :goto_4d0

    .line 771
    .end local v2    # "_arg0":Z
    :pswitch_40b
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getMinimizedFreeformTasksForCurrentUser()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 772
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 774
    goto/16 :goto_4d0

    .line 764
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_417
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getFreeformContainerPoint()Landroid/graphics/PointF;

    move-result-object v2

    .line 765
    .local v2, "_result":Landroid/graphics/PointF;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 767
    goto/16 :goto_4d0

    .line 756
    .end local v2    # "_result":Landroid/graphics/PointF;
    :pswitch_423
    sget-object v2, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 757
    .local v2, "_arg0":Landroid/graphics/PointF;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->reportFreeformContainerPoint(Landroid/graphics/PointF;)V

    .line 759
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    goto/16 :goto_4d0

    .line 745
    .end local v2    # "_arg0":Landroid/graphics/PointF;
    :pswitch_436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 747
    .local v2, "_arg0":I
    sget-object v3, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 748
    .local v3, "_arg1":Landroid/graphics/PointF;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->notifyFreeformMinimizeAnimationEnd(ILandroid/graphics/PointF;)V

    .line 750
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    goto/16 :goto_4d0

    .line 736
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/PointF;
    :pswitch_44d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IFreeformCallback;

    move-result-object v2

    .line 737
    .local v2, "_arg0":Lcom/samsung/android/multiwindow/IFreeformCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->unregisterFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V

    .line 739
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    goto :goto_4d0

    .line 727
    .end local v2    # "_arg0":Lcom/samsung/android/multiwindow/IFreeformCallback;
    :pswitch_45f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IFreeformCallback;

    move-result-object v2

    .line 728
    .restart local v2    # "_arg0":Lcom/samsung/android/multiwindow/IFreeformCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 729
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->registerFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V

    .line 730
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    goto :goto_4d0

    .line 719
    .end local v2    # "_arg0":Lcom/samsung/android/multiwindow/IFreeformCallback;
    :pswitch_471
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->hasMinimizedToggleTasks()Z

    move-result v2

    .line 720
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 722
    goto :goto_4d0

    .line 704
    .end local v2    # "_result":Z
    :pswitch_47c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 706
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 708
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 710
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 711
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 712
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->minimizeTaskToSpecificPosition(IZII)Z

    move-result v6

    .line 713
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 715
    goto :goto_4d0

    .line 694
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :pswitch_49a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 695
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->minimizeAllTasksByRecents(I)Z

    move-result v3

    .line 697
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 699
    goto :goto_4d0

    .line 684
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_4ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 685
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->minimizeAllTasks(I)Z

    move-result v3

    .line 687
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 689
    goto :goto_4d0

    .line 674
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_4be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 675
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 676
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->minimizeTaskById(I)Z

    move-result v3

    .line 677
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 679
    nop

    .line 1325
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :goto_4d0
    return v1

    nop

    :pswitch_data_4d2
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_4d8
    .packed-switch 0x1
        :pswitch_4be
        :pswitch_4ac
        :pswitch_49a
        :pswitch_47c
        :pswitch_471
        :pswitch_45f
        :pswitch_44d
        :pswitch_436
        :pswitch_423
        :pswitch_417
        :pswitch_40b
        :pswitch_3ff
        :pswitch_3f0
        :pswitch_3e4
        :pswitch_3d1
        :pswitch_3c5
        :pswitch_3aa
        :pswitch_397
        :pswitch_37c
        :pswitch_369
        :pswitch_356
        :pswitch_343
        :pswitch_32c
        :pswitch_319
        :pswitch_30d
        :pswitch_2fa
        :pswitch_2ee
        :pswitch_2d7
        :pswitch_2c4
        :pswitch_2b5
        :pswitch_2a6
        :pswitch_293
        :pswitch_287
        :pswitch_27f
        :pswitch_273
        :pswitch_260
        :pswitch_251
        :pswitch_245
        :pswitch_22e
        :pswitch_217
        :pswitch_200
        :pswitch_1e9
        :pswitch_1dd
        :pswitch_1ce
        :pswitch_1b7
        :pswitch_1a4
        :pswitch_191
        :pswitch_182
        :pswitch_173
        :pswitch_167
        :pswitch_158
        :pswitch_14c
        :pswitch_139
        :pswitch_126
        :pswitch_10f
        :pswitch_f0
        :pswitch_e1
        :pswitch_c6
        :pswitch_af
        :pswitch_a0
        :pswitch_94
        :pswitch_8c
        :pswitch_80
        :pswitch_74
        :pswitch_68
        :pswitch_59
        :pswitch_46
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
