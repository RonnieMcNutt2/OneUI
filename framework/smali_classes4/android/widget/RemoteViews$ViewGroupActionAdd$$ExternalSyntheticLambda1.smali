.class public final synthetic Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewGroup;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda1;->f$0:Landroid/view/ViewGroup;

    iput p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda1;->f$0:Landroid/view/ViewGroup;

    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->lambda$initActionAsync$1(Landroid/view/ViewGroup;II)V

    return-void
.end method
