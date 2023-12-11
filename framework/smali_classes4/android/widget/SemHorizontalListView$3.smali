.class Landroid/widget/SemHorizontalListView$3;
.super Ljava/lang/Object;
.source "SemHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemHorizontalListView;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/SemHorizontalListView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/SemHorizontalListView;

    .line 4931
    iput-object p1, p0, Landroid/widget/SemHorizontalListView$3;->this$0:Landroid/widget/SemHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 4933
    iget-object v0, p0, Landroid/widget/SemHorizontalListView$3;->this$0:Landroid/widget/SemHorizontalListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalListView;->-$$Nest$fgetmDndListAnimator(Landroid/widget/SemHorizontalListView;)Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->speakDescriptionForAccessibility()V

    .line 4934
    return-void
.end method
