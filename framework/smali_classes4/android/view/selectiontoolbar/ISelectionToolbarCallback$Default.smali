.class public Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Default;
.super Ljava/lang/Object;
.source "ISelectionToolbarCallback.java"

# interfaces
.implements Landroid/view/selectiontoolbar/ISelectionToolbarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/selectiontoolbar/ISelectionToolbarCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public onError(I)V
    .registers 2
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public onMenuItemClicked(Landroid/view/selectiontoolbar/ToolbarMenuItem;)V
    .registers 2
    .param p1, "item"    # Landroid/view/selectiontoolbar/ToolbarMenuItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public onShown(Landroid/view/selectiontoolbar/WidgetInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/view/selectiontoolbar/WidgetInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public onToolbarShowTimeout()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public onWidgetUpdated(Landroid/view/selectiontoolbar/WidgetInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/view/selectiontoolbar/WidgetInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method
