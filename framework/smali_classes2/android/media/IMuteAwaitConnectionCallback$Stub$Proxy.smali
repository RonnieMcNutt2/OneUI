.class Landroid/media/IMuteAwaitConnectionCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMuteAwaitConnectionCallback.java"

# interfaces
.implements Landroid/media/IMuteAwaitConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMuteAwaitConnectionCallback$Stub;
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

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Landroid/media/IMuteAwaitConnectionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 128
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/media/IMuteAwaitConnectionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public dispatchOnMutedUntilConnection(Landroid/media/AudioDeviceAttributes;[I)V
    .registers 7
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "mutedUsages"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Landroid/media/IMuteAwaitConnectionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 141
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.IMuteAwaitConnectionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 143
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 144
    iget-object v1, p0, Landroid/media/IMuteAwaitConnectionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 148
    nop

    .line 149
    return-void

    .line 147
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 148
    throw v1
.end method

.method public dispatchOnUnmutedEvent(ILandroid/media/AudioDeviceAttributes;[I)V
    .registers 9
    .param p1, "event"    # I
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p3, "mutedUsages"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Landroid/media/IMuteAwaitConnectionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 154
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.IMuteAwaitConnectionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 157
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 158
    iget-object v1, p0, Landroid/media/IMuteAwaitConnectionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 162
    nop

    .line 163
    return-void

    .line 161
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 162
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 135
    const-string v0, "android.media.IMuteAwaitConnectionCallback"

    return-object v0
.end method
