.class Lcom/samsung/android/knox/SemContainerState$StateReceiver;
.super Landroid/os/ContainerStateReceiver;
.source "SemContainerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemContainerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/SemContainerState;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/SemContainerState;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/knox/SemContainerState;Lcom/samsung/android/knox/SemContainerState$StateReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/SemContainerState$StateReceiver;-><init>(Lcom/samsung/android/knox/SemContainerState;)V

    return-void
.end method


# virtual methods
.method public onContainerAdminLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 78
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 79
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$LockListener;->onAdminLocked(Landroid/content/Context;I)V

    .line 80
    :cond_11
    return-void
.end method

.method public onContainerAdminUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 83
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 84
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$LockListener;->onAdminUnlocked(Landroid/content/Context;I)V

    .line 85
    :cond_11
    return-void
.end method

.method public onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 40
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 41
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$StateListener;->onContainerCreated(Landroid/content/Context;I)V

    .line 42
    :cond_11
    return-void
.end method

.method public onContainerEnabled(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 50
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 51
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$StateListener;->onContainerEnabled(Landroid/content/Context;I)V

    .line 52
    :cond_11
    return-void
.end method

.method public onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 69
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$LockListener;->onUserLocked(Landroid/content/Context;I)V

    .line 70
    :cond_11
    return-void
.end method

.method public onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 45
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 46
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$StateListener;->onContainerRemoved(Landroid/content/Context;I)V

    .line 47
    :cond_11
    return-void
.end method

.method public onContainerReset(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 118
    return-void
.end method

.method public onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 55
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 56
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$StateListener;->onContainerStarted(Landroid/content/Context;I)V

    .line 57
    :cond_11
    return-void
.end method

.method public onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 60
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 61
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$StateListener;->onContainerStopped(Landroid/content/Context;I)V

    .line 62
    :cond_11
    return-void
.end method

.method public onContainerSwitch(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 107
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmEventListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$EventListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 108
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmEventListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$EventListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lcom/samsung/android/knox/SemContainerState$EventListener;->onContainerModeChanged(Landroid/content/Context;II)V

    .line 109
    :cond_12
    return-void
.end method

.method public onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 73
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 74
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$LockListener;->onUserUnlocked(Landroid/content/Context;I)V

    .line 75
    :cond_11
    return-void
.end method

.method public onDeviceOwnerActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Landroid/os/Bundle;

    .line 122
    return-void
.end method

.method public onDeviceOwnerLicenseActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Landroid/os/Bundle;

    .line 126
    return-void
.end method

.method public onLicenseActivated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 88
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 89
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$LockListener;->onLicenseActivated(Landroid/content/Context;I)V

    .line 90
    :cond_11
    return-void
.end method

.method public onLicenseExpired(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 93
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 94
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$LockListener;->onLicenseExpired(Landroid/content/Context;I)V

    .line 95
    :cond_11
    return-void
.end method

.method public onLockScreenStateChanged(Landroid/content/Context;IZLandroid/os/Bundle;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "visible"    # Z
    .param p4, "b"    # Landroid/os/Bundle;

    .line 102
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmEventListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$EventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 103
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmEventListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$EventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/SemContainerState$EventListener;->onLockScreenVisivilityChanged(Landroid/content/Context;IZ)V

    .line 104
    :cond_11
    return-void
.end method

.method public onPersonalSwitch(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Landroid/os/Bundle;

    .line 112
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmEventListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$EventListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 113
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmEventListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$EventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Lcom/samsung/android/knox/SemContainerState$EventListener;->onContainerModeChanged(Landroid/content/Context;II)V

    .line 114
    :cond_12
    return-void
.end method
