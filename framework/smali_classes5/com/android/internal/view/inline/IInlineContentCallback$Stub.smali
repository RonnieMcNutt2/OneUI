.class public abstract Lcom/android/internal/view/inline/IInlineContentCallback$Stub;
.super Landroid/os/Binder;
.source "IInlineContentCallback.java"

# interfaces
.implements Lcom/android/internal/view/inline/IInlineContentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/inline/IInlineContentCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/inline/IInlineContentCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onClick:I = 0x2

.field static final TRANSACTION_onContent:I = 0x1

.field static final TRANSACTION_onLongClick:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.android.internal.view.inline.IInlineContentCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/inline/IInlineContentCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/inline/IInlineContentCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "com.android.internal.view.inline.IInlineContentCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/view/inline/IInlineContentCallback;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/inline/IInlineContentCallback;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Lcom/android/internal/view/inline/IInlineContentCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/inline/IInlineContentCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 58
    packed-switch p0, :pswitch_data_12

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 70
    :pswitch_5
    const-string/jumbo v0, "onLongClick"

    return-object v0

    .line 66
    :pswitch_9
    const-string/jumbo v0, "onClick"

    return-object v0

    .line 62
    :pswitch_d
    const-string/jumbo v0, "onContent"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 186
    const/4 v0, 0x2

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 81
    invoke-static {p1}, Lcom/android/internal/view/inline/IInlineContentCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const-string v0, "com.android.internal.view.inline.IInlineContentCallback"

    .line 86
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    :cond_d
    packed-switch p1, :pswitch_data_3c

    .line 97
    packed-switch p1, :pswitch_data_42

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 93
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 118
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/internal/view/inline/IInlineContentCallback$Stub;->onLongClick()V

    .line 119
    goto :goto_3b

    .line 113
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/internal/view/inline/IInlineContentCallback$Stub;->onClick()V

    .line 114
    goto :goto_3b

    .line 102
    :pswitch_24
    sget-object v2, Landroid/view/SurfaceControlViewHost$SurfacePackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 104
    .local v2, "_arg0":Landroid/view/SurfaceControlViewHost$SurfacePackage;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 106
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 107
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/view/inline/IInlineContentCallback$Stub;->onContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    .line 109
    nop

    .line 126
    .end local v2    # "_arg0":Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :goto_3b
    return v1

    :pswitch_data_3c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_24
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
