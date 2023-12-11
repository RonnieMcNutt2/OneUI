.class public final synthetic Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Landroid/net/Uri;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iput p3, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iget v2, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->$r8$lambda$l2aiBWM6QSTllMtBEHQMMGf0qEM(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Landroid/net/Uri;II)V

    return-void
.end method
