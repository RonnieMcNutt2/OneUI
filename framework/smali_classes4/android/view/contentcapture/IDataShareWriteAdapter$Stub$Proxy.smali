.class Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDataShareWriteAdapter.java"

# interfaces
.implements Landroid/view/contentcapture/IDataShareWriteAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;
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

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 142
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public error(I)V
    .registers 7
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 167
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.contentcapture.IDataShareWriteAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v1, p0, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 173
    nop

    .line 174
    return-void

    .line 172
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 173
    throw v1
.end method

.method public finish()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 190
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.contentcapture.IDataShareWriteAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_1a

    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 195
    nop

    .line 196
    return-void

    .line 194
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 195
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 149
    const-string v0, "android.view.contentcapture.IDataShareWriteAdapter"

    return-object v0
.end method

.method public rejected()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 179
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.contentcapture.IDataShareWriteAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_1a

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 184
    nop

    .line 185
    return-void

    .line 183
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 184
    throw v1
.end method

.method public write(Landroid/os/ParcelFileDescriptor;)V
    .registers 6
    .param p1, "destination"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 155
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.contentcapture.IDataShareWriteAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 157
    iget-object v1, p0, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    nop

    .line 162
    return-void

    .line 160
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    throw v1
.end method
