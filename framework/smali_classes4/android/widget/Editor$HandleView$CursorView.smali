.class Landroid/widget/Editor$HandleView$CursorView;
.super Landroid/view/View;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$HandleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CursorView"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method public constructor <init>(Landroid/widget/Editor$HandleView;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$1"    # Landroid/widget/Editor$HandleView;
    .param p2, "context"    # Landroid/content/Context;

    .line 5867
    iput-object p1, p0, Landroid/widget/Editor$HandleView$CursorView;->this$1:Landroid/widget/Editor$HandleView;

    .line 5868
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 5869
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 5873
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 5874
    iget-object v0, p0, Landroid/widget/Editor$HandleView$CursorView;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5875
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 5879
    iget-object v0, p0, Landroid/widget/Editor$HandleView$CursorView;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 5880
    .local v0, "width":I
    iget-object v1, p0, Landroid/widget/Editor$HandleView$CursorView;->this$1:Landroid/widget/Editor$HandleView;

    iget v1, v1, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    .line 5881
    .local v1, "height":I
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView$CursorView;->setMeasuredDimension(II)V

    .line 5882
    return-void
.end method
