.class public final synthetic Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ScrollCaptureConnection;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ScrollCaptureConnection;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda2;->f$0:Landroid/view/ScrollCaptureConnection;

    iput-object p2, p0, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda2;->f$0:Landroid/view/ScrollCaptureConnection;

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/view/ScrollCaptureConnection;->$r8$lambda$hHPyC-Urci5oT3xeUPNMrMK2QkI(Landroid/view/ScrollCaptureConnection;Ljava/lang/Runnable;)V

    return-void
.end method
