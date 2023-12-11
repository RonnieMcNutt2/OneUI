.class public abstract Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;
.super Landroid/os/Binder;
.source "IInlineSuggestionsRequestCallback.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onInlineSuggestionsRequest:I = 0x2

.field static final TRANSACTION_onInlineSuggestionsSessionInvalidated:I = 0x8

.field static final TRANSACTION_onInlineSuggestionsUnsupported:I = 0x1

.field static final TRANSACTION_onInputMethodFinishInput:I = 0x7

.field static final TRANSACTION_onInputMethodFinishInputView:I = 0x6

.field static final TRANSACTION_onInputMethodShowInputRequested:I = 0x4

.field static final TRANSACTION_onInputMethodStartInput:I = 0x3

.field static final TRANSACTION_onInputMethodStartInputView:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 80
    const-string v0, "com.android.internal.inputmethod.IInlineSuggestionsRequestCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 88
    if-nez p0, :cond_4

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IInlineSuggestionsRequestCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 92
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    if-eqz v1, :cond_14

    .line 93
    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    return-object v1

    .line 95
    :cond_14
    new-instance v1, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 104
    packed-switch p0, :pswitch_data_26

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 136
    :pswitch_5
    const-string/jumbo v0, "onInlineSuggestionsSessionInvalidated"

    return-object v0

    .line 132
    :pswitch_9
    const-string/jumbo v0, "onInputMethodFinishInput"

    return-object v0

    .line 128
    :pswitch_d
    const-string/jumbo v0, "onInputMethodFinishInputView"

    return-object v0

    .line 124
    :pswitch_11
    const-string/jumbo v0, "onInputMethodStartInputView"

    return-object v0

    .line 120
    :pswitch_15
    const-string/jumbo v0, "onInputMethodShowInputRequested"

    return-object v0

    .line 116
    :pswitch_19
    const-string/jumbo v0, "onInputMethodStartInput"

    return-object v0

    .line 112
    :pswitch_1d
    const-string/jumbo v0, "onInlineSuggestionsRequest"

    return-object v0

    .line 108
    :pswitch_21
    const-string/jumbo v0, "onInlineSuggestionsUnsupported"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
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

    .line 99
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 373
    const/4 v0, 0x7

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 147
    invoke-static {p1}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    const-string v0, "com.android.internal.inputmethod.IInlineSuggestionsRequestCallback"

    .line 152
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 153
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    :cond_d
    packed-switch p1, :pswitch_data_62

    .line 163
    packed-switch p1, :pswitch_data_68

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 159
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return v1

    .line 213
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->onInlineSuggestionsSessionInvalidated()V

    .line 214
    goto :goto_61

    .line 208
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->onInputMethodFinishInput()V

    .line 209
    goto :goto_61

    .line 203
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->onInputMethodFinishInputView()V

    .line 204
    goto :goto_61

    .line 198
    :pswitch_28
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->onInputMethodStartInputView()V

    .line 199
    goto :goto_61

    .line 191
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 192
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->onInputMethodShowInputRequested(Z)V

    .line 194
    goto :goto_61

    .line 183
    .end local v2    # "_arg0":Z
    :pswitch_37
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 184
    .local v2, "_arg0":Landroid/view/autofill/AutofillId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V

    .line 186
    goto :goto_61

    .line 173
    .end local v2    # "_arg0":Landroid/view/autofill/AutofillId;
    :pswitch_46
    sget-object v2, Landroid/view/inputmethod/InlineSuggestionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 175
    .local v2, "_arg0":Landroid/view/inputmethod/InlineSuggestionsRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;

    move-result-object v3

    .line 176
    .local v3, "_arg1":Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;)V

    .line 178
    goto :goto_61

    .line 167
    .end local v2    # "_arg0":Landroid/view/inputmethod/InlineSuggestionsRequest;
    .end local v3    # "_arg1":Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;
    :pswitch_5d
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->onInlineSuggestionsUnsupported()V

    .line 168
    nop

    .line 221
    :goto_61
    return v1

    :pswitch_data_62
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_46
        :pswitch_37
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
