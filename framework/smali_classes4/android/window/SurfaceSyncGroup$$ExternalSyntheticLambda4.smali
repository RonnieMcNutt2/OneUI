.class public final synthetic Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/window/SurfaceSyncGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/window/SurfaceSyncGroup;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda4;->f$0:Landroid/window/SurfaceSyncGroup;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda4;->f$0:Landroid/window/SurfaceSyncGroup;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, p1}, Landroid/window/SurfaceSyncGroup;->lambda$add$3(Landroid/window/SurfaceSyncGroup;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
