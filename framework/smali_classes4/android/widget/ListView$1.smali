.class Landroid/widget/ListView$1;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListView;->setDndListAnimator(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/widget/ListView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/ListView;

    .line 243
    iput-object p1, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoScroll(I)V
    .registers 3
    .param p1, "delta"    # I

    .line 246
    iget-object v0, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0, p1, p1}, Landroid/widget/ListView;->trackMotionScroll(II)Z

    .line 247
    return-void
.end method
