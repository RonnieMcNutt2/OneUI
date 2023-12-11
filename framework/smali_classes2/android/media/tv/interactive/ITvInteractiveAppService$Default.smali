.class public Landroid/media/tv/interactive/ITvInteractiveAppService$Default;
.super Ljava/lang/Object;
.source "ITvInteractiveAppService.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public createSession(Landroid/view/InputChannel;Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;Ljava/lang/String;I)V
    .registers 5
    .param p1, "channel"    # Landroid/view/InputChannel;
    .param p2, "callback"    # Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    .param p3, "iAppServiceId"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public registerAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/media/tv/interactive/AppLinkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public registerCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public sendAppLinkCommand(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "command"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public unregisterAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/media/tv/interactive/AppLinkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public unregisterCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
