.class public Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy$Default;
.super Ljava/lang/Object;
.source "IDragAndDropControllerProxy.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;
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

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public show(I)V
    .registers 2
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
