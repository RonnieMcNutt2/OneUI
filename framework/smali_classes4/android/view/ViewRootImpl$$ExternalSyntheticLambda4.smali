.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewRootImpl;

.field public final synthetic f$1:Landroid/window/SurfaceSyncGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncGroup;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda4;->f$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda4;->f$1:Landroid/window/SurfaceSyncGroup;

    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda4;->f$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda4;->f$1:Landroid/window/SurfaceSyncGroup;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->$r8$lambda$lpRbt5-6QgiGgpqgUJcswe8y-eQ(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method
