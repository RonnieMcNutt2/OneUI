.class public abstract Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;
.super Landroid/os/Binder;
.source "ISpenGestureService.java"

# interfaces
.implements Lcom/samsung/android/content/smartclip/ISpenGestureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/smartclip/ISpenGestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getBleSpenAddress:I = 0xf

.field static final TRANSACTION_getBleSpenCmfCode:I = 0x11

.field static final TRANSACTION_getCurrentEditorInfo:I = 0x21

.field static final TRANSACTION_getCurrentInputContext:I = 0x22

.field static final TRANSACTION_getCurrentMissingMethodFlags:I = 0x23

.field static final TRANSACTION_getScreenOffReason:I = 0x1c

.field static final TRANSACTION_getScrollableAreaInfo:I = 0x4

.field static final TRANSACTION_getScrollableViewInfo:I = 0x5

.field static final TRANSACTION_getSmartClipDataByScreenRect:I = 0x1

.field static final TRANSACTION_injectInputEvent:I = 0x3

.field static final TRANSACTION_isSpenInserted:I = 0xd

.field static final TRANSACTION_isSupportBleSpen:I = 0xe

.field static final TRANSACTION_notifyAirGesture:I = 0x1b

.field static final TRANSACTION_notifyBleSpenChargeLockState:I = 0x16

.field static final TRANSACTION_notifyKeyboardClosed:I = 0x24

.field static final TRANSACTION_registerAirGestureListener:I = 0x19

.field static final TRANSACTION_registerBleSpenChargeLockStateChangedListener:I = 0x17

.field static final TRANSACTION_registerHoverListener:I = 0x8

.field static final TRANSACTION_registerInputMethodInfoChangeListener:I = 0x1e

.field static final TRANSACTION_resetPenAttachSound:I = 0x29

.field static final TRANSACTION_resetPenDetachSound:I = 0x2b

.field static final TRANSACTION_resetPenHoverIcon:I = 0x27

.field static final TRANSACTION_saveBleSpenLogFile:I = 0x15

.field static final TRANSACTION_screenshot:I = 0x25

.field static final TRANSACTION_sendSmartClipRemoteRequestResult:I = 0x2

.field static final TRANSACTION_setBleSpenAddress:I = 0x10

.field static final TRANSACTION_setBleSpenCmfCode:I = 0x12

.field static final TRANSACTION_setCurrentInputInfo:I = 0x20

.field static final TRANSACTION_setHoverStayDetectEnabled:I = 0x6

.field static final TRANSACTION_setHoverStayValues:I = 0x7

.field static final TRANSACTION_setPenAttachSound:I = 0x28

.field static final TRANSACTION_setPenDetachSound:I = 0x2a

.field static final TRANSACTION_setPenHoverIcon:I = 0x26

.field static final TRANSACTION_setScreenOffReason:I = 0x1d

.field static final TRANSACTION_setSpenInsertionState:I = 0xc

.field static final TRANSACTION_setSpenPdctLowSensitivityEnable:I = 0x14

.field static final TRANSACTION_setSpenPowerSavingModeEnabled:I = 0xa

.field static final TRANSACTION_showTouchPointer:I = 0xb

.field static final TRANSACTION_unregisterAirGestureListener:I = 0x1a

.field static final TRANSACTION_unregisterBleSpenChargeLockStateChangedListener:I = 0x18

.field static final TRANSACTION_unregisterHoverListener:I = 0x9

.field static final TRANSACTION_unregisterInputMethodInfoChangeListener:I = 0x1f

