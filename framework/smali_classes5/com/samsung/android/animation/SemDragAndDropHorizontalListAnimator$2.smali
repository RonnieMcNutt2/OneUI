.class Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$2;
.super Ljava/lang/Object;
.source "SemDragAndDropHorizontalListAnimator.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    .line 150
    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7
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

    .line 153
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v0, p3}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$minitDragIfNecessary(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;I)Z

    move-result v0

    return v0
.end method
