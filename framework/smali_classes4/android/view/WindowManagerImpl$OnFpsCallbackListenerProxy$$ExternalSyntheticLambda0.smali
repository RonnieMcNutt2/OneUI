.class public final synthetic Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;

    iput p2, p0, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy$$ExternalSyntheticLambda0;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;

    iget v1, p0, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy$$ExternalSyntheticLambda0;->f$1:F

    invoke-static {v0, v1}, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;->$r8$lambda$JrY6VRdWcrLb-6uWaY1QLN-tQlQ(Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;F)V

    return-void
.end method
