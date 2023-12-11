.class public abstract Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub;
.super Landroid/os/Binder;
.source "IOneHandOpWatcher.java"

# interfaces
.implements Lcom/samsung/android/onehandop/IOneHandOpWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/onehandop/IOneHandOpWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onInputFilterChanged:I = 0x2

.field static final TRANSACTION_onMagnificationSpecChanged:I = 0x1


# instance fields
.field private final mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    nop

    .line 39
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.samsung.android.onehandop.IOneHandOpWatcher"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    if-eqz p1, :cond_d

    .line 33
    iput-object p1, p0, Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 34
    return-void

    .line 31
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/onehandop/IOneHandOpWatcher;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_4
    const-string v0, "com.samsung.android.onehandop.IOneHandOpWatcher"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    if-eqz v1, :cond_14

    .line 52
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    return-object v1

    .line 54
    :cond_14
    new-instance v1, Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 63
    packed-switch p0, :pswitch_data_e

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 71
    :pswitch_5
    const-string/jumbo v0, "onInputFilterChanged"

    return-object v0

    .line 67
    :pswitch_9
    const-string/jumbo v0, "onMagnificationSpecChanged"

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 58
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 82
    invoke-static {p1}, Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onInputFilterChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 164
    return-void
.end method

.method protected onMagnificationSpecChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 159
    return-void
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

    .line 86
    const-string v0, "com.samsung.android.onehandop.IOneHandOpWatcher"

    .line 87
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    :cond_d
    packed-switch p1, :pswitch_data_26

    .line 98
    packed-switch p1, :pswitch_data_2c

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 94
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 107
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub;->onInputFilterChanged()V

    .line 108
    goto :goto_24

    .line 102
    :pswitch_20
    invoke-virtual {p0}, Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub;->onMagnificationSpecChanged()V

    .line 103
    nop

    .line 115
    :goto_24
    return v1

    nop

    :pswitch_data_26
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
