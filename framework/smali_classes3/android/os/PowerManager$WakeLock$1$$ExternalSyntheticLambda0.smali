.class public final synthetic Landroid/os/PowerManager$WakeLock$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/PowerManager$WakeLockStateListener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/os/PowerManager$WakeLockStateListener;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PowerManager$WakeLock$1$$ExternalSyntheticLambda0;->f$0:Landroid/os/PowerManager$WakeLockStateListener;

    iput-boolean p2, p0, Landroid/os/PowerManager$WakeLock$1$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/os/PowerManager$WakeLock$1$$ExternalSyntheticLambda0;->f$0:Landroid/os/PowerManager$WakeLockStateListener;

    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock$1$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1}, Landroid/os/PowerManager$WakeLock$1;->lambda$onStateChanged$0(Landroid/os/PowerManager$WakeLockStateListener;Z)V

    return-void
.end method
