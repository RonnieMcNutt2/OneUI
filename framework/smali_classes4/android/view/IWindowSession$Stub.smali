.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final TRANSACTION_addToDisplay:I = 0x1

.field static final TRANSACTION_addToDisplayAsUser:I = 0x2

.field static final TRANSACTION_addToDisplayWithoutInputChannel:I = 0x3

.field static final TRANSACTION_cancelDragAndDrop:I = 0x10

.field static final TRANSACTION_cancelDraw:I = 0x2c

.field static final TRANSACTION_clearTouchableRegion:I = 0x2b

.field static final TRANSACTION_clearTspDeadzone:I = 0x2f

.field static final TRANSACTION_dragRecipientEntered:I = 0x11

.field static final TRANSACTION_dragRecipientExited:I = 0x12

.field static final TRANSACTION_dropForAccessibility:I = 0xe

.field static final TRANSACTION_finishDrawing:I = 0x9

.field static final TRANSACTION_finishMovingTask:I = 0x1e

.field static final TRANSACTION_generateDisplayHash:I = 0x29

.field static final TRANSACTION_getWindowId:I = 0x1b

.field static final TRANSACTION_grantEmbeddedWindowFocus:I = 0x28

.field static final TRANSACTION_grantInputChannel:I = 0x24

.field static final TRANSACTION_grantInputChannelWithTaskToken:I = 0x25

.field static final TRANSACTION_onRectangleOnScreenRequested:I = 0x1a

.field static final TRANSACTION_outOfMemory:I = 0x7

.field static final TRANSACTION_performClipDataUpdate:I = 0x31

.field static final TRANSACTION_performDrag:I = 0xc

.field static final TRANSACTION_performDragWithArea:I = 0xd

.field static final TRANSACTION_performHapticFeedback:I = 0xa

.field static final TRANSACTION_performHapticFeedbackAsync:I = 0xb

.field static final TRANSACTION_pokeDrawLock:I = 0x1c

.field static final TRANSACTION_relayout:I = 0x5

.field static final TRANSACTION_relayoutAsync:I = 0x6

.field static final TRANSACTION_remove:I = 0x4

.field static final TRANSACTION_removeWithTaskToken:I = 0x26

.field static final TRANSACTION_reportDropResult:I = 0xf

.field static final TRANSACTION_reportKeepClearAreasChanged:I = 0x23

.field static final TRANSACTION_reportSystemGestureExclusionChanged:I = 0x22

.field static final TRANSACTION_sendWallpaperCommand:I = 0x18

.field static final TRANSACTION_setInsets:I = 0x8

.field static final TRANSACTION_setOnBackInvokedCallbackInfo:I = 0x2a

.field static final TRANSACTION_setShouldZoomOutWallpaper:I = 0x15

.field static final TRANSACTION_setTspDeadzone:I = 0x2e

.field static final TRANSACTION_setTspNoteMode:I = 0x30

.field static final TRANSACTION_setWallpaperDisplayOffset:I = 0x17

.field static final TRANSACTION_setWallpaperPosition:I = 0x13

.field static final TRANSACTION_setWallpaperZoomOut:I = 0x14

.field static final TRANSACTION_startMovingTask:I = 0x1d

.field static final TRANSACTION_transferEmbeddedTouchFocusToHost:I = 0x2d

.field static final TRANSACTION_updateInputChannel:I = 0x27

.field static final TRANSACTION_updatePointerIcon:I = 0x1f

.field static final TRANSACTION_updateRequestedVisibleTypes:I = 0x21

.field static final TRANSACTION_updateTapExcludeRegion:I = 0x20

.field static final TRANSACTION_wallpaperCommandComplete:I = 0x19

