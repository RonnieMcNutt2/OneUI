.class public final synthetic Landroid/os/PowerManager$WakeLock$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/PowerManager$WakeLock;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/os/PowerManager$WakeLock;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PowerManager$WakeLock$$ExternalSyntheticLambda1;->f$0:Landroid/os/PowerManager$WakeLock;

    iput-object p2, p0, Landroid/os/PowerManager$WakeLock$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/os/PowerManager$WakeLock$$ExternalSyntheticLambda1;->f$0:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Landroid/os/PowerManager$WakeLock$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/os/PowerManager$WakeLock;->$r8$lambda$0FNKQOmZ7vsOr8p7F8tdmyEnl7U(Landroid/os/PowerManager$WakeLock;Ljava/lang/Runnable;)V

    return-void
.end method
