.class public final synthetic Landroid/view/ViewRootImpl$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameCommitCallback;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewRootImpl$6;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl$6;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$6$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewRootImpl$6;

    iput-wide p2, p0, Landroid/view/ViewRootImpl$6$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final onFrameCommit(Z)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl$6$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewRootImpl$6;

    iget-wide v1, p0, Landroid/view/ViewRootImpl$6$$ExternalSyntheticLambda0;->f$1:J

    invoke-static {v0, v1, v2, p1}, Landroid/view/ViewRootImpl$6;->$r8$lambda$9ThyGB6fC3mub7oMSjoAoWLhwMM(Landroid/view/ViewRootImpl$6;JZ)V

    return-void
.end method