.field static final TRANSACTION_writeBleSpenCommand:I = 0x13


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 162
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 163
    const-string v0, "com.samsung.android.content.smartclip.ISpenGestureService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/ISpenGestureService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 171
    if-nez p0, :cond_4

    .line 172
    const/4 v0, 0x0

    return-object v0

    .line 174
    :cond_4
    const-string v0, "com.samsung.android.content.smartclip.ISpenGestureService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 175
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/content/smartclip/ISpenGestureService;

    if-eqz v1, :cond_14

    .line 176
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/content/smartclip/ISpenGestureService;

    return-object v1

    .line 178
    :cond_14
    new-instance v1, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 187
    packed-switch p0, :pswitch_data_b2

    .line 363
    const/4 v0, 0x0

    return-object v0

    .line 359
    :pswitch_5
    const-string/jumbo v0, "resetPenDetachSound"

    return-object v0

    .line 355
    :pswitch_9
    const-string/jumbo v0, "setPenDetachSound"

    return-object v0

    .line 351
    :pswitch_d
    const-string/jumbo v0, "resetPenAttachSound"

    return-object v0

    .line 347
    :pswitch_11
    const-string/jumbo v0, "setPenAttachSound"

    return-object v0

    .line 343
    :pswitch_15
    const-string/jumbo v0, "resetPenHoverIcon"

    return-object v0

    .line 339
    :pswitch_19
    const-string/jumbo v0, "setPenHoverIcon"

    return-object v0

    .line 335
    :pswitch_1d
    const-string/jumbo v0, "screenshot"

    return-object v0

    .line 331
    :pswitch_21
    const-string/jumbo v0, "notifyKeyboardClosed"

    return-object v0

    .line 327
    :pswitch_25
    const-string/jumbo v0, "getCurrentMissingMethodFlags"

    return-object v0

    .line 323
    :pswitch_29
    const-string/jumbo v0, "getCurrentInputContext"

    return-object v0

    .line 319
    :pswitch_2d
    const-string/jumbo v0, "getCurrentEditorInfo"

    return-object v0

    .line 315
    :pswitch_31
    const-string/jumbo v0, "setCurrentInputInfo"

    return-object v0

    .line 311
    :pswitch_35
    const-string/jumbo v0, "unregisterInputMethodInfoChangeListener"

    return-object v0

    .line 307
    :pswitch_39
    const-string/jumbo v0, "registerInputMethodInfoChangeListener"

    return-object v0

    .line 303
    :pswitch_3d
    const-string/jumbo v0, "setScreenOffReason"

    return-object v0

    .line 299
    :pswitch_41
    const-string/jumbo v0, "getScreenOffReason"

    return-object v0

    .line 295
    :pswitch_45
    const-string/jumbo v0, "notifyAirGesture"

    return-object v0

    .line 291
    :pswitch_49
    const-string/jumbo v0, "unregisterAirGestureListener"

    return-object v0

    .line 287
    :pswitch_4d
    const-string/jumbo v0, "registerAirGestureListener"

    return-object v0

    .line 283
    :pswitch_51
    const-string/jumbo v0, "unregisterBleSpenChargeLockStateChangedListener"

    return-object v0

    .line 279
    :pswitch_55
    const-string/jumbo v0, "registerBleSpenChargeLockStateChangedListener"

    return-object v0

    .line 275
    :pswitch_59
    const-string/jumbo v0, "notifyBleSpenChargeLockState"

    return-object v0

    .line 271
    :pswitch_5d
    const-string/jumbo v0, "saveBleSpenLogFile"

    return-object v0

    .line 267
    :pswitch_61
    const-string/jumbo v0, "setSpenPdctLowSensitivityEnable"

    return-object v0

    .line 263
    :pswitch_65
    const-string/jumbo v0, "writeBleSpenCommand"

    return-object v0

    .line 259
    :pswitch_69
    const-string/jumbo v0, "setBleSpenCmfCode"

    return-object v0

    .line 255
    :pswitch_6d
    const-string/jumbo v0, "getBleSpenCmfCode"

    return-object v0

    .line 251
    :pswitch_71
    const-string/jumbo v0, "setBleSpenAddress"

    return-object v0

    .line 247
    :pswitch_75
    const-string/jumbo v0, "getBleSpenAddress"

    return-object v0

    .line 243
    :pswitch_79
    const-string/jumbo v0, "isSupportBleSpen"

    return-object v0

    .line 239
    :pswitch_7d
    const-string/jumbo v0, "isSpenInserted"

    return-object v0

    .line 235
    :pswitch_81
    const-string/jumbo v0, "setSpenInsertionState"

    return-object v0

    .line 231
    :pswitch_85
    const-string/jumbo v0, "showTouchPointer"

    return-object v0

    .line 227
    :pswitch_89
    const-string/jumbo v0, "setSpenPowerSavingModeEnabled"

    return-object v0

    .line 223
    :pswitch_8d
    const-string/jumbo v0, "unregisterHoverListener"

    return-object v0

    .line 219
    :pswitch_91
    const-string/jumbo v0, "registerHoverListener"

    return-object v0

    .line 215
    :pswitch_95
    const-string/jumbo v0, "setHoverStayValues"

    return-object v0

    .line 211
    :pswitch_99
    const-string/jumbo v0, "setHoverStayDetectEnabled"

    return-object v0

    .line 207
    :pswitch_9d
    const-string/jumbo v0, "getScrollableViewInfo"

    return-object v0

    .line 203
    :pswitch_a1
    const-string/jumbo v0, "getScrollableAreaInfo"

    return-object v0

    .line 199
    :pswitch_a5
    const-string/jumbo v0, "injectInputEvent"

    return-object v0

    .line 195
    :pswitch_a9
    const-string/jumbo v0, "sendSmartClipRemoteRequestResult"

    return-object v0

    .line 191
    :pswitch_ad
    const-string/jumbo v0, "getSmartClipDataByScreenRect"

    return-object v0

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_a9
        :pswitch_a5
        :pswitch_a1
        :pswitch_9d
        :pswitch_99
        :pswitch_95
        :pswitch_91
        :pswitch_8d
        :pswitch_89
        :pswitch_85
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
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

    .line 182
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 1572
    const/16 v0, 0x2a

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 370
    invoke-static {p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 26
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.samsung.android.content.smartclip.ISpenGestureService"

    .line 375
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_15

    const v0, 0xffffff

    if-gt v9, v0, :cond_15

    .line 376
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    :cond_15
    packed-switch v9, :pswitch_data_34e

    .line 386
    packed-switch v9, :pswitch_data_354

    .line 809
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 382
    :pswitch_20
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    return v13

    .line 801
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->resetPenDetachSound(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    goto/16 :goto_34c

    .line 790
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 792
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 793
    .local v1, "_arg1":Ljava/io/FileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->setPenDetachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    goto/16 :goto_34c

    .line 781
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/io/FileDescriptor;
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 782
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 783
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->resetPenAttachSound(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    goto/16 :goto_34c

    .line 770
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 772
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 773
    .restart local v1    # "_arg1":Ljava/io/FileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 774
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->setPenAttachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 775
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    goto/16 :goto_34c

    .line 761
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/io/FileDescriptor;
    :pswitch_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 762
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->resetPenHoverIcon(Ljava/lang/String;)V

    .line 764
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    goto/16 :goto_34c

    .line 746
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 748
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 750
    .restart local v1    # "_arg1":Ljava/io/FileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 752
    .local v2, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 753
    .local v3, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V

    .line 755
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    goto/16 :goto_34c

    .line 724
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/io/FileDescriptor;
    .end local v2    # "_arg2":F
    .end local v3    # "_arg3":F
    :pswitch_92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 726
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 728
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 730
    .local v16, "_arg2":Z
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/graphics/Rect;

    .line 732
    .local v17, "_arg3":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 734
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 736
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 737
    .local v20, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->screenshot(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 739
    .local v0, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 741
    goto/16 :goto_34c

    .line 717
    .end local v0    # "_result":Landroid/graphics/Bitmap;
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":Landroid/graphics/Rect;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":Z
    :pswitch_d1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->notifyKeyboardClosed()V

    .line 718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    goto/16 :goto_34c

    .line 710
    :pswitch_d9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->getCurrentMissingMethodFlags()I

    move-result v0

    .line 711
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    goto/16 :goto_34c

    .line 703
    .end local v0    # "_result":I
    :pswitch_e5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->getCurrentInputContext()Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v0

    .line 704
    .local v0, "_result":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 706
    goto/16 :goto_34c

    .line 696
    .end local v0    # "_result":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    :pswitch_f1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->getCurrentEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 697
    .local v0, "_result":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 699
    goto/16 :goto_34c

    .line 684
    .end local v0    # "_result":Landroid/view/inputmethod/EditorInfo;
    :pswitch_fd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v0

    .line 686
    .local v0, "_arg0":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    sget-object v1, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/EditorInfo;

    .line 688
    .local v1, "_arg1":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 689
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->setCurrentInputInfo(Lcom/android/internal/inputmethod/IRemoteInputConnection;Landroid/view/inputmethod/EditorInfo;I)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    goto/16 :goto_34c

    .line 675
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .end local v1    # "_arg1":Landroid/view/inputmethod/EditorInfo;
    .end local v2    # "_arg2":I
    :pswitch_11c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;

    move-result-object v0

    .line 676
    .local v0, "_arg0":Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->unregisterInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V

    .line 678
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    goto/16 :goto_34c

    .line 666
    .end local v0    # "_arg0":Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;
    :pswitch_12f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;

    move-result-object v0

    .line 667
    .restart local v0    # "_arg0":Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->registerInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V

    .line 669
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    goto/16 :goto_34c

    .line 657
    .end local v0    # "_arg0":Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;
    :pswitch_142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 658
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 659
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->setScreenOffReason(I)V

    .line 660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    goto/16 :goto_34c

    .line 649
    .end local v0    # "_arg0":I
    :pswitch_151
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->getScreenOffReason()I

    move-result v0

    .line 650
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    goto/16 :goto_34c

    .line 641
    .end local v0    # "_result":I
    :pswitch_15d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->notifyAirGesture(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    goto/16 :goto_34c

    .line 632
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_16c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/content/smartclip/IAirGestureListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/IAirGestureListener;

    move-result-object v0

    .line 633
    .local v0, "_arg0":Lcom/samsung/android/content/smartclip/IAirGestureListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->unregisterAirGestureListener(Lcom/samsung/android/content/smartclip/IAirGestureListener;)V

    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    goto/16 :goto_34c

    .line 623
    .end local v0    # "_arg0":Lcom/samsung/android/content/smartclip/IAirGestureListener;
    :pswitch_17f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/content/smartclip/IAirGestureListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/IAirGestureListener;

    move-result-object v0

    .line 624
    .restart local v0    # "_arg0":Lcom/samsung/android/content/smartclip/IAirGestureListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 625
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->registerAirGestureListener(Lcom/samsung/android/content/smartclip/IAirGestureListener;)V

    .line 626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    goto/16 :goto_34c

    .line 614
    .end local v0    # "_arg0":Lcom/samsung/android/content/smartclip/IAirGestureListener;
    :pswitch_192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;

    move-result-object v0

    .line 615
    .local v0, "_arg0":Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->unregisterBleSpenChargeLockStateChangedListener(Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;)V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    goto/16 :goto_34c

    .line 605
    .end local v0    # "_arg0":Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;
    :pswitch_1a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;

    move-result-object v0

    .line 606
    .restart local v0    # "_arg0":Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->registerBleSpenChargeLockStateChangedListener(Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;)V

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    goto/16 :goto_34c

    .line 596
    .end local v0    # "_arg0":Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;
    :pswitch_1b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 597
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->notifyBleSpenChargeLockState(Z)V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    goto/16 :goto_34c

    .line 587
    .end local v0    # "_arg0":Z
    :pswitch_1c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 588
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->saveBleSpenLogFile([B)V

    .line 590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    goto/16 :goto_34c

    .line 580
    .end local v0    # "_arg0":[B
    :pswitch_1d6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->setSpenPdctLowSensitivityEnable()V

    .line 581
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    goto/16 :goto_34c

    .line 572
    :pswitch_1de
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->writeBleSpenCommand(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    goto/16 :goto_34c

    .line 563
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 564
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->setBleSpenCmfCode(Ljava/lang/String;)V

    .line 566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    goto/16 :goto_34c

    .line 555
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1fc
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->getBleSpenCmfCode()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 558
    goto/16 :goto_34c

    .line 547
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 549
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->setBleSpenAddress(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    goto/16 :goto_34c

    .line 539
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_217
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->getBleSpenAddress()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    goto/16 :goto_34c

    .line 532
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_223
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->isSupportBleSpen()Z

    move-result v0

    .line 533
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 535
    goto/16 :goto_34c

    .line 525
    .end local v0    # "_result":Z
    :pswitch_22f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->isSpenInserted()Z

    move-result v0

    .line 526
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 528
    goto/16 :goto_34c

    .line 517
    .end local v0    # "_result":Z
    :pswitch_23b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 518
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->setSpenInsertionState(Z)V

    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    goto/16 :goto_34c

    .line 508
    .end local v0    # "_arg0":Z
    :pswitch_24a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 509
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->showTouchPointer(Z)V

    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    goto/16 :goto_34c

    .line 499
    .end local v0    # "_arg0":Z
    :pswitch_259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 500
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->setSpenPowerSavingModeEnabled(Z)V

    .line 502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    goto/16 :goto_34c

    .line 490
    .end local v0    # "_arg0":Z
    :pswitch_268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    move-result-object v0

    .line 491
    .local v0, "_arg0":Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->unregisterHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V

    .line 493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    goto/16 :goto_34c

    .line 481
    .end local v0    # "_arg0":Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;
    :pswitch_27b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    move-result-object v0

    .line 482
    .restart local v0    # "_arg0":Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->registerHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V

    .line 484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    goto/16 :goto_34c

    .line 468
    .end local v0    # "_arg0":Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;
    :pswitch_28e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 470
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 472
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 473
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->setHoverStayValues(III)V

    .line 475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    goto/16 :goto_34c

    .line 459
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_2a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 460
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->setHoverStayDetectEnabled(Z)V

    .line 462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    goto/16 :goto_34c

    .line 445
    .end local v0    # "_arg0":Z
    :pswitch_2b4
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 447
    .local v0, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 449
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 450
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v3

    .line 452
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 454
    goto/16 :goto_34c

    .line 433
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_2d3
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 435
    .restart local v0    # "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 436
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v2

    .line 438
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 440
    goto :goto_34c

    .line 416
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_2ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 418
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 420
    .local v7, "_arg1":I
    sget-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [Landroid/view/InputEvent;

    .line 422
    .local v14, "_arg2":[Landroid/view/InputEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 424
    .local v15, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 425
    .local v16, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->injectInputEvent(II[Landroid/view/InputEvent;ZLandroid/os/IBinder;)V

    .line 427
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    goto :goto_34c

    .line 407
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v14    # "_arg2":[Landroid/view/InputEvent;
    .end local v15    # "_arg3":Z
    .end local v16    # "_arg4":Landroid/os/IBinder;
    :pswitch_318
    sget-object v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    .line 408
    .local v0, "_arg0":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    goto :goto_34c

    .line 391
    .end local v0    # "_arg0":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    :pswitch_32a
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 393
    .local v0, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 395
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 397
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 398
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v4

    .line 400
    .local v4, "_result":Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {v11, v4, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 402
    nop

    .line 812
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    :goto_34c
    return v13

    nop

    :pswitch_data_34e
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_354
    .packed-switch 0x1
        :pswitch_32a
        :pswitch_318
        :pswitch_2ed
        :pswitch_2d3
        :pswitch_2b4
        :pswitch_2a5
        :pswitch_28e
        :pswitch_27b
        :pswitch_268
        :pswitch_259
        :pswitch_24a
        :pswitch_23b
        :pswitch_22f
        :pswitch_223
        :pswitch_217
        :pswitch_208
        :pswitch_1fc
        :pswitch_1ed
        :pswitch_1de
        :pswitch_1d6
        :pswitch_1c7
        :pswitch_1b8
        :pswitch_1a5
        :pswitch_192
        :pswitch_17f
        :pswitch_16c
        :pswitch_15d
        :pswitch_151
        :pswitch_142
        :pswitch_12f
        :pswitch_11c
        :pswitch_fd
        :pswitch_f1
        :pswitch_e5
        :pswitch_d9
        :pswitch_d1
        :pswitch_92
        :pswitch_77
        :pswitch_68
        :pswitch_55
        :pswitch_46
        :pswitch_33
        :pswitch_24
    .end packed-switch
.end method
