.class public final synthetic Landroid/view/SurfaceView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceView;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;->f$0:Landroid/view/SurfaceView;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;->f$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->$r8$lambda$cm3nmzErr-srXoT_KjIYQgdhFN0(Landroid/view/SurfaceView;)Z

    move-result v0

    return v0
.end method
