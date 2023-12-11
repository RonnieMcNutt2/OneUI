.class public final synthetic Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/window/DisplayAreaOrganizer$1;

.field public final synthetic f$1:Landroid/window/DisplayAreaInfo;

.field public final synthetic f$2:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(Landroid/window/DisplayAreaOrganizer$1;Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda0;->f$0:Landroid/window/DisplayAreaOrganizer$1;

    iput-object p2, p0, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda0;->f$1:Landroid/window/DisplayAreaInfo;

    iput-object p3, p0, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda0;->f$0:Landroid/window/DisplayAreaOrganizer$1;

    iget-object v1, p0, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda0;->f$1:Landroid/window/DisplayAreaInfo;

    iget-object v2, p0, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceControl;

    invoke-static {v0, v1, v2}, Landroid/window/DisplayAreaOrganizer$1;->$r8$lambda$ywNary7QB0XQxEDgWA1JbeuYO9M(Landroid/window/DisplayAreaOrganizer$1;Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method
