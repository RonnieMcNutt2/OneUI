.class public abstract Landroid/view/accessibility/IWindowMagnificationConnection$Stub;
.super Landroid/os/Binder;
.source "IWindowMagnificationConnection.java"

# interfaces
.implements Landroid/view/accessibility/IWindowMagnificationConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IWindowMagnificationConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IWindowMagnificationConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_disableWindowMagnification:I = 0x3

.field static final TRANSACTION_enableWindowMagnification:I = 0x1

.field static final TRANSACTION_moveWindowMagnifier:I = 0x4

.field static final TRANSACTION_moveWindowMagnifierToPosition:I = 0x5

.field static final TRANSACTION_removeMagnificationButton:I = 0x7

.field static final TRANSACTION_removeMagnificationSettingsPanel:I = 0x8

.field static final TRANSACTION_setConnectionCallback:I = 0x9

.field static final TRANSACTION_setScale:I = 0x2

.field static final TRANSACTION_showMagnificationButton:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 118
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 119
    const-string v0, "android.view.accessibility.IWindowMagnificationConnection"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IWindowMagnificationConnection;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 127
    if-nez p0, :cond_4

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_4
    const-string v0, "android.view.accessibility.IWindowMagnificationConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 131
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/accessibility/IWindowMagnificationConnection;

    if-eqz v1, :cond_14

    .line 132
    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/IWindowMagnificationConnection;

    return-object v1

    .line 134
    :cond_14
    new-instance v1, Landroid/view/accessibility/IWindowMagnificationConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 143
    packed-switch p0, :pswitch_data_28

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 179
    :pswitch_5
    const-string/jumbo v0, "setConnectionCallback"

    return-object v0

    .line 175
    :pswitch_9
    const-string/jumbo v0, "removeMagnificationSettingsPanel"

    return-object v0

    .line 171
    :pswitch_d
    const-string/jumbo v0, "removeMagnificationButton"

    return-object v0

    .line 167
    :pswitch_11
    const-string/jumbo v0, "showMagnificationButton"

    return-object v0

    .line 163
    :pswitch_15
    const-string/jumbo v0, "moveWindowMagnifierToPosition"

    return-object v0

    .line 159
    :pswitch_19
    const-string/jumbo v0, "moveWindowMagnifier"

    return-object v0

    .line 155
    :pswitch_1d
    const-string v0, "disableWindowMagnification"

    return-object v0

    .line 151
    :pswitch_20
    const-string/jumbo v0, "setScale"

    return-object v0

    .line 147
    :pswitch_24
    const-string v0, "enableWindowMagnification"

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_20
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

    .line 138
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 530
    const/16 v0, 0x8

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 190
    invoke-static {p1}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 194
    move-object/from16 v8, p0

    move/from16 v9, p1

    const-string v10, "android.view.accessibility.IWindowMagnificationConnection"

    .line 195
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v9, v11, :cond_14

    const v0, 0xffffff

    if-gt v9, v0, :cond_14

    .line 196
    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_16

    .line 195
    :cond_14
    move-object/from16 v12, p2

    .line 198
    :goto_16
    packed-switch v9, :pswitch_data_e8

    .line 206
    move-object/from16 v13, p3

    packed-switch v9, :pswitch_data_ee

    .line 310
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 202
    :pswitch_23
    move-object/from16 v13, p3

    invoke-virtual {v13, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    return v11

    .line 303
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IWindowMagnificationConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IWindowMagnificationConnectionCallback;

    move-result-object v0

    .line 304
    .local v0, "_arg0":Landroid/view/accessibility/IWindowMagnificationConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {v8, v0}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)V

    .line 306
    goto/16 :goto_e6

    .line 295
    .end local v0    # "_arg0":Landroid/view/accessibility/IWindowMagnificationConnectionCallback;
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 296
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {v8, v0}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->removeMagnificationSettingsPanel(I)V

    .line 298
    goto/16 :goto_e6

    .line 287
    .end local v0    # "_arg0":I
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 288
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {v8, v0}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->removeMagnificationButton(I)V

    .line 290
    goto/16 :goto_e6

    .line 277
    .end local v0    # "_arg0":I
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 279
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 280
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {v8, v0, v1}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->showMagnificationButton(II)V

    .line 282
    goto/16 :goto_e6

    .line 263
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 265
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 267
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 269
    .local v2, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    move-result-object v3

    .line 270
    .local v3, "_arg3":Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->moveWindowMagnifierToPosition(IFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    .line 272
    goto :goto_e6

    .line 251
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    .end local v2    # "_arg2":F
    .end local v3    # "_arg3":Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    :pswitch_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 253
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 255
    .restart local v1    # "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 256
    .restart local v2    # "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {v8, v0, v1, v2}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->moveWindowMagnifier(IFF)V

    .line 258
    goto :goto_e6

    .line 241
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    .end local v2    # "_arg2":F
    :pswitch_8f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 243
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    move-result-object v1

    .line 244
    .local v1, "_arg1":Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {v8, v0, v1}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->disableWindowMagnification(ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    .line 246
    goto :goto_e6

    .line 231
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    :pswitch_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 233
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 234
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {v8, v0, v1}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->setScale(IF)V

    .line 236
    goto :goto_e6

    .line 211
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    :pswitch_b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 213
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    .line 215
    .local v15, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .line 217
    .local v16, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v17

    .line 219
    .local v17, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v18

    .line 221
    .local v18, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    .line 223
    .local v19, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    move-result-object v20

    .line 224
    .local v20, "_arg6":Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->enableWindowMagnification(IFFFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    .line 226
    nop

    .line 313
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":F
    .end local v16    # "_arg2":F
    .end local v17    # "_arg3":F
    .end local v18    # "_arg4":F
    .end local v19    # "_arg5":F
    .end local v20    # "_arg6":Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    :goto_e6
    return v11

    nop

    :pswitch_data_e8
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_a2
        :pswitch_8f
        :pswitch_7c
        :pswitch_61
        :pswitch_51
        :pswitch_45
        :pswitch_39
        :pswitch_29
    .end packed-switch
.end method
