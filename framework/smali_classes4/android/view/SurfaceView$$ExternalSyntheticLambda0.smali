.class public final synthetic Landroid/view/SurfaceView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceView;

.field public final synthetic f$1:Landroid/window/SurfaceSyncGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncGroup;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceView;

    iput-object p2, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;->f$1:Landroid/window/SurfaceSyncGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;->f$1:Landroid/window/SurfaceSyncGroup;

    invoke-static {v0, v1}, Landroid/view/SurfaceView;->$r8$lambda$rPUhx7UxuVQ6YOrJ1Nm66AE9Ock(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method
