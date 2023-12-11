.class Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

.field final synthetic val$params:Landroid/widget/RemoteViews$ActionApplyParams;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 3
    .param p1, "this$1"    # Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8249
    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

    iput-object p2, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->val$params:Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 14
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 8253
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v0, p2, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_4f

    .line 8254
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    .line 8258
    .local v0, "vg":Landroid/view/ViewGroup;
    instance-of v2, p1, Landroid/widget/AdapterViewAnimator;

    if-eqz v2, :cond_14

    .line 8259
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    .line 8261
    :cond_14
    if-nez v0, :cond_17

    .line 8262
    return v1

    .line 8265
    :cond_17
    const/4 v2, 0x0

    .line 8266
    .local v2, "response":Landroid/widget/RemoteViews$RemoteResponse;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 8267
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    if-ge v4, v3, :cond_35

    .line 8268
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x10202ef

    invoke-virtual {v5, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 8269
    .local v5, "tag":Ljava/lang/Object;
    instance-of v6, v5, Landroid/widget/RemoteViews$RemoteResponse;

    if-eqz v6, :cond_32

    .line 8270
    move-object v2, v5

    check-cast v2, Landroid/widget/RemoteViews$RemoteResponse;

    .line 8271
    goto :goto_35

    .line 8267
    .end local v5    # "tag":Ljava/lang/Object;
    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 8274
    .end local v4    # "i":I
    :cond_35
    :goto_35
    if-nez v2, :cond_38

    .line 8275
    return v1

    .line 8278
    :cond_38
    invoke-static {p2}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 8280
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 8281
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 8282
    iget-object v6, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->val$params:Landroid/widget/RemoteViews$ActionApplyParams;

    iget-object v6, v6, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v7, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

    iget-object v7, v7, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-interface {v6, p2, v7, v2}, Landroid/widget/RemoteViews$InteractionHandler;->onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    .line 8284
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v2    # "response":Landroid/widget/RemoteViews$RemoteResponse;
    .end local v3    # "childCount":I
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_4f
    return v1
.end method
