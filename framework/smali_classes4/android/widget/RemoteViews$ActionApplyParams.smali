.class public Landroid/widget/RemoteViews$ActionApplyParams;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionApplyParams"
.end annotation


# instance fields
.field public applyThemeResId:I

.field public colorResources:Landroid/widget/RemoteViews$ColorResources;

.field public executor:Ljava/util/concurrent/Executor;

.field public handler:Landroid/widget/RemoteViews$InteractionHandler;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/RemoteViews;

    .line 6615
    iput-object p1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Landroid/widget/RemoteViews$ActionApplyParams;
    .registers 3

    .line 6624
    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    iget-object v1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    iget-object v1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 6625
    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->colorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 6626
    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$ActionApplyParams;->withColorResources(Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->executor:Ljava/util/concurrent/Executor;

    .line 6627
    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$ActionApplyParams;->withExecutor(Ljava/util/concurrent/Executor;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->applyThemeResId:I

    .line 6628
    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$ActionApplyParams;->withThemeResId(I)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    .line 6624
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6615
    invoke-virtual {p0}, Landroid/widget/RemoteViews$ActionApplyParams;->clone()Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    return-object v0
.end method

.method public withColorResources(Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$ActionApplyParams;
    .registers 2
    .param p1, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 6637
    iput-object p1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->colorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 6638
    return-object p0
.end method

.method public withExecutor(Ljava/util/concurrent/Executor;)Landroid/widget/RemoteViews$ActionApplyParams;
    .registers 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 6647
    iput-object p1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->executor:Ljava/util/concurrent/Executor;

    .line 6648
    return-object p0
.end method

.method public withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;
    .registers 2
    .param p1, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 6632
    iput-object p1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 6633
    return-object p0
.end method

.method public withThemeResId(I)Landroid/widget/RemoteViews$ActionApplyParams;
    .registers 2
    .param p1, "themeResId"    # I

    .line 6642
    iput p1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->applyThemeResId:I

    .line 6643
    return-object p0
.end method
