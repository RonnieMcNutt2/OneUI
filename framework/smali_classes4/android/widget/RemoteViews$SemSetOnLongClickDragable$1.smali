.class Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SemSetOnLongClickDragable;)V
    .registers 2
    .param p1, "this$1"    # Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    .line 8383
    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .line 8387
    new-instance v0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 8388
    .local v0, "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drag info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v2, v2, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->clipData:Landroid/content/ClipData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v2, v2, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-boolean v2, v2, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->isNeedToRemove:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteViews"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8389
    iget-object v1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v1, v1, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->clipData:Landroid/content/ClipData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 8390
    iget-object v1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v1, v1, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragStartIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_5c

    .line 8393
    :try_start_40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v1, v1, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    const/high16 v7, 0x10000000

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_55
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_40 .. :try_end_55} :catch_56

    .line 8398
    goto :goto_5c

    .line 8396
    :catch_56
    move-exception v1

    .line 8397
    .local v1, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v3, "Cannot send pending intent: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8400
    .end local v1    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_5c
    :goto_5c
    iget-object v1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-boolean v1, v1, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->isNeedToRemove:Z

    if-eqz v1, :cond_6d

    .line 8401
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 8402
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_6d

    .line 8403
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8406
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_6d
    const/4 v1, 0x1

    return v1
.end method
