.class Landroid/widget/GridView$3;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/GridView;


# direct methods
.method constructor <init>(Landroid/widget/GridView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/GridView;

    .line 2228
    iput-object p1, p0, Landroid/widget/GridView$3;->this$0:Landroid/widget/GridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 2230
    iget-object v0, p0, Landroid/widget/GridView$3;->this$0:Landroid/widget/GridView;

    invoke-static {v0}, Landroid/widget/GridView;->-$$Nest$fgetmDndGridAnimator(Landroid/widget/GridView;)Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->speakDescriptionForAccessibility()V

    .line 2231
    return-void
.end method
