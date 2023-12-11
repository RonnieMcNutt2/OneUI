.class public abstract Landroid/window/IBackAnimationRunner$Stub;
.super Landroid/os/Binder;
.source "IBackAnimationRunner.java"

# interfaces
.implements Landroid/window/IBackAnimationRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IBackAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IBackAnimationRunner$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAnimationCancelled:I = 0x2

.field static final TRANSACTION_onAnimationStart:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.window.IBackAnimationRunner"

    invoke-virtual {p0, p0, v0}, Landroid/window/IBackAnimationRunner$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/window/IBackAnimationRunner;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "android.window.IBackAnimationRunner"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/window/IBackAnimationRunner;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/window/IBackAnimationRunner;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Landroid/window/IBackAnimationRunner$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/IBackAnimationRunner$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_e

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 78
    :pswitch_5
    const-string/jumbo v0, "onAnimationStart"

    return-object v0

    .line 74
    :pswitch_9
    const-string/jumbo v0, "onAnimationCancelled"

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 193
    const/4 v0, 0x2

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 89
    invoke-static {p1}, Landroid/window/IBackAnimationRunner$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    const-string v0, "android.window.IBackAnimationRunner"

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_d
    packed-switch p1, :pswitch_data_48

    .line 105
    packed-switch p1, :pswitch_data_4e

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 101
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 115
    :pswitch_1c
    sget-object v2, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/RemoteAnimationTarget;

    .line 117
    .local v2, "_arg0":[Landroid/view/RemoteAnimationTarget;
    sget-object v3, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/RemoteAnimationTarget;

    .line 119
    .local v3, "_arg1":[Landroid/view/RemoteAnimationTarget;
    sget-object v4, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/RemoteAnimationTarget;

    .line 121
    .local v4, "_arg2":[Landroid/view/RemoteAnimationTarget;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/window/IBackAnimationFinishedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IBackAnimationFinishedCallback;

    move-result-object v5

    .line 122
    .local v5, "_arg3":Landroid/window/IBackAnimationFinishedCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/window/IBackAnimationRunner$Stub;->onAnimationStart([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/window/IBackAnimationFinishedCallback;)V

    .line 124
    goto :goto_47

    .line 109
    .end local v2    # "_arg0":[Landroid/view/RemoteAnimationTarget;
    .end local v3    # "_arg1":[Landroid/view/RemoteAnimationTarget;
    .end local v4    # "_arg2":[Landroid/view/RemoteAnimationTarget;
    .end local v5    # "_arg3":Landroid/window/IBackAnimationFinishedCallback;
    :pswitch_43
    invoke-virtual {p0}, Landroid/window/IBackAnimationRunner$Stub;->onAnimationCancelled()V

    .line 110
    nop

    .line 131
    :goto_47
    return v1

    :pswitch_data_48
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_43
        :pswitch_1c
    .end packed-switch
.end method
