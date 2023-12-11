.class Landroid/widget/Editor$HandleView$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->getShowAnimator()Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;

.field final synthetic val$targetHeight:I

.field final synthetic val$targetWidth:I


# direct methods
.method constructor <init>(Landroid/widget/Editor$HandleView;II)V
    .registers 4
    .param p1, "this$1"    # Landroid/widget/Editor$HandleView;

    .line 7203
    iput-object p1, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    iput p2, p0, Landroid/widget/Editor$HandleView$10;->val$targetWidth:I

    iput p3, p0, Landroid/widget/Editor$HandleView$10;->val$targetHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 7231
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmIsShowAnimating(Landroid/widget/Editor$HandleView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 7232
    return-void

    .line 7235
    :cond_9
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    iget v2, p0, Landroid/widget/Editor$HandleView$10;->val$targetWidth:I

    iget v3, p0, Landroid/widget/Editor$HandleView$10;->val$targetHeight:I

    invoke-static {v1, v2, v3}, Landroid/widget/Editor$HandleView;->-$$Nest$mgetDrawableBounds(Landroid/widget/Editor$HandleView;II)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 7236
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->invalidate()V

    .line 7238
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 7239
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->removeHiderCallback()V

    goto :goto_34

    .line 7241
    :cond_2f
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->hideAfterDelay()V

    .line 7243
    :goto_34
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$HandleView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 7244
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v1}, Landroid/widget/Editor$HandleView;->-$$Nest$fputmIsShowAnimating(Landroid/widget/Editor$HandleView;Z)V

    .line 7245
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v2}, Landroid/widget/Editor$HandleView;->-$$Nest$fputmShowAnimator(Landroid/widget/Editor$HandleView;Landroid/animation/ObjectAnimator;)V

    .line 7246
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 9
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 7209
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmIsHideAnimating(Landroid/widget/Editor$HandleView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 7210
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmHideAnimator(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 7211
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v1}, Landroid/widget/Editor$HandleView;->-$$Nest$fputmIsHideAnimating(Landroid/widget/Editor$HandleView;Z)V

    .line 7213
    :cond_17
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 7214
    iget-object v0, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmPositionX(Landroid/widget/Editor$HandleView;)I

    move-result v0

    iget-object v2, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    iget v2, v2, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    .line 7215
    invoke-virtual {v2}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v2}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmPositionY(Landroid/widget/Editor$HandleView;)I

    move-result v2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    .line 7216
    .local v0, "pts":[I
    iget-object v2, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v2, v2, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    .line 7217
    aget v2, v0, v1

    iget-object v4, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    iget v4, v4, Landroid/widget/Editor$HandleView;->mHotspotX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v5}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    aput v2, v0, v1

    .line 7219
    iget-object v2, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v2}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmContainer(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;

    move-result-object v2

    aget v4, v0, v1

    aget v5, v0, v3

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v5, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 7221
    iget-object v2, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v2}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmCursorContainer(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_80

    .line 7222
    iget-object v2, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v2}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmCursorContainer(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;

    move-result-object v2

    aget v1, v0, v1

    aget v4, v0, v3

    iget-object v5, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    iget v5, v5, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v1, v4, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 7225
    :cond_80
    iget-object v1, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v1, v3}, Landroid/widget/Editor$HandleView;->-$$Nest$fputmIsShowAnimating(Landroid/widget/Editor$HandleView;Z)V

    .line 7226
    iget-object v1, p0, Landroid/widget/Editor$HandleView$10;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/Editor$HandleView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 7227
    return-void
.end method
