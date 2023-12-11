.class public abstract Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;
.super Landroid/os/Binder;
.source "IRemoteAccessibilityInputConnection.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_clearMetaKeyStates:I = 0x9

.field static final TRANSACTION_commitText:I = 0x1

.field static final TRANSACTION_deleteSurroundingText:I = 0x4

.field static final TRANSACTION_getCursorCapsMode:I = 0x8

.field static final TRANSACTION_getSurroundingText:I = 0x3

.field static final TRANSACTION_performContextMenuAction:I = 0x7

.field static final TRANSACTION_performEditorAction:I = 0x6

.field static final TRANSACTION_sendKeyEvent:I = 0x5

.field static final TRANSACTION_setSelection:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "com.android.internal.inputmethod.IRemoteAccessibilityInputConnection"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IRemoteAccessibilityInputConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_24

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 112
    :pswitch_5
    const-string v0, "clearMetaKeyStates"

    return-object v0

    .line 108
    :pswitch_8
    const-string v0, "getCursorCapsMode"

    return-object v0

    .line 104
    :pswitch_b
    const-string/jumbo v0, "performContextMenuAction"

    return-object v0

    .line 100
    :pswitch_f
    const-string/jumbo v0, "performEditorAction"

    return-object v0

    .line 96
    :pswitch_13
    const-string/jumbo v0, "sendKeyEvent"

    return-object v0

    .line 92
    :pswitch_17
    const-string v0, "deleteSurroundingText"

    return-object v0

    .line 88
    :pswitch_1a
    const-string v0, "getSurroundingText"

    return-object v0

    .line 84
    :pswitch_1d
    const-string/jumbo v0, "setSelection"

    return-object v0

    .line 80
    :pswitch_21
    const-string v0, "commitText"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 71
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 413
    const/16 v0, 0x8

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 123
    invoke-static {p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.android.internal.inputmethod.IRemoteAccessibilityInputConnection"

    .line 128
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_13

    const v0, 0xffffff

    if-gt v7, v0, :cond_13

    .line 129
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    :cond_13
    packed-switch v7, :pswitch_data_116

    .line 139
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_11c

    .line 249
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 135
    :pswitch_20
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return v10

    .line 240
    :pswitch_26
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 242
    .local v0, "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 243
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 245
    goto/16 :goto_115

    .line 228
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":I
    :pswitch_3a
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 230
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 232
    .restart local v1    # "_arg1":I
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 233
    .local v2, "_arg2":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V

    .line 235
    goto/16 :goto_115

    .line 218
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_56
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 220
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 221
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 223
    goto/16 :goto_115

    .line 208
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":I
    :pswitch_6a
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 210
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 211
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 213
    goto/16 :goto_115

    .line 198
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":I
    :pswitch_7e
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 200
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 201
    .local v1, "_arg1":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    .line 203
    goto/16 :goto_115

    .line 186
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":Landroid/view/KeyEvent;
    :pswitch_96
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 188
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 190
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 193
    goto :goto_115

    .line 170
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_ad
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 172
    .local v12, "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 174
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 176
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 178
    .local v15, "_arg3":I
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/infra/AndroidFuture;

    .line 179
    .local v16, "_arg4":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V

    .line 181
    goto :goto_115

    .line 158
    .end local v12    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_db
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 160
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 165
    goto :goto_115

    .line 144
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_f2
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 146
    .restart local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 148
    .local v1, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 150
    .restart local v2    # "_arg2":I
    sget-object v3, Landroid/view/inputmethod/TextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/TextAttribute;

    .line 151
    .local v3, "_arg3":Landroid/view/inputmethod/TextAttribute;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    .line 153
    nop

    .line 252
    .end local v0    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v1    # "_arg1":Ljava/lang/CharSequence;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/view/inputmethod/TextAttribute;
    :goto_115
    return v10

    :pswitch_data_116
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_f2
        :pswitch_db
        :pswitch_ad
        :pswitch_96
        :pswitch_7e
        :pswitch_6a
        :pswitch_56
        :pswitch_3a
        :pswitch_26
    .end packed-switch
.end method