.field static final TRANSACTION_wallpaperOffsetsComplete:I = 0x16


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 362
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 363
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 371
    if-nez p0, :cond_4

    .line 372
    const/4 v0, 0x0

    return-object v0

    .line 374
    :cond_4
    const-string v0, "android.view.IWindowSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 375
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_14

    .line 376
    move-object v1, v0

    check-cast v1, Landroid/view/IWindowSession;

    return-object v1

    .line 378
    :cond_14
    new-instance v1, Landroid/view/IWindowSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 387
    packed-switch p0, :pswitch_data_b8

    .line 587
    const/4 v0, 0x0

    return-object v0

    .line 583
    :pswitch_5
    const-string/jumbo v0, "performClipDataUpdate"

    return-object v0

    .line 579
    :pswitch_9
    const-string/jumbo v0, "setTspNoteMode"

    return-object v0

    .line 575
    :pswitch_d
    const-string v0, "clearTspDeadzone"

    return-object v0

    .line 571
    :pswitch_10
    const-string/jumbo v0, "setTspDeadzone"

    return-object v0

    .line 567
    :pswitch_14
    const-string/jumbo v0, "transferEmbeddedTouchFocusToHost"

    return-object v0

    .line 563
    :pswitch_18
    const-string v0, "cancelDraw"

    return-object v0

    .line 559
    :pswitch_1b
    const-string v0, "clearTouchableRegion"

    return-object v0

    .line 555
    :pswitch_1e
    const-string/jumbo v0, "setOnBackInvokedCallbackInfo"

    return-object v0

    .line 551
    :pswitch_22
    const-string v0, "generateDisplayHash"

    return-object v0

    .line 547
    :pswitch_25
    const-string v0, "grantEmbeddedWindowFocus"

    return-object v0

    .line 543
    :pswitch_28
    const-string/jumbo v0, "updateInputChannel"

    return-object v0

    .line 539
    :pswitch_2c
    const-string/jumbo v0, "removeWithTaskToken"

    return-object v0

    .line 535
    :pswitch_30
    const-string v0, "grantInputChannelWithTaskToken"

    return-object v0

    .line 531
    :pswitch_33
    const-string v0, "grantInputChannel"

    return-object v0

    .line 527
    :pswitch_36
    const-string/jumbo v0, "reportKeepClearAreasChanged"

    return-object v0

    .line 523
    :pswitch_3a
    const-string/jumbo v0, "reportSystemGestureExclusionChanged"

    return-object v0

    .line 519
    :pswitch_3e
    const-string/jumbo v0, "updateRequestedVisibleTypes"

    return-object v0

    .line 515
    :pswitch_42
    const-string/jumbo v0, "updateTapExcludeRegion"

    return-object v0

    .line 511
    :pswitch_46
    const-string/jumbo v0, "updatePointerIcon"

    return-object v0

    .line 507
    :pswitch_4a
    const-string v0, "finishMovingTask"

    return-object v0

    .line 503
    :pswitch_4d
    const-string/jumbo v0, "startMovingTask"

    return-object v0

    .line 499
    :pswitch_51
    const-string/jumbo v0, "pokeDrawLock"

    return-object v0

    .line 495
    :pswitch_55
    const-string v0, "getWindowId"

    return-object v0

    .line 491
    :pswitch_58
    const-string/jumbo v0, "onRectangleOnScreenRequested"

    return-object v0

    .line 487
    :pswitch_5c
    const-string/jumbo v0, "wallpaperCommandComplete"

    return-object v0

    .line 483
    :pswitch_60
    const-string/jumbo v0, "sendWallpaperCommand"

    return-object v0

    .line 479
    :pswitch_64
    const-string/jumbo v0, "setWallpaperDisplayOffset"

    return-object v0

    .line 475
    :pswitch_68
    const-string/jumbo v0, "wallpaperOffsetsComplete"

    return-object v0

    .line 471
    :pswitch_6c
    const-string/jumbo v0, "setShouldZoomOutWallpaper"

    return-object v0

    .line 467
    :pswitch_70
    const-string/jumbo v0, "setWallpaperZoomOut"

    return-object v0

    .line 463
    :pswitch_74
    const-string/jumbo v0, "setWallpaperPosition"

    return-object v0

    .line 459
    :pswitch_78
    const-string v0, "dragRecipientExited"

    return-object v0

    .line 455
    :pswitch_7b
    const-string v0, "dragRecipientEntered"

    return-object v0

    .line 451
    :pswitch_7e
    const-string v0, "cancelDragAndDrop"

    return-object v0

    .line 447
    :pswitch_81
    const-string/jumbo v0, "reportDropResult"

    return-object v0

    .line 443
    :pswitch_85
    const-string v0, "dropForAccessibility"

    return-object v0

    .line 439
    :pswitch_88
    const-string/jumbo v0, "performDragWithArea"

    return-object v0

    .line 435
    :pswitch_8c
    const-string/jumbo v0, "performDrag"

    return-object v0

    .line 431
    :pswitch_90
    const-string/jumbo v0, "performHapticFeedbackAsync"

    return-object v0

    .line 427
    :pswitch_94
    const-string/jumbo v0, "performHapticFeedback"

    return-object v0

    .line 423
    :pswitch_98
    const-string v0, "finishDrawing"

    return-object v0

    .line 419
    :pswitch_9b
    const-string/jumbo v0, "setInsets"

    return-object v0

    .line 415
    :pswitch_9f
    const-string/jumbo v0, "outOfMemory"

    return-object v0

    .line 411
    :pswitch_a3
    const-string/jumbo v0, "relayoutAsync"

    return-object v0

    .line 407
    :pswitch_a7
    const-string/jumbo v0, "relayout"

    return-object v0

    .line 403
    :pswitch_ab
    const-string/jumbo v0, "remove"

    return-object v0

    .line 399
    :pswitch_af
    const-string v0, "addToDisplayWithoutInputChannel"

    return-object v0

    .line 395
    :pswitch_b2
    const-string v0, "addToDisplayAsUser"

    return-object v0

    .line 391
    :pswitch_b5
    const-string v0, "addToDisplay"

    return-object v0

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_b5
        :pswitch_b2
        :pswitch_af
        :pswitch_ab
        :pswitch_a7
        :pswitch_a3
        :pswitch_9f
        :pswitch_9b
        :pswitch_98
        :pswitch_94
        :pswitch_90
        :pswitch_8c
        :pswitch_88
        :pswitch_85
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_74
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_5c
        :pswitch_58
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1e
        :pswitch_1b
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

    .line 382
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 2478
    const/16 v0, 0x30

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 594
    invoke-static {p1}, Landroid/view/IWindowSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 38
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "android.view.IWindowSession"

    .line 599
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_15

    const v0, 0xffffff

    if-gt v14, v0, :cond_15

    .line 600
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    :cond_15
    packed-switch v14, :pswitch_data_916

    .line 610
    packed-switch v14, :pswitch_data_91c

    .line 1353
    move-object v15, v12

    move-object v14, v13

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 606
    :pswitch_22
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 607
    return v10

    .line 1346
    :pswitch_26
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    .line 1347
    .local v0, "_arg0":Landroid/content/ClipData;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1348
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->performClipDataUpdate(Landroid/content/ClipData;)V

    .line 1349
    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v12, v10

    goto/16 :goto_915

    .line 1336
    .end local v0    # "_arg0":Landroid/content/ClipData;
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1338
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1339
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1340
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->setTspNoteMode(Landroid/view/IWindow;Z)V

    .line 1341
    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v12, v10

    goto/16 :goto_915

    .line 1327
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Z
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1328
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1329
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->clearTspDeadzone(Landroid/view/IWindow;)V

    .line 1330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v12, v10

    goto/16 :goto_915

    .line 1316
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1318
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1319
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1320
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->setTspDeadzone(Landroid/view/IWindow;Landroid/os/Bundle;)V

    .line 1321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v12, v10

    goto/16 :goto_915

    .line 1306
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1307
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1308
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->transferEmbeddedTouchFocusToHost(Landroid/view/IWindow;)Z

    move-result v1

    .line 1309
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1310
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1311
    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v12, v10

    goto/16 :goto_915

    .line 1296
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_result":Z
    :pswitch_a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1297
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1298
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->cancelDraw(Landroid/view/IWindow;)Z

    move-result v1

    .line 1299
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1301
    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v12, v10

    goto/16 :goto_915

    .line 1287
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_result":Z
    :pswitch_c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1288
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1289
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->clearTouchableRegion(Landroid/view/IWindow;)V

    .line 1290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v12, v10

    goto/16 :goto_915

    .line 1277
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_dc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1279
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/window/OnBackInvokedCallbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/OnBackInvokedCallbackInfo;

    .line 1280
    .local v1, "_arg1":Landroid/window/OnBackInvokedCallbackInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1281
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V

    .line 1282
    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v12, v10

    goto/16 :goto_915

    .line 1263
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/window/OnBackInvokedCallbackInfo;
    :pswitch_f9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1265
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1267
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1269
    .local v2, "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 1270
    .local v3, "_arg3":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1271
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->generateDisplayHash(Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 1272
    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v12, v10

    goto/16 :goto_915

    .line 1250
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/RemoteCallback;
    :pswitch_122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1252
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1254
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1255
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1256
    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V

    .line 1257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v12, v10

    goto/16 :goto_915

    .line 1230
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Z
    :pswitch_142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 1232
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1234
    .local v9, "_arg1":I
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/SurfaceControl;

    .line 1236
    .local v16, "_arg2":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1238
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1240
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1242
    .local v19, "_arg5":I
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/graphics/Region;

    .line 1243
    .local v20, "_arg6":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1244
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v9

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V

    .line 1245
    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v12, v10

    goto/16 :goto_915

    .line 1219
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v9    # "_arg1":I
    .end local v16    # "_arg2":Landroid/view/SurfaceControl;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":Landroid/graphics/Region;
    :pswitch_185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1221
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/WindowContainerToken;

    .line 1222
    .local v1, "_arg1":Landroid/window/WindowContainerToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1223
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->removeWithTaskToken(Landroid/view/IWindow;Landroid/window/WindowContainerToken;)V

    .line 1224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v12, v10

    goto/16 :goto_915

    .line 1183
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/window/WindowContainerToken;
    :pswitch_1a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1185
    .local v16, "_arg0":I
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/SurfaceControl;

    .line 1187
    .local v17, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v18

    .line 1189
    .local v18, "_arg2":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    .line 1191
    .local v19, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1193
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1195
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1197
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1199
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v24

    .line 1201
    .local v24, "_arg8":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v25

    .line 1203
    .local v25, "_arg9":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1205
    .local v26, "_arg10":Ljava/lang/String;
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v9, v0

    .line 1207
    .local v9, "_arg11":Landroid/view/InputChannel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1209
    .local v27, "_arg12":I
    sget-object v0, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Landroid/window/WindowContainerToken;

    .line 1210
    .local v28, "_arg13":Landroid/window/WindowContainerToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1211
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v29, v9

    .end local v9    # "_arg11":Landroid/view/InputChannel;
    .local v29, "_arg11":Landroid/view/InputChannel;
    move-object/from16 v9, v24

    move v15, v10

    move-object/from16 v10, v25

    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v30, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v26

    move-object/from16 v12, v29

    move/from16 v13, v27

    move-object/from16 v14, v28

    invoke-virtual/range {v0 .. v14}, Landroid/view/IWindowSession$Stub;->grantInputChannelWithTaskToken(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIIILandroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/window/WindowContainerToken;)V

    .line 1212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1213
    move-object/from16 v14, p3

    move-object/from16 v0, v29

    .end local v29    # "_arg11":Landroid/view/InputChannel;
    .local v0, "_arg11":Landroid/view/InputChannel;
    invoke-virtual {v14, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1214
    move v12, v15

    move-object v15, v14

    move-object/from16 v14, p2

    goto/16 :goto_915

    .line 1151
    .end local v0    # "_arg11":Landroid/view/InputChannel;
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Landroid/view/SurfaceControl;
    .end local v18    # "_arg2":Landroid/view/IWindow;
    .end local v19    # "_arg3":Landroid/os/IBinder;
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":Landroid/os/IBinder;
    .end local v25    # "_arg9":Landroid/os/IBinder;
    .end local v26    # "_arg10":Ljava/lang/String;
    .end local v27    # "_arg12":I
    .end local v28    # "_arg13":Landroid/window/WindowContainerToken;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_228
    move v15, v10

    move-object/from16 v30, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1153
    .local v13, "_arg0":I
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v12, p2

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/SurfaceControl;

    .line 1155
    .local v16, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v17

    .line 1157
    .local v17, "_arg2":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 1159
    .local v18, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1161
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1163
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1165
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1167
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    .line 1169
    .local v23, "_arg8":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v24

    .line 1171
    .local v24, "_arg9":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 1173
    .local v25, "_arg10":Ljava/lang/String;
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v11, v0

    .line 1174
    .local v11, "_arg11":Landroid/view/InputChannel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1175
    move-object/from16 v0, p0

    move v1, v13

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v26, v11

    .end local v11    # "_arg11":Landroid/view/InputChannel;
    .local v26, "_arg11":Landroid/view/InputChannel;
    move-object/from16 v11, v25

    move-object/from16 v12, v26

    invoke-virtual/range {v0 .. v12}, Landroid/view/IWindowSession$Stub;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIIILandroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V

    .line 1176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    move-object/from16 v0, v26

    .end local v26    # "_arg11":Landroid/view/InputChannel;
    .restart local v0    # "_arg11":Landroid/view/InputChannel;
    invoke-virtual {v14, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1178
    move v12, v15

    move-object v15, v14

    move-object/from16 v14, p2

    goto/16 :goto_915

    .line 1139
    .end local v0    # "_arg11":Landroid/view/InputChannel;
    .end local v13    # "_arg0":I
    .end local v16    # "_arg1":Landroid/view/SurfaceControl;
    .end local v17    # "_arg2":Landroid/view/IWindow;
    .end local v18    # "_arg3":Landroid/os/IBinder;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":I
    .end local v23    # "_arg8":Landroid/os/IBinder;
    .end local v24    # "_arg9":Landroid/os/IBinder;
    .end local v25    # "_arg10":Ljava/lang/String;
    .end local v30    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_299
    move v15, v10

    move-object/from16 v30, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1141
    .local v0, "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v13, p2

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1143
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1144
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1145
    move v12, v15

    move-object/from16 v15, p0

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V

    .line 1146
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 1129
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2c0
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1131
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1132
    .restart local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1133
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V

    .line 1134
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 1119
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2dc
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1121
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1122
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1123
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->updateRequestedVisibleTypes(Landroid/view/IWindow;I)V

    .line 1124
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 1109
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":I
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2f6
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1111
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    .line 1112
    .local v1, "_arg1":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1113
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 1114
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 1101
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/graphics/Region;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_314
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1102
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1103
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->updatePointerIcon(Landroid/view/IWindow;)V

    .line 1104
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 1093
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_32a
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1094
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1095
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->finishMovingTask(Landroid/view/IWindow;)V

    .line 1096
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 1079
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_340
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1081
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1083
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 1084
    .local v2, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1085
    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->startMovingTask(Landroid/view/IWindow;FF)Z

    move-result v3

    .line 1086
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1088
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 1070
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":F
    .end local v2    # "_arg2":F
    .end local v3    # "_result":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_365
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1071
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1072
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->pokeDrawLock(Landroid/os/IBinder;)V

    .line 1073
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 1060
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_37a
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1061
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v1

    .line 1063
    .local v1, "_result":Landroid/view/IWindowId;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1065
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 1050
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Landroid/view/IWindowId;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_393
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1052
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1053
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1054
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 1055
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 1040
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3ad
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1042
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1043
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1044
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 1045
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 1018
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3c7
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 1020
    .restart local v8    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1022
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1024
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1026
    .local v11, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1028
    .local v16, "_arg4":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 1030
    .local v17, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 1031
    .local v18, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1032
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move v4, v11

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 1033
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    invoke-virtual {v14, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1035
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 1006
    .end local v0    # "_result":Landroid/os/Bundle;
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":I
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":Landroid/os/Bundle;
    .end local v18    # "_arg6":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_40a
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1008
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1010
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1011
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1012
    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V

    .line 1013
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 998
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_424
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 999
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1000
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 1001
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 988
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_436
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 990
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 991
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V

    .line 993
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 978
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_44c
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 980
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 981
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 982
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    .line 983
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 962
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":F
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_462
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 964
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 966
    .local v7, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 968
    .local v8, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 970
    .local v9, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 971
    .local v10, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 972
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    .line 973
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 954
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":F
    .end local v8    # "_arg2":F
    .end local v9    # "_arg3":F
    .end local v10    # "_arg4":F
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_48b
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 955
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 957
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 946
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4a1
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 947
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 948
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 949
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 936
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4b7
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 938
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 939
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->cancelDragAndDrop(Landroid/os/IBinder;Z)V

    .line 941
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 926
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4cd
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 928
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 929
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 930
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    .line 931
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 912
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4e7
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 914
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 916
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 917
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 918
    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->dropForAccessibility(Landroid/view/IWindow;II)Z

    move-result v3

    .line 919
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 921
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 882
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_50c
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v16

    .line 884
    .local v16, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 886
    .local v17, "_arg1":I
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/SurfaceControl;

    .line 888
    .local v18, "_arg2":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 890
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v20

    .line 892
    .local v20, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v21

    .line 894
    .local v21, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v22

    .line 896
    .local v22, "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v23

    .line 898
    .local v23, "_arg7":F
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/content/ClipData;

    .line 900
    .local v24, "_arg8":Landroid/content/ClipData;
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/graphics/RectF;

    .line 902
    .local v25, "_arg9":Landroid/graphics/RectF;
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/graphics/Point;

    .line 903
    .local v26, "_arg10":Landroid/graphics/Point;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Landroid/view/IWindowSession$Stub;->performDragWithArea(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;Landroid/graphics/RectF;Landroid/graphics/Point;)Landroid/os/IBinder;

    move-result-object v0

    .line 905
    .local v0, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 907
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 856
    .end local v0    # "_result":Landroid/os/IBinder;
    .end local v16    # "_arg0":Landroid/view/IWindow;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Landroid/view/SurfaceControl;
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":F
    .end local v21    # "_arg5":F
    .end local v22    # "_arg6":F
    .end local v23    # "_arg7":F
    .end local v24    # "_arg8":Landroid/content/ClipData;
    .end local v25    # "_arg9":Landroid/graphics/RectF;
    .end local v26    # "_arg10":Landroid/graphics/Point;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_581
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v10

    .line 858
    .local v10, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 860
    .local v11, "_arg1":I
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/SurfaceControl;

    .line 862
    .local v16, "_arg2":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 864
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v18

    .line 866
    .local v18, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    .line 868
    .local v19, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v20

    .line 870
    .local v20, "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v21

    .line 872
    .local v21, "_arg7":F
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/content/ClipData;

    .line 873
    .local v22, "_arg8":Landroid/content/ClipData;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 874
    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v11

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move-object/from16 v9, v22

    invoke-virtual/range {v0 .. v9}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;

    move-result-object v0

    .line 875
    .restart local v0    # "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 877
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 846
    .end local v0    # "_result":Landroid/os/IBinder;
    .end local v10    # "_arg0":Landroid/view/IWindow;
    .end local v16    # "_arg2":Landroid/view/SurfaceControl;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":F
    .end local v19    # "_arg5":F
    .end local v20    # "_arg6":F
    .end local v21    # "_arg7":F
    .end local v22    # "_arg8":Landroid/content/ClipData;
    .end local v30    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_5dc
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 848
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 849
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 850
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->performHapticFeedbackAsync(IZ)V

    .line 851
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 834
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5f2
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 836
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 837
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->performHapticFeedback(IZ)Z

    move-result v2

    .line 839
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 841
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 822
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_60f
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 824
    .local v0, "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    .line 826
    .local v1, "_arg1":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 827
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 828
    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 829
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 806
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/view/SurfaceControl$Transaction;
    .end local v2    # "_arg2":I
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_631
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 808
    .local v6, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 810
    .local v7, "_arg1":I
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/graphics/Rect;

    .line 812
    .local v8, "_arg2":Landroid/graphics/Rect;
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/graphics/Rect;

    .line 814
    .local v9, "_arg3":Landroid/graphics/Rect;
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/graphics/Region;

    .line 815
    .local v10, "_arg4":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 816
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 817
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 796
    .end local v6    # "_arg0":Landroid/view/IWindow;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Landroid/graphics/Rect;
    .end local v9    # "_arg3":Landroid/graphics/Rect;
    .end local v10    # "_arg4":Landroid/graphics/Region;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_66d
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 797
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v1

    .line 799
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 801
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 774
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_result":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_68a
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v9

    .line 776
    .local v9, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/WindowManager$LayoutParams;

    .line 778
    .local v10, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 780
    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 782
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 784
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 786
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 788
    .local v19, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 789
    .local v20, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Landroid/view/IWindowSession$Stub;->relayoutAsync(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIII)V

    .line 791
    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_915

    .line 732
    .end local v9    # "_arg0":Landroid/view/IWindow;
    .end local v10    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":I
    .end local v20    # "_arg7":I
    .end local v30    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_6d0
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v16

    .line 734
    .local v16, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    .line 736
    .local v17, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 738
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 740
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 742
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 744
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 746
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 748
    .local v23, "_arg7":I
    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    move-object v11, v0

    .line 750
    .local v11, "_arg8":Landroid/window/ClientWindowFrames;
    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    move-object v10, v0

    .line 752
    .local v10, "_arg9":Landroid/util/MergedConfiguration;
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    move-object v9, v0

    .line 754
    .local v9, "_arg10":Landroid/view/SurfaceControl;
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v8, v0

    .line 756
    .local v8, "_arg11":Landroid/view/InsetsState;
    new-instance v0, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v0}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    move-object v7, v0

    .line 758
    .local v7, "_arg12":Landroid/view/InsetsSourceControl$Array;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    .line 759
    .local v6, "_arg13":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v24, v6

    .end local v6    # "_arg13":Landroid/os/Bundle;
    .local v24, "_arg13":Landroid/os/Bundle;
    move/from16 v6, v21

    move-object/from16 v25, v7

    .end local v7    # "_arg12":Landroid/view/InsetsSourceControl$Array;
    .local v25, "_arg12":Landroid/view/InsetsSourceControl$Array;
    move/from16 v7, v22

    move-object/from16 v26, v8

    .end local v8    # "_arg11":Landroid/view/InsetsState;
    .local v26, "_arg11":Landroid/view/InsetsState;
    move/from16 v8, v23

    move-object/from16 v27, v9

    .end local v9    # "_arg10":Landroid/view/SurfaceControl;
    .local v27, "_arg10":Landroid/view/SurfaceControl;
    move-object v9, v11

    move-object/from16 v28, v10

    .end local v10    # "_arg9":Landroid/util/MergedConfiguration;
    .local v28, "_arg9":Landroid/util/MergedConfiguration;
    move-object v15, v11

    .end local v11    # "_arg8":Landroid/window/ClientWindowFrames;
    .local v15, "_arg8":Landroid/window/ClientWindowFrames;
    move-object/from16 v11, v27

    move-object/from16 v12, v26

    move-object/from16 v13, v25

    move-object/from16 v29, v15

    move-object v15, v14

    .end local v15    # "_arg8":Landroid/window/ClientWindowFrames;
    .local v29, "_arg8":Landroid/window/ClientWindowFrames;
    move-object/from16 v14, v24

    invoke-virtual/range {v0 .. v14}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/os/Bundle;)I

    move-result v0

    .line 761
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    move-object/from16 v1, v29

    const/4 v12, 0x1

    .end local v29    # "_arg8":Landroid/window/ClientWindowFrames;
    .local v1, "_arg8":Landroid/window/ClientWindowFrames;
    invoke-virtual {v15, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 764
    move-object/from16 v2, v28

    .end local v28    # "_arg9":Landroid/util/MergedConfiguration;
    .local v2, "_arg9":Landroid/util/MergedConfiguration;
    invoke-virtual {v15, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 765
    move-object/from16 v3, v27

    .end local v27    # "_arg10":Landroid/view/SurfaceControl;
    .local v3, "_arg10":Landroid/view/SurfaceControl;
    invoke-virtual {v15, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 766
    move-object/from16 v4, v26

    .end local v26    # "_arg11":Landroid/view/InsetsState;
    .local v4, "_arg11":Landroid/view/InsetsState;
    invoke-virtual {v15, v4, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 767
    move-object/from16 v5, v25

    .end local v25    # "_arg12":Landroid/view/InsetsSourceControl$Array;
    .local v5, "_arg12":Landroid/view/InsetsSourceControl$Array;
    invoke-virtual {v15, v5, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 768
    move-object/from16 v6, v24

    .end local v24    # "_arg13":Landroid/os/Bundle;
    .restart local v6    # "_arg13":Landroid/os/Bundle;
    invoke-virtual {v15, v6, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 769
    move-object/from16 v14, p2

    goto/16 :goto_915

    .line 723
    .end local v0    # "_result":I
    .end local v1    # "_arg8":Landroid/window/ClientWindowFrames;
    .end local v2    # "_arg9":Landroid/util/MergedConfiguration;
    .end local v3    # "_arg10":Landroid/view/SurfaceControl;
    .end local v4    # "_arg11":Landroid/view/InsetsState;
    .end local v5    # "_arg12":Landroid/view/InsetsSourceControl$Array;
    .end local v6    # "_arg13":Landroid/os/Bundle;
    .end local v16    # "_arg0":Landroid/view/IWindow;
    .end local v17    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v30    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_77b
    move-object/from16 v30, v11

    move-object v15, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 724
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    move-object/from16 v13, p0

    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->remove(Landroid/view/IWindow;)V

    .line 726
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    move-object/from16 v14, p2

    goto/16 :goto_915

    .line 693
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_796
    move-object/from16 v30, v11

    move-object v13, v15

    move-object v15, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v8

    .line 695
    .local v8, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v14, p2

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/WindowManager$LayoutParams;

    .line 697
    .local v9, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 699
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 701
    .local v11, "_arg3":I
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v7, v0

    .line 703
    .local v7, "_arg4":Landroid/view/InsetsState;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v0

    .line 705
    .local v6, "_arg5":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 706
    .local v5, "_arg6_length":I
    if-gez v5, :cond_7cb

    .line 707
    const/4 v0, 0x0

    move-object v4, v0

    .local v0, "_arg6":[F
    goto :goto_7ce

    .line 709
    .end local v0    # "_arg6":[F
    :cond_7cb
    new-array v0, v5, [F

    move-object v4, v0

    .line 711
    .local v4, "_arg6":[F
    :goto_7ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 712
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move-object/from16 v16, v4

    .end local v4    # "_arg6":[F
    .local v16, "_arg6":[F
    move v4, v11

    move/from16 v17, v5

    .end local v5    # "_arg6_length":I
    .local v17, "_arg6_length":I
    move-object v5, v7

    move-object/from16 v18, v6

    .end local v6    # "_arg5":Landroid/graphics/Rect;
    .local v18, "_arg5":Landroid/graphics/Rect;
    move-object/from16 v19, v8

    move-object v8, v7

    .end local v7    # "_arg4":Landroid/view/InsetsState;
    .local v8, "_arg4":Landroid/view/InsetsState;
    .local v19, "_arg0":Landroid/view/IWindow;
    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsState;Landroid/graphics/Rect;[F)I

    move-result v0

    .line 713
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    invoke-virtual {v15, v8, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 716
    move-object/from16 v1, v18

    .end local v18    # "_arg5":Landroid/graphics/Rect;
    .local v1, "_arg5":Landroid/graphics/Rect;
    invoke-virtual {v15, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 717
    move-object/from16 v2, v16

    .end local v16    # "_arg6":[F
    .local v2, "_arg6":[F
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 718
    goto/16 :goto_915

    .line 653
    .end local v0    # "_result":I
    .end local v1    # "_arg5":Landroid/graphics/Rect;
    .end local v2    # "_arg6":[F
    .end local v8    # "_arg4":Landroid/view/InsetsState;
    .end local v9    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "_arg2":I
    .end local v17    # "_arg6_length":I
    .end local v19    # "_arg0":Landroid/view/IWindow;
    .end local v30    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_7fc
    move-object/from16 v30, v11

    move-object v14, v13

    move-object v13, v15

    move-object v15, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v16

    .line 655
    .local v16, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    .line 657
    .local v17, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 659
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 661
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 663
    .restart local v20    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 665
    .restart local v21    # "_arg5":I
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v11, v0

    .line 667
    .local v11, "_arg6":Landroid/view/InputChannel;
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v10, v0

    .line 669
    .local v10, "_arg7":Landroid/view/InsetsState;
    new-instance v0, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v0}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    move-object v9, v0

    .line 671
    .local v9, "_arg8":Landroid/view/InsetsSourceControl$Array;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v0

    .line 673
    .local v8, "_arg9":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 674
    .local v7, "_arg10_length":I
    if-gez v7, :cond_845

    .line 675
    const/4 v0, 0x0

    move-object v6, v0

    .local v0, "_arg10":[F
    goto :goto_848

    .line 677
    .end local v0    # "_arg10":[F
    :cond_845
    new-array v0, v7, [F

    move-object v6, v0

    .line 679
    .local v6, "_arg10":[F
    :goto_848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v22, v6

    .end local v6    # "_arg10":[F
    .local v22, "_arg10":[F
    move/from16 v6, v21

    move/from16 v23, v7

    .end local v7    # "_arg10_length":I
    .local v23, "_arg10_length":I
    move-object v7, v11

    move-object/from16 v24, v8

    .end local v8    # "_arg9":Landroid/graphics/Rect;
    .local v24, "_arg9":Landroid/graphics/Rect;
    move-object v8, v10

    move-object/from16 v25, v9

    .end local v9    # "_arg8":Landroid/view/InsetsSourceControl$Array;
    .local v25, "_arg8":Landroid/view/InsetsSourceControl$Array;
    move-object/from16 v31, v10

    .end local v10    # "_arg7":Landroid/view/InsetsState;
    .local v31, "_arg7":Landroid/view/InsetsState;
    move-object/from16 v10, v24

    move-object v13, v11

    .end local v11    # "_arg6":Landroid/view/InputChannel;
    .local v13, "_arg6":Landroid/view/InputChannel;
    move-object/from16 v11, v22

    invoke-virtual/range {v0 .. v11}, Landroid/view/IWindowSession$Stub;->addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    move-result v0

    .line 681
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 683
    invoke-virtual {v15, v13, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 684
    move-object/from16 v1, v31

    .end local v31    # "_arg7":Landroid/view/InsetsState;
    .local v1, "_arg7":Landroid/view/InsetsState;
    invoke-virtual {v15, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 685
    move-object/from16 v2, v25

    .end local v25    # "_arg8":Landroid/view/InsetsSourceControl$Array;
    .local v2, "_arg8":Landroid/view/InsetsSourceControl$Array;
    invoke-virtual {v15, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 686
    move-object/from16 v3, v24

    .end local v24    # "_arg9":Landroid/graphics/Rect;
    .local v3, "_arg9":Landroid/graphics/Rect;
    invoke-virtual {v15, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 687
    move-object/from16 v4, v22

    .end local v22    # "_arg10":[F
    .local v4, "_arg10":[F
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 688
    goto/16 :goto_915

    .line 615
    .end local v0    # "_result":I
    .end local v1    # "_arg7":Landroid/view/InsetsState;
    .end local v2    # "_arg8":Landroid/view/InsetsSourceControl$Array;
    .end local v3    # "_arg9":Landroid/graphics/Rect;
    .end local v4    # "_arg10":[F
    .end local v13    # "_arg6":Landroid/view/InputChannel;
    .end local v16    # "_arg0":Landroid/view/IWindow;
    .end local v17    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v23    # "_arg10_length":I
    .end local v30    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_88d
    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v11

    .line 617
    .local v11, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/view/WindowManager$LayoutParams;

    .line 619
    .local v13, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 621
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 623
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 625
    .local v18, "_arg4":I
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v10, v0

    .line 627
    .local v10, "_arg5":Landroid/view/InputChannel;
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v9, v0

    .line 629
    .local v9, "_arg6":Landroid/view/InsetsState;
    new-instance v0, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v0}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    move-object v8, v0

    .line 631
    .local v8, "_arg7":Landroid/view/InsetsSourceControl$Array;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v0

    .line 633
    .local v7, "_arg8":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 634
    .local v6, "_arg9_length":I
    if-gez v6, :cond_8d0

    .line 635
    const/4 v0, 0x0

    move-object v5, v0

    .local v0, "_arg9":[F
    goto :goto_8d3

    .line 637
    .end local v0    # "_arg9":[F
    :cond_8d0
    new-array v0, v6, [F

    move-object v5, v0

    .line 639
    .local v5, "_arg9":[F
    :goto_8d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v13

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v19, v5

    .end local v5    # "_arg9":[F
    .local v19, "_arg9":[F
    move/from16 v5, v18

    move/from16 v20, v6

    .end local v6    # "_arg9_length":I
    .local v20, "_arg9_length":I
    move-object v6, v10

    move-object/from16 v21, v7

    .end local v7    # "_arg8":Landroid/graphics/Rect;
    .local v21, "_arg8":Landroid/graphics/Rect;
    move-object v7, v9

    move-object/from16 v22, v8

    .end local v8    # "_arg7":Landroid/view/InsetsSourceControl$Array;
    .local v22, "_arg7":Landroid/view/InsetsSourceControl$Array;
    move-object/from16 v32, v9

    .end local v9    # "_arg6":Landroid/view/InsetsState;
    .local v32, "_arg6":Landroid/view/InsetsState;
    move-object/from16 v9, v21

    move-object/from16 v23, v11

    move-object v11, v10

    .end local v10    # "_arg5":Landroid/view/InputChannel;
    .local v11, "_arg5":Landroid/view/InputChannel;
    .local v23, "_arg0":Landroid/view/IWindow;
    move-object/from16 v10, v19

    invoke-virtual/range {v0 .. v10}, Landroid/view/IWindowSession$Stub;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    move-result v0

    .line 641
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    invoke-virtual {v15, v11, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 644
    move-object/from16 v1, v32

    .end local v32    # "_arg6":Landroid/view/InsetsState;
    .local v1, "_arg6":Landroid/view/InsetsState;
    invoke-virtual {v15, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 645
    move-object/from16 v2, v22

    .end local v22    # "_arg7":Landroid/view/InsetsSourceControl$Array;
    .local v2, "_arg7":Landroid/view/InsetsSourceControl$Array;
    invoke-virtual {v15, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 646
    move-object/from16 v3, v21

    .end local v21    # "_arg8":Landroid/graphics/Rect;
    .local v3, "_arg8":Landroid/graphics/Rect;
    invoke-virtual {v15, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 647
    move-object/from16 v4, v19

    .end local v19    # "_arg9":[F
    .local v4, "_arg9":[F
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 648
    nop

    .line 1356
    .end local v0    # "_result":I
    .end local v1    # "_arg6":Landroid/view/InsetsState;
    .end local v2    # "_arg7":Landroid/view/InsetsSourceControl$Array;
    .end local v3    # "_arg8":Landroid/graphics/Rect;
    .end local v4    # "_arg9":[F
    .end local v11    # "_arg5":Landroid/view/InputChannel;
    .end local v13    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":I
    .end local v20    # "_arg9_length":I
    .end local v23    # "_arg0":Landroid/view/IWindow;
    :goto_915
    return v12

    :pswitch_data_916
    .packed-switch 0x5f4e5446
        :pswitch_22
    .end packed-switch

    :pswitch_data_91c
    .packed-switch 0x1
        :pswitch_88d
        :pswitch_7fc
        :pswitch_796
        :pswitch_77b
        :pswitch_6d0
        :pswitch_68a
        :pswitch_66d
        :pswitch_631
        :pswitch_60f
        :pswitch_5f2
        :pswitch_5dc
        :pswitch_581
        :pswitch_50c
        :pswitch_4e7
        :pswitch_4cd
        :pswitch_4b7
        :pswitch_4a1
        :pswitch_48b
        :pswitch_462
        :pswitch_44c
        :pswitch_436
        :pswitch_424
        :pswitch_40a
        :pswitch_3c7
        :pswitch_3ad
        :pswitch_393
        :pswitch_37a
        :pswitch_365
        :pswitch_340
        :pswitch_32a
        :pswitch_314
        :pswitch_2f6
        :pswitch_2dc
        :pswitch_2c0
        :pswitch_299
        :pswitch_228
        :pswitch_1a5
        :pswitch_185
        :pswitch_142
        :pswitch_122
        :pswitch_f9
        :pswitch_dc
        :pswitch_c4
        :pswitch_a8
        :pswitch_8c
        :pswitch_6c
        :pswitch_54
        :pswitch_3b
        :pswitch_26
    .end packed-switch
.end method
