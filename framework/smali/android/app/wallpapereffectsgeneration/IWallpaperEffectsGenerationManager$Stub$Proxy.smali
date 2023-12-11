.class Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWallpaperEffectsGenerationManager.java"

# interfaces
.implements Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub;
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

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 125
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public generateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V
    .registers 7
    .param p1, "request"    # Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;
    .param p2, "listener"    # Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 138
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.wallpapereffectsgeneration.IWallpaperEffectsGenerationManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 140
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 141
    iget-object v1, p0, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 145
    nop

    .line 146
    return-void

    .line 144
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 145
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 132
    const-string v0, "android.app.wallpapereffectsgeneration.IWallpaperEffectsGenerationManager"

    return-object v0
.end method

.method public returnCinematicEffectResponse(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .registers 7
    .param p1, "response"    # Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 151
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.wallpapereffectsgeneration.IWallpaperEffectsGenerationManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 153
    iget-object v1, p0, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 157
    nop

    .line 158
    return-void

    .line 156
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 157
    throw v1
.end method
