.class Landroid/widget/AbsListView$SemSmoothScrollByMove;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemSmoothScrollByMove"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .registers 2

    .line 11783
    iput-object p1, p0, Landroid/widget/AbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$SemSmoothScrollByMove-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$SemSmoothScrollByMove;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 11785
    iget-object v0, p0, Landroid/widget/AbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmFlingRunnable(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->-$$Nest$fgetmScroller(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 11786
    iget-object v0, p0, Landroid/widget/AbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmSemScrollRemains(Landroid/widget/AbsListView;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Landroid/widget/AbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmSemScrollRemains(Landroid/widget/AbsListView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_3e

    .line 11789
    :cond_25
    iget-object v0, p0, Landroid/widget/AbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmSemScrollRemains(Landroid/widget/AbsListView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 11790
    .local v0, "remain":Ljava/lang/Integer;
    if-eqz v0, :cond_3f

    iget-object v1, p0, Landroid/widget/AbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_3f

    .line 11787
    .end local v0    # "remain":Ljava/lang/Integer;
    :cond_3e
    :goto_3e
    return-void

    .line 11793
    :cond_3f
    :goto_3f
    iget-object v0, p0, Landroid/widget/AbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 11794
    return-void
.end method
