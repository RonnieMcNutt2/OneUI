.class public abstract Landroid/window/IBackAnimationFinishedCallback$Stub;
.super Landroid/os/Binder;
.source "IBackAnimationFinishedCallback.java"

# interfaces
.implements Landroid/window/IBackAnimationFinishedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IBackAnimationFinishedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IBackAnimationFinishedCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAnimationFinished:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "android.window.IBackAnimationFinishedCallback"

    invoke-virtual {p0, p0, v0}, Landroid/window/IBackAnimationFinishedCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/window/IBackAnimationFinishedCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_4

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_4
    const-string v0, "android.window.IBackAnimationFinishedCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/window/IBackAnimationFinishedCallback;

    if-eqz v1, :cond_14

    .line 43
    move-object v1, v0

    check-cast v1, Landroid/window/IBackAnimationFinishedCallback;

    return-object v1

    .line 45
    :cond_14
    new-instance v1, Landroid/window/IBackAnimationFinishedCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/IBackAnimationFinishedCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 54
    packed-switch p0, :pswitch_data_a

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 58
    :pswitch_5
    const-string/jumbo v0, "onAnimationFinished"

    return-object v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 49
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 69
    invoke-static {p1}, Landroid/window/IBackAnimationFinishedCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 73
    const-string v0, "android.window.IBackAnimationFinishedCallback"

    .line 74
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 75
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    :cond_d
    packed-switch p1, :pswitch_data_2c

    .line 85
    packed-switch p1, :pswitch_data_32

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 81
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v1

    .line 90
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 91
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 92
    invoke-virtual {p0, v2}, Landroid/window/IBackAnimationFinishedCallback$Stub;->onAnimationFinished(Z)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    nop

    .line 101
    .end local v2    # "_arg0":Z
    return v1

    nop

    :pswitch_data_2c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1c
    .end packed-switch
.end method
