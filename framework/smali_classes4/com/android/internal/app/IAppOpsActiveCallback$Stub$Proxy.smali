.class Lcom/android/internal/app/IAppOpsActiveCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAppOpsActiveCallback.java"

# interfaces
.implements Lcom/android/internal/app/IAppOpsActiveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppOpsActiveCallback$Stub;
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

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/android/internal/app/IAppOpsActiveCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 115
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/internal/app/IAppOpsActiveCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 122
    const-string v0, "com.android.internal.app.IAppOpsActiveCallback"

    return-object v0
.end method

.method public opActiveChanged(IILjava/lang/String;Ljava/lang/String;ZII)V
    .registers 12
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "active"    # Z
    .param p6, "attributionFlags"    # I
    .param p7, "attributionChainId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsActiveCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 128
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.app.IAppOpsActiveCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 134
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v1, p0, Lcom/android/internal/app/IAppOpsActiveCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_2e

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 140
    nop

    .line 141
    return-void

    .line 139
    :catchall_2e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 140
    throw v1
.end method
