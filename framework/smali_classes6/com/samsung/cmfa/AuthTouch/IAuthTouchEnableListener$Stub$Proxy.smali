.class Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAuthTouchEnableListener.java"

# interfaces
.implements Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener$Stub;
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

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 105
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 112
    const-string v0, "com.samsung.cmfa.AuthTouch.IAuthTouchEnableListener"

    return-object v0
.end method

.method public notifyTouchEventEnabled(ZZ)V
    .registers 8
    .param p1, "enable"    # Z
    .param p2, "debugMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 117
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 119
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.samsung.cmfa.AuthTouch.IAuthTouchEnableListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 121
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 122
    iget-object v2, p0, Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 123
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 126
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    nop

    .line 129
    return-void

    .line 126
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    throw v2
.end method
