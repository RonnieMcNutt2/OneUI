.class public Lcom/samsung/android/multiwindow/IKeyEventListener$Default;
.super Ljava/lang/Object;
.source "IKeyEventListener.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/IKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/IKeyEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendShortcutKeyWithFocusedTask(ILandroid/view/KeyEvent;)V
    .registers 3
    .param p1, "taskId"    # I
    .param p2, "key"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
