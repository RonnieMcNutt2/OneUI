.class Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemSmoothScrollByMove"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .registers 2

    .line 7494
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 7496
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmFlingRunnable(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->-$$Nest$fgetmScroller(Landroid/widget/SemHorizontalAbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 7497
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmSemScrollRemains(Landroid/widget/SemHorizontalAbsListView;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmSemScrollRemains(Landroid/widget/SemHorizontalAbsListView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_3e

    .line 7500
    :cond_25
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmSemScrollRemains(Landroid/widget/SemHorizontalAbsListView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 7501
    .local v0, "remain":Ljava/lang/Integer;
    if-eqz v0, :cond_3f

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    goto :goto_3f

    .line 7498
    .end local v0    # "remain":Ljava/lang/Integer;
    :cond_3e
    :goto_3e
    return-void

    .line 7504
    :cond_3f
    :goto_3f
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/SemHorizontalAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 7505
    return-void
.end method
