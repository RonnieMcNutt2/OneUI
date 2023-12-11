.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/window/SurfaceSyncGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/window/SurfaceSyncGroup;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda17;->f$0:Landroid/window/SurfaceSyncGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda17;->f$0:Landroid/window/SurfaceSyncGroup;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->lambda$performDraw$6(Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method
