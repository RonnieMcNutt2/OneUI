.class Lcom/android/internal/policy/IKeyguardDismissCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKeyguardDismissCallback.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardDismissCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 123
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 130
    const-string v0, "com.android.internal.policy.IKeyguardDismissCallback"

    return-object v0
.end method

.method public onDismissCancelled()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 158
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.policy.IKeyguardDismissCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_1a

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    nop

    .line 164
    return-void

    .line 162
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    throw v1
.end method

.method public onDismissError()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 136
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.policy.IKeyguardDismissCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_19

    .line 140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 141
    nop

    .line 142
    return-void

    .line 140
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 141
    throw v1
.end method

.method public onDismissSucceeded()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 147
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.policy.IKeyguardDismissCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_1a

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 152
    nop

    .line 153
    return-void

    .line 151
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 152
    throw v1
.end method
