.class public final synthetic Landroid/widget/MediaController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic f$0:Landroid/widget/MediaController;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/MediaController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/MediaController$$ExternalSyntheticLambda0;->f$0:Landroid/widget/MediaController;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .registers 2

    iget-object v0, p0, Landroid/widget/MediaController$$ExternalSyntheticLambda0;->f$0:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    return-void
.end method
