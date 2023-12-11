.class public abstract Landroid/window/IOnBackInvokedCallback$Stub;
.super Landroid/os/Binder;
.source "IOnBackInvokedCallback.java"

# interfaces
.implements Landroid/window/IOnBackInvokedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IOnBackInvokedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IOnBackInvokedCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onBackCancelled:I = 0x3

.field static final TRANSACTION_onBackInvoked:I = 0x4

.field static final TRANSACTION_onBackProgressed:I = 0x2

.field static final TRANSACTION_onBackStarted:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "android.window.IOnBackInvokedCallback"

    invoke-virtual {p0, p0, v0}, Landroid/window/IOnBackInvokedCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/window/IOnBackInvokedCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_4
    const-string v0, "android.window.IOnBackInvokedCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/window/IOnBackInvokedCallback;

    if-eqz v1, :cond_14

    .line 75
    move-object v1, v0

    check-cast v1, Landroid/window/IOnBackInvokedCallback;

    return-object v1

    .line 77
    :cond_14
    new-instance v1, Landroid/window/IOnBackInvokedCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/IOnBackInvokedCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 86
    packed-switch p0, :pswitch_data_16

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 102
    :pswitch_5
    const-string/jumbo v0, "onBackInvoked"

    return-object v0

    .line 98
    :pswitch_9
    const-string/jumbo v0, "onBackCancelled"

    return-object v0

    .line 94
    :pswitch_d
    const-string/jumbo v0, "onBackProgressed"

    return-object v0

    .line 90
    :pswitch_11
    const-string/jumbo v0, "onBackStarted"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 81
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 256
    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 113
    invoke-static {p1}, Landroid/window/IOnBackInvokedCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    const-string v0, "android.window.IOnBackInvokedCallback"

    .line 118
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    :cond_d
    packed-switch p1, :pswitch_data_44

    .line 129
    packed-switch p1, :pswitch_data_4a

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 125
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v1

    .line 154
    :pswitch_1c
    invoke-virtual {p0}, Landroid/window/IOnBackInvokedCallback$Stub;->onBackInvoked()V

    .line 155
    goto :goto_42

    .line 149
    :pswitch_20
    invoke-virtual {p0}, Landroid/window/IOnBackInvokedCallback$Stub;->onBackCancelled()V

    .line 150
    goto :goto_42

    .line 142
    :pswitch_24
    sget-object v2, Landroid/window/BackMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/BackMotionEvent;

    .line 143
    .local v2, "_arg0":Landroid/window/BackMotionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2}, Landroid/window/IOnBackInvokedCallback$Stub;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    .line 145
    goto :goto_42

    .line 134
    .end local v2    # "_arg0":Landroid/window/BackMotionEvent;
    :pswitch_33
    sget-object v2, Landroid/window/BackMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/BackMotionEvent;

    .line 135
    .restart local v2    # "_arg0":Landroid/window/BackMotionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2}, Landroid/window/IOnBackInvokedCallback$Stub;->onBackStarted(Landroid/window/BackMotionEvent;)V

    .line 137
    nop

    .line 162
    .end local v2    # "_arg0":Landroid/window/BackMotionEvent;
    :goto_42
    return v1

    nop

    :pswitch_data_44
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_33
        :pswitch_24
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
