.class Landroid/service/notification/IStatusBarNotificationHolder$Stub$Proxy;
.super Ljava/lang/Object;
.source "IStatusBarNotificationHolder.java"

# interfaces
.implements Landroid/service/notification/IStatusBarNotificationHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/IStatusBarNotificationHolder$Stub;
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

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Landroid/service/notification/IStatusBarNotificationHolder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 104
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/service/notification/IStatusBarNotificationHolder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public get()Landroid/service/notification/StatusBarNotification;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Landroid/service/notification/IStatusBarNotificationHolder$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 117
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 120
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.service.notification.IStatusBarNotificationHolder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Landroid/service/notification/IStatusBarNotificationHolder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 122
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 123
    sget-object v3, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/StatusBarNotification;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 126
    .local v2, "_result":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    nop

    .line 129
    return-object v2

    .line 126
    .end local v2    # "_result":Landroid/service/notification/StatusBarNotification;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 111
    const-string v0, "android.service.notification.IStatusBarNotificationHolder"

    return-object v0
.end method
