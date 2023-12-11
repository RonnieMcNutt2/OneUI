.class Landroid/widget/RemoteViews$SemSetOnLongClickDragable$2;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


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

    .line 8413
    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dragEvent"    # Landroid/view/DragEvent;

    .line 8416
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const-string v1, "Cannot send pending intent: "

    const-string v2, "RemoteViews"

    packed-switch v0, :pswitch_data_50

    goto :goto_4e

    .line 8432
    :pswitch_c
    iget-object v0, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v0, v0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragExitNotiIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4e

    .line 8435
    :try_start_12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v0, v0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragExitNotiIntent:Landroid/app/PendingIntent;

    .line 8436
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    const/high16 v7, 0x10000000

    const/4 v8, 0x0

    .line 8435
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_27
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_12 .. :try_end_27} :catch_28

    goto :goto_2c

    .line 8439
    :catch_28
    move-exception v0

    .line 8440
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8442
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_2c
    goto :goto_4e

    .line 8418
    :pswitch_2d
    iget-object v0, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v0, v0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragEnterNotiIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4e

    .line 8421
    :try_start_33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v0, v0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragEnterNotiIntent:Landroid/app/PendingIntent;

    .line 8422
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    const/high16 v7, 0x10000000

    const/4 v8, 0x0

    .line 8421
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_48
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_33 .. :try_end_48} :catch_49

    goto :goto_4d

    .line 8425
    :catch_49
    move-exception v0

    .line 8426
    .restart local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8428
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_4d
    nop

    .line 8449
    :cond_4e
    :goto_4e
    const/4 v0, 0x1

    return v0

    :pswitch_data_50
    .packed-switch 0x5
        :pswitch_2d
        :pswitch_c
    .end packed-switch
.end method
