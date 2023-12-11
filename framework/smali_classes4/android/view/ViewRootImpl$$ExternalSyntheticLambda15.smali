.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ScrollCaptureSearchResults;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ScrollCaptureSearchResults;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda15;->f$0:Landroid/view/ScrollCaptureSearchResults;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda15;->f$0:Landroid/view/ScrollCaptureSearchResults;

    invoke-virtual {v0}, Landroid/view/ScrollCaptureSearchResults;->finish()V

    return-void
.end method
