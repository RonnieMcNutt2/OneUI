.class public abstract Lcom/android/internal/inputmethod/IImeTracker$Stub;
.super Landroid/os/Binder;
.source "IImeTracker.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IImeTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IImeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IImeTracker$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_hasPendingImeVisibilityRequests:I = 0x8

.field static final TRANSACTION_onCancelled:I = 0x5

.field static final TRANSACTION_onFailed:I = 0x4

.field static final TRANSACTION_onHidden:I = 0x7

.field static final TRANSACTION_onProgress:I = 0x3

.field static final TRANSACTION_onRequestHide:I = 0x2

.field static final TRANSACTION_onRequestShow:I = 0x1

.field static final TRANSACTION_onShown:I = 0x6


# instance fields
.field private final mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    nop

    .line 114
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 103
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 104
    const-string v0, "com.android.internal.inputmethod.IImeTracker"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 105
    if-eqz p1, :cond_d

    .line 108
    iput-object p1, p0, Lcom/android/internal/inputmethod/IImeTracker$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 109
    return-void

    .line 106
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IImeTracker;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 122
    if-nez p0, :cond_4

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IImeTracker"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 126
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/inputmethod/IImeTracker;

    if-eqz v1, :cond_14

    .line 127
    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/IImeTracker;

    return-object v1

    .line 129
    :cond_14
    new-instance v1, Lcom/android/internal/inputmethod/IImeTracker$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/IImeTracker$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 138
    packed-switch p0, :pswitch_data_24

    .line 174
    const/4 v0, 0x0

    return-object v0

    .line 170
    :pswitch_5
    const-string v0, "hasPendingImeVisibilityRequests"

    return-object v0

    .line 166
    :pswitch_8
    const-string/jumbo v0, "onHidden"

    return-object v0

    .line 162
    :pswitch_c
    const-string/jumbo v0, "onShown"

    return-object v0

    .line 158
    :pswitch_10
    const-string/jumbo v0, "onCancelled"

    return-object v0

    .line 154
    :pswitch_14
    const-string/jumbo v0, "onFailed"

    return-object v0

    .line 150
    :pswitch_18
    const-string/jumbo v0, "onProgress"

    return-object v0

    .line 146
    :pswitch_1c
    const-string/jumbo v0, "onRequestHide"

    return-object v0

    .line 142
    :pswitch_20
    const-string/jumbo v0, "onRequestShow"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 133
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 495
    const/4 v0, 0x7

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 181
    invoke-static {p1}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hasPendingImeVisibilityRequests_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/android/internal/inputmethod/IImeTracker$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 491
    return-void
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

    .line 185
    const-string v0, "com.android.internal.inputmethod.IImeTracker"

    .line 186
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 187
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    :cond_d
    packed-switch p1, :pswitch_data_ba

    .line 197
    packed-switch p1, :pswitch_data_c0

    .line 286
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 193
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    return v1

    .line 279
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->hasPendingImeVisibilityRequests()Z

    move-result v2

    .line 280
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 282
    goto/16 :goto_b8

    .line 272
    .end local v2    # "_result":Z
    :pswitch_28
    sget-object v2, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/ImeTracker$Token;

    .line 273
    .local v2, "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 275
    goto/16 :goto_b8

    .line 264
    .end local v2    # "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    :pswitch_38
    sget-object v2, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/ImeTracker$Token;

    .line 265
    .restart local v2    # "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onShown(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 267
    goto :goto_b8

    .line 254
    .end local v2    # "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    :pswitch_47
    sget-object v2, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/ImeTracker$Token;

    .line 256
    .restart local v2    # "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 257
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 259
    goto :goto_b8

    .line 244
    .end local v2    # "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    .end local v3    # "_arg1":I
    :pswitch_5a
    sget-object v2, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/ImeTracker$Token;

    .line 246
    .restart local v2    # "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 247
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 249
    goto :goto_b8

    .line 234
    .end local v2    # "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    .end local v3    # "_arg1":I
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 236
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 237
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onProgress(Landroid/os/IBinder;I)V

    .line 239
    goto :goto_b8

    .line 218
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 222
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 224
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 225
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onRequestHide(Ljava/lang/String;III)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v6

    .line 227
    .local v6, "_result":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 229
    goto :goto_b8

    .line 202
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Landroid/view/inputmethod/ImeTracker$Token;
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 206
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 208
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 209
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onRequestShow(Ljava/lang/String;III)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v6

    .line 211
    .restart local v6    # "_result":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 213
    nop

    .line 289
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_b8
    return v1

    nop

    :pswitch_data_ba
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_7c
        :pswitch_6d
        :pswitch_5a
        :pswitch_47
        :pswitch_38
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
