.class public abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "HandleView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$HandleView$CursorView;
    }
.end annotation


# static fields
.field private static final CURSOR_MAGNIFYING_FACTOR:F = 1.3f

.field private static final HISTORY_SIZE:I = 0x5

.field private static final MAGNIFYING_FACTOR:F = 1.5f

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private CURSOR_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mContainer:Landroid/widget/PopupWindow;

.field private mContentsViewOffset:I

.field private mCurrentDragInitialTouchRawX:F

.field protected mCursor:Landroid/graphics/drawable/Drawable;

.field private mCursorContainer:Landroid/widget/PopupWindow;

.field protected mCursorHeight:I

.field mCursorRestoreAnimator:Landroid/animation/ObjectAnimator;

.field protected mCursorView:Landroid/widget/Editor$HandleView$CursorView;

.field protected mCursorWidth:I

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mFirstParentY:I

.field private mHideAnimator:Landroid/animation/ObjectAnimator;

.field protected mHorizontalGravity:I

.field protected mHorizontalOffset:F

.field protected mHotspotX:I

.field private final mIdealFingerToCursorOffset:I

.field private final mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mIsHideAnimating:Z

.field private mIsRestoring:Z

.field private mIsShowAnimating:Z

.field private mIsSwitching:Z

.field protected mIsVerticalScrolled:Z

.field protected mLastParentX:I

.field protected mLastParentXOnScreen:I

.field protected mLastParentY:I

.field protected mLastParentYOnScreen:I

.field protected mMaxCursorHeight:I

.field private mMinSize:I

.field private mNumberPreviousOffsets:I

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPositionHasChanged:Z

.field private mPositionX:I

.field private mPositionY:I

.field protected mPrevLine:I

.field protected mPreviousLineTouched:I

.field protected mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mShowAnimator:Landroid/animation/ObjectAnimator;

.field private mTextViewScaleX:F

.field private mTextViewScaleY:F

.field protected mTouchOffsetY:F

.field protected mTouchToWindowOffsetX:F

.field protected mTouchToWindowOffsetY:F

.field protected mUpperLimit:I

.field protected mVerticalOffset:F

.field protected mVerticalScrolledYOffset:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContainer(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCursorContainer(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHideAnimator(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsHideAnimating(Landroid/widget/Editor$HandleView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsShowAnimating(Landroid/widget/Editor$HandleView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPositionX(Landroid/widget/Editor$HandleView;)I
    .registers 1

    iget p0, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPositionY(Landroid/widget/Editor$HandleView;)I
    .registers 1

    iget p0, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowAnimator(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHideAnimator(Landroid/widget/Editor$HandleView;Landroid/animation/ObjectAnimator;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsHideAnimating(Landroid/widget/Editor$HandleView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsRestoring(Landroid/widget/Editor$HandleView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsShowAnimating(Landroid/widget/Editor$HandleView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShowAnimator(Landroid/widget/Editor$HandleView;Landroid/animation/ObjectAnimator;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDrawableBounds(Landroid/widget/Editor$HandleView;II)Landroid/graphics/Rect;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshouldShow(Landroid/widget/Editor$HandleView;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->shouldShow()Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .registers 22
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I

    .line 5886
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 5887
    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 5824
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 5826
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 5830
    iput v2, v0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 5834
    iput v2, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 5837
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    .line 5858
    const/4 v4, 0x0

    iput v4, v0, Landroid/widget/Editor$HandleView;->mCursorHeight:I

    .line 5859
    iput v4, v0, Landroid/widget/Editor$HandleView;->mCursorWidth:I

    .line 5860
    iput v4, v0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    .line 5861
    iput v4, v0, Landroid/widget/Editor$HandleView;->mUpperLimit:I

    .line 5862
    const/4 v5, 0x0

    iput-object v5, v0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    .line 5863
    iput-object v5, v0, Landroid/widget/Editor$HandleView;->mCursorView:Landroid/widget/Editor$HandleView$CursorView;

    .line 5864
    iput-object v5, v0, Landroid/widget/Editor$HandleView;->mCursorRestoreAnimator:Landroid/animation/ObjectAnimator;

    .line 6063
    const/4 v6, 0x5

    new-array v7, v6, [J

    iput-object v7, v0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 6064
    new-array v6, v6, [I

    iput-object v6, v0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 6065
    iput v4, v0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 6066
    iput v4, v0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 6864
    iput-boolean v4, v0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    .line 6866
    new-instance v6, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v6, v0}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v6, v0, Landroid/widget/Editor$HandleView;->CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 7154
    new-instance v6, Landroid/widget/Editor$HandleView$8;

    invoke-direct {v6, v0}, Landroid/widget/Editor$HandleView$8;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v6, v0, Landroid/widget/Editor$HandleView;->CURSOR_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 7174
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ecccccd    # 0.4f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e2e147b    # 0.17f

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v6, v0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 5888
    move/from16 v6, p4

    invoke-virtual {v0, v6}, Landroid/widget/Editor$HandleView;->setId(I)V

    .line 5890
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5892
    .local v7, "contentHolder":Landroid/widget/LinearLayout;
    new-instance v8, Landroid/widget/PopupWindow;

    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10102c8

    invoke-direct {v8, v9, v5, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, v0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 5894
    invoke-virtual {v8, v3}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 5895
    invoke-virtual {v8, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 5896
    const/16 v9, 0x3ea

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 5903
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5904
    invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 5908
    instance-of v11, v0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v11, :cond_172

    .line 5909
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Editor;->updateCursorPosition()V

    .line 5910
    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 5911
    .local v11, "drawableForCursor":Landroid/graphics/drawable/Drawable;
    if-nez v11, :cond_e4

    .line 5912
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    .line 5913
    .local v12, "rectF":Landroid/graphics/RectF;
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 5914
    .local v13, "highlightPath":Landroid/graphics/Path;
    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    .line 5915
    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$mgetActiveLayout(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v15

    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v14, v15, v13, v2}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 5916
    invoke-virtual {v13, v12, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5917
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 5918
    .local v2, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 5919
    iget v14, v12, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    iget v15, v12, Landroid/graphics/RectF;->top:F

    float-to-int v15, v15

    iget v9, v12, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    iget v4, v12, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v11, v14, v15, v9, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5921
    .end local v2    # "drawable":Landroid/graphics/drawable/ShapeDrawable;
    .end local v12    # "rectF":Landroid/graphics/RectF;
    .end local v13    # "highlightPath":Landroid/graphics/Path;
    :cond_e4
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/Editor$HandleView;->mCursor:Landroid/graphics/drawable/Drawable;

    .line 5922
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    iput v2, v0, Landroid/widget/Editor$HandleView;->mCursorHeight:I

    .line 5923
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/Editor$HandleView;->mCursorWidth:I

    .line 5925
    int-to-float v2, v2

    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getCursorThicknessScale()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Landroid/widget/Editor$HandleView;->mCursorWidth:I

    .line 5928
    if-nez v2, :cond_117

    .line 5929
    iput v3, v0, Landroid/widget/Editor$HandleView;->mCursorWidth:I

    .line 5932
    :cond_117
    iget v2, v0, Landroid/widget/Editor$HandleView;->mCursorHeight:I

    int-to-float v2, v2

    const v4, 0x3fa66666    # 1.3f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    .line 5933
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v5, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, v0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    .line 5935
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 5936
    iget-object v2, v0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 5937
    iget-object v2, v0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    const/16 v4, 0x3ea

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 5939
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5940
    .local v2, "cursorHolder":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5941
    new-instance v4, Landroid/widget/Editor$HandleView$CursorView;

    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/widget/Editor$HandleView$CursorView;-><init>(Landroid/widget/Editor$HandleView;Landroid/content/Context;)V

    iput-object v4, v0, Landroid/widget/Editor$HandleView;->mCursorView:Landroid/widget/Editor$HandleView$CursorView;

    .line 5942
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5943
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 5944
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setDecorViewBGNull(Z)V

    .line 5945
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->mCursorView:Landroid/widget/Editor$HandleView$CursorView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/Editor$HandleView$CursorView;->setVisibility(I)V

    .line 5949
    .end local v2    # "cursorHolder":Landroid/widget/LinearLayout;
    .end local v11    # "drawableForCursor":Landroid/graphics/drawable/Drawable;
    :cond_172
    move-object/from16 v2, p2

    move-object/from16 v4, p3

    invoke-virtual {v0, v2, v4}, Landroid/widget/Editor$HandleView;->setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5951
    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x1050509

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/Editor$HandleView;->mMinSize:I

    .line 5955
    instance-of v5, v0, Landroid/widget/Editor$InsertionHandleView;

    const/high16 v9, 0x3fc00000    # 1.5f

    if-eqz v5, :cond_1ae

    .line 5956
    iget-object v5, v0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    iget-object v10, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-virtual {v5, v10}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 5957
    iget-object v5, v0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    iget v10, v0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    invoke-virtual {v5, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5962
    :cond_1ae
    iget-object v5, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    invoke-virtual {v8, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 5963
    iget-object v5, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v5, v9

    invoke-virtual {v8, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5966
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v5

    .line 5967
    .local v5, "handleHeight":I
    const v8, -0x41666666    # -0.3f

    int-to-float v9, v5

    mul-float/2addr v9, v8

    iput v9, v0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 5968
    const-string/jumbo v8, "widget__finger_to_cursor_distance"

    const/4 v9, -0x1

    invoke-static {v8, v9}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v8

    .line 5971
    .local v8, "distance":I
    if-ltz v8, :cond_209

    const/16 v9, 0x64

    if-le v8, v9, :cond_1ea

    goto :goto_209

    .line 5975
    :cond_1ea
    int-to-float v9, v8

    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    .line 5977
    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 5975
    invoke-static {v3, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/Editor$HandleView;->mIdealFingerToCursorOffset:I

    .line 5978
    int-to-float v3, v3

    iget v9, v0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float/2addr v3, v9

    iput v3, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    goto :goto_216

    .line 5972
    :cond_209
    :goto_209
    const v3, 0x3f333333    # 0.7f

    int-to-float v9, v5

    mul-float/2addr v9, v3

    iput v9, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    .line 5973
    iget v3, v0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    sub-float/2addr v9, v3

    float-to-int v3, v9

    iput v3, v0, Landroid/widget/Editor$HandleView;->mIdealFingerToCursorOffset:I

    .line 5980
    :goto_216
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .registers 6
    .param p1, "offset"    # I

    .line 6074
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 6075
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aput p1, v1, v0

    .line 6076
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 6077
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 6078
    return-void
.end method

.method private checkForTransforms()Z
    .registers 8

    .line 6425
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifierIsShowing(Landroid/widget/Editor$MagnifierMotionAnimator;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 6427
    return v1

    .line 6430
    :cond_e
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getRotation()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    const/4 v3, 0x0

    if-nez v0, :cond_99

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getRotationX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_99

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 6431
    invoke-virtual {v0}, Landroid/widget/TextView;->getRotationY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3b

    goto :goto_99

    .line 6434
    :cond_3b
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    .line 6435
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleY()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    .line 6437
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6438
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_5d
    if-eqz v0, :cond_98

    .line 6439
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_93

    .line 6440
    move-object v4, v0

    check-cast v4, Landroid/view/View;

    .line 6441
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRotation()F

    move-result v5

    cmpl-float v5, v5, v2

    if-nez v5, :cond_92

    invoke-virtual {v4}, Landroid/view/View;->getRotationX()F

    move-result v5

    cmpl-float v5, v5, v2

    if-nez v5, :cond_92

    .line 6442
    invoke-virtual {v4}, Landroid/view/View;->getRotationY()F

    move-result v5

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_7f

    goto :goto_92

    .line 6445
    :cond_7f
    iget v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    .line 6446
    iget v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v6

    mul-float/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    goto :goto_93

    .line 6443
    :cond_92
    :goto_92
    return v3

    .line 6448
    .end local v4    # "view":Landroid/view/View;
    :cond_93
    :goto_93
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_5d

    .line 6450
    :cond_98
    return v1

    .line 6432
    .end local v0    # "viewParent":Landroid/view/ViewParent;
    :cond_99
    :goto_99
    return v3
.end method

.method private filterOnTouchUp(Z)V
    .registers 12
    .param p1, "fromTouchScreen"    # Z

    .line 6081
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 6082
    .local v0, "now":J
    const/4 v2, 0x0

    .line 6083
    .local v2, "i":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 6084
    .local v3, "index":I
    iget v4, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 6085
    .local v4, "iMax":I
    :goto_e
    if-ge v2, v4, :cond_25

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v6, v3

    sub-long v6, v0, v6

    const-wide/16 v8, 0x96

    cmp-long v6, v6, v8

    if-gez v6, :cond_25

    .line 6086
    add-int/lit8 v2, v2, 0x1

    .line 6087
    iget v6, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v6, v2

    add-int/2addr v6, v5

    rem-int/lit8 v3, v6, 0x5

    goto :goto_e

    .line 6090
    :cond_25
    if-lez v2, :cond_3d

    if-ge v2, v4, :cond_3d

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v3

    sub-long v5, v0, v5

    const-wide/16 v7, 0x15e

    cmp-long v5, v5, v7

    if-lez v5, :cond_3d

    .line 6092
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v5, v5, v3

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, p1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 6094
    :cond_3d
    return-void
.end method

.method private getChangeSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;
    .registers 7
    .param p1, "startRect"    # Landroid/graphics/Rect;
    .param p2, "targetRect"    # Landroid/graphics/Rect;

    .line 6908
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "bounds"

    invoke-static {v0, v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 6911
    .local v0, "changeSizeAnimator":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/widget/Editor$HandleView$2;

    invoke-direct {v1, p0}, Landroid/widget/Editor$HandleView$2;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6918
    new-instance v1, Landroid/widget/Editor$HandleView$3;

    invoke-direct {v1, p0, p2}, Landroid/widget/Editor$HandleView$3;-><init>(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6932
    return-object v0
.end method

.method private getCursorSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/animation/ObjectAnimator;
    .registers 8
    .param p1, "startRect"    # Landroid/graphics/Rect;
    .param p2, "targetRect"    # Landroid/graphics/Rect;
    .param p3, "isHideAnim"    # Z

    .line 7118
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mCursor:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->CURSOR_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "bounds"

    invoke-static {v0, v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 7121
    .local v0, "cursorSizeAnimator":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/widget/Editor$HandleView$6;

    invoke-direct {v1, p0}, Landroid/widget/Editor$HandleView$6;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7128
    new-instance v1, Landroid/widget/Editor$HandleView$7;

    invoke-direct {v1, p0, p2, p3}, Landroid/widget/Editor$HandleView$7;-><init>(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7151
    return-object v0
.end method

.method private getDrawableBounds(II)Landroid/graphics/Rect;
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 6884
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    sub-int/2addr v0, v1

    .line 6885
    .local v0, "left":I
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-eqz v2, :cond_10

    .line 6886
    :cond_f
    add-int/2addr v0, v1

    .line 6888
    :cond_10
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_19

    const/4 v2, 0x1

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v1

    .line 6889
    .local v1, "hotspot":I
    const/4 v2, 0x0

    .line 6891
    .local v2, "offset":I
    iget v4, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    packed-switch v4, :pswitch_data_40

    :pswitch_24
    goto :goto_30

    .line 6899
    :pswitch_25
    mul-int/lit8 v4, p1, 0x3

    div-int/lit8 v2, v4, 0x4

    goto :goto_30

    .line 6893
    :pswitch_2a
    div-int/lit8 v2, p1, 0x4

    .line 6894
    goto :goto_30

    .line 6896
    :pswitch_2d
    div-int/lit8 v2, p1, 0x2

    .line 6897
    nop

    .line 6902
    :goto_30
    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, v2, v1

    sub-int v5, v0, v5

    sub-int v6, v2, v1

    sub-int v6, v0, v6

    add-int/2addr v6, p1

    invoke-direct {v4, v5, v3, v6, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_24
        :pswitch_2a
        :pswitch_24
        :pswitch_25
    .end packed-switch
.end method

.method private getHideAnimator()Landroid/animation/ObjectAnimator;
    .registers 9

    .line 7258
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7259
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 7260
    .local v1, "startWidth":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 7262
    .local v2, "startHeight":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 7263
    invoke-direct {p0, v1, v2}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v5

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 7262
    const-string v6, "bounds"

    invoke-static {v3, v6, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 7267
    .local v3, "hideAnimator":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/widget/Editor$HandleView$11;

    invoke-direct {v4, p0}, Landroid/widget/Editor$HandleView$11;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7277
    new-instance v4, Landroid/widget/Editor$HandleView$12;

    invoke-direct {v4, p0}, Landroid/widget/Editor$HandleView$12;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7316
    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7317
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7319
    return-object v3
.end method

.method private getOtherSelectionHandle()Landroid/widget/Editor$HandleView;
    .registers 3

    .line 6582
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 6583
    .local v0, "controller":Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_1f

    .line 6586
    :cond_f
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$fgetmStartHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v1

    if-eq v1, p0, :cond_1a

    .line 6587
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$fgetmStartHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v1

    goto :goto_1e

    .line 6588
    :cond_1a
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$fgetmEndHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v1

    .line 6586
    :goto_1e
    return-object v1

    .line 6584
    :cond_1f
    :goto_1f
    const/4 v1, 0x0

    return-object v1
.end method

.method private getRestorePositionAnimator()Landroid/animation/ValueAnimator;
    .registers 12

    .line 7057
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 7058
    .local v0, "startCoords":[I
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 7060
    .local v2, "targetCoords":[I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 7061
    .local v3, "layout":Landroid/text/Layout;
    if-nez v3, :cond_1e

    .line 7062
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 7063
    const/4 v1, 0x0

    return-object v1

    .line 7066
    :cond_1e
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$mgetActiveLayout(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v3

    .line 7067
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v4

    .line 7068
    .local v4, "offset":I
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 7070
    .local v5, "line":I
    invoke-virtual {p0, v3, v4}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v6

    iget v7, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v6, v7

    .line 7071
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    .line 7072
    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x0

    aput v6, v2, v7

    .line 7073
    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    .line 7074
    invoke-virtual {v8}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v8

    add-int/2addr v6, v8

    const/4 v8, 0x1

    aput v6, v2, v8

    .line 7076
    aget v6, v0, v7

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    aput v6, v0, v7

    .line 7077
    aget v6, v2, v7

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    aput v6, v2, v7

    .line 7079
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    .line 7080
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    .line 7082
    aget v6, v0, v7

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v6, v9

    aput v6, v0, v7

    .line 7083
    aget v6, v2, v7

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v6, v9

    aput v6, v2, v7

    .line 7085
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    .line 7086
    .local v1, "valuesHolders":[Landroid/animation/PropertyValuesHolder;
    aget v6, v0, v7

    aget v9, v2, v7

    filled-new-array {v6, v9}, [I

    move-result-object v6

    const-string/jumbo v9, "x"

    invoke-static {v9, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v1, v7

    .line 7087
    aget v6, v0, v8

    aget v7, v2, v8

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const-string/jumbo v7, "y"

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v1, v8

    .line 7089
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 7092
    .local v6, "restorePositionAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v7, 0xfa

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7093
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7095
    new-instance v7, Landroid/widget/Editor$HandleView$5;

    invoke-direct {v7, p0}, Landroid/widget/Editor$HandleView$5;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7113
    return-object v6
.end method

.method private getRestoreSizeAnimator()Landroid/animation/ObjectAnimator;
    .registers 9

    .line 7038
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7039
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 7040
    .local v1, "drawableStartWidth":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 7041
    .local v2, "drawableStartHeight":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 7042
    .local v3, "drawableTargetWidth":I
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 7044
    .local v4, "drawableTargetHeight":I
    nop

    .line 7045
    invoke-direct {p0, v1, v2}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v5

    .line 7046
    invoke-direct {p0, v3, v4}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v6

    .line 7044
    invoke-direct {p0, v5, v6}, Landroid/widget/Editor$HandleView;->getChangeSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 7048
    .local v5, "restoreSizeAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7049
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7051
    return-object v5
.end method

.method private getShowAnimator()Landroid/animation/ObjectAnimator;
    .registers 9

    .line 7182
    const/4 v0, 0x0

    .line 7183
    .local v0, "startWidth":I
    const/4 v1, 0x0

    .line 7185
    .local v1, "startHeight":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 7186
    .local v2, "targetWidth":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 7189
    .local v3, "targetHeight":I
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 7190
    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v6

    .line 7191
    invoke-direct {p0, v2, v3}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 7189
    const-string v7, "bounds"

    invoke-static {v4, v7, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 7193
    .local v4, "showAnimator":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/widget/Editor$HandleView$9;

    invoke-direct {v5, p0}, Landroid/widget/Editor$HandleView$9;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7203
    new-instance v5, Landroid/widget/Editor$HandleView$10;

    invoke-direct {v5, p0, v2, v3}, Landroid/widget/Editor$HandleView$10;-><init>(Landroid/widget/Editor$HandleView;II)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7250
    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7251
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7253
    return-object v4
.end method

.method private handleOverlapsMagnifier(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z
    .registers 10
    .param p1, "handle"    # Landroid/widget/Editor$HandleView;
    .param p2, "magnifierRect"    # Landroid/graphics/Rect;

    .line 6569
    iget-object v0, p1, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 6570
    .local v0, "window":Landroid/widget/PopupWindow;
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->hasDecorView()Z

    move-result v1

    if-nez v1, :cond_a

    .line 6571
    const/4 v1, 0x0

    return v1

    .line 6573
    :cond_a
    new-instance v1, Landroid/graphics/Rect;

    .line 6574
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 6575
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 6576
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 6577
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6578
    .local v1, "handleRect":Landroid/graphics/Rect;
    invoke-static {v1, p2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    return v2
.end method

.method private isScrollChanged(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6820
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6821
    .local v0, "viewPortRect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 6823
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_27

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_25

    goto :goto_27

    :cond_25
    const/4 v1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v1, 0x1

    :goto_28
    return v1
.end method

.method private isValid()Z
    .registers 4

    .line 7323
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 7324
    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_40

    .line 7328
    :cond_1a
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_31

    .line 7329
    return v1

    .line 7332
    :cond_31
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 7333
    return v1

    .line 7336
    :cond_3e
    const/4 v0, 0x1

    return v0

    .line 7325
    :cond_40
    :goto_40
    return v1
.end method

.method private magnifySize()V
    .registers 12

    .line 6937
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 6938
    .local v0, "drawableStartWidth":I
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 6939
    .local v1, "drawableStartHeight":I
    int-to-float v2, v0

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 6940
    .local v2, "drawableTargetWidth":I
    int-to-float v4, v1

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 6942
    .local v4, "drawableTargetHeight":I
    nop

    .line 6943
    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v5

    .line 6944
    invoke-direct {p0, v2, v4}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v6

    .line 6942
    invoke-direct {p0, v5, v6}, Landroid/widget/Editor$HandleView;->getChangeSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 6946
    .local v5, "magnifySizeAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6947
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6948
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 6951
    instance-of v6, p0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v6, :cond_70

    .line 6952
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 6954
    .local v6, "targetRect":Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v3, v7

    div-int/lit8 v3, v3, 0x2

    .line 6955
    .local v3, "center":I
    iget v7, p0, Landroid/widget/Editor$HandleView;->mCursorWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v3, v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 6956
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, p0, Landroid/widget/Editor$HandleView;->mCursorWidth:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 6957
    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 6958
    iget v8, p0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 6960
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->mCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {p0, v8, v6, v7}, Landroid/widget/Editor$HandleView;->getCursorSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 6962
    .local v7, "cursorSizeAnimator":Landroid/animation/ObjectAnimator;
    const/16 v8, 0xfa

    .line 6963
    .local v8, "duration":I
    int-to-long v9, v8

    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6964
    iget-object v9, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6965
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 6968
    .end local v3    # "center":I
    .end local v6    # "targetRect":Landroid/graphics/Rect;
    .end local v7    # "cursorSizeAnimator":Landroid/animation/ObjectAnimator;
    .end local v8    # "duration":I
    :cond_70
    return-void
.end method

.method private obtainMagnifierShowCoordinates(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z
    .registers 23
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "showPosInView"    # Landroid/graphics/PointF;

    .line 6462
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getMagnifierHandleTrigger()I

    move-result v2

    .line 6465
    .local v2, "trigger":I
    packed-switch v2, :pswitch_data_200

    .line 6479
    const/4 v3, -0x1

    .line 6480
    .local v3, "offset":I
    const/4 v4, -0x1

    .local v4, "otherHandleOffset":I
    goto :goto_44

    .line 6475
    .end local v3    # "offset":I
    .end local v4    # "otherHandleOffset":I
    :pswitch_e
    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 6476
    .restart local v3    # "offset":I
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 6477
    .restart local v4    # "otherHandleOffset":I
    goto :goto_44

    .line 6471
    .end local v3    # "offset":I
    .end local v4    # "otherHandleOffset":I
    :pswitch_23
    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 6472
    .restart local v3    # "offset":I
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 6473
    .restart local v4    # "otherHandleOffset":I
    goto :goto_44

    .line 6467
    .end local v3    # "offset":I
    .end local v4    # "otherHandleOffset":I
    :pswitch_38
    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 6468
    .restart local v3    # "offset":I
    const/4 v4, -0x1

    .line 6469
    .restart local v4    # "otherHandleOffset":I
    nop

    .line 6484
    :goto_44
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v3, v5, :cond_49

    .line 6485
    return v6

    .line 6488
    :cond_49
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_57

    .line 6489
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    goto :goto_61

    .line 6490
    :cond_57
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-ne v7, v8, :cond_61

    .line 6491
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    .line 6494
    :cond_61
    :goto_61
    iget-object v7, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .line 6495
    .local v7, "layout":Landroid/text/Layout;
    invoke-virtual {v0, v7, v3}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v9

    .line 6498
    .local v9, "lineNumber":I
    if-eq v4, v5, :cond_79

    .line 6499
    invoke-virtual {v0, v7, v3}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v5

    if-ne v9, v5, :cond_79

    move v5, v8

    goto :goto_7a

    :cond_79
    move v5, v6

    .line 6500
    .local v5, "sameLineSelection":Z
    :goto_7a
    if-eqz v5, :cond_a8

    if-ge v3, v4, :cond_80

    move v10, v8

    goto :goto_81

    :cond_80
    move v10, v6

    :goto_81
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    .line 6502
    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v0, v11, v3}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v11

    iget-object v12, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    .line 6503
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v12

    invoke-virtual {v0, v12, v4}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_a3

    move v11, v8

    goto :goto_a4

    :cond_a3
    move v11, v6

    :goto_a4
    if-eq v10, v11, :cond_a8

    move v10, v8

    goto :goto_a9

    :cond_a8
    move v10, v6

    .line 6506
    .local v10, "rtl":Z
    :goto_a9
    const/4 v11, 0x2

    new-array v12, v11, [I

    .line 6507
    .local v12, "textViewLocationOnScreen":[I
    iget-object v13, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 6508
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    aget v14, v12, v6

    int-to-float v14, v14

    sub-float/2addr v13, v14

    .line 6510
    .local v13, "touchXInView":F
    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-$$Nest$fgetmNewMagnifierEnabled(Landroid/widget/Editor;)Z

    move-result v14

    if-eqz v14, :cond_da

    .line 6511
    const/4 v11, 0x0

    .line 6512
    .local v11, "leftBound":F
    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    .line 6513
    .local v14, "rightBound":F
    cmpg-float v16, v13, v11

    if-ltz v16, :cond_d9

    cmpl-float v16, v13, v14

    if-lez v16, :cond_195

    .line 6515
    :cond_d9
    return v6

    .line 6518
    .end local v11    # "leftBound":F
    .end local v14    # "rightBound":F
    :cond_da
    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v14

    iget-object v6, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    sub-int/2addr v14, v6

    int-to-float v6, v14

    .line 6519
    .local v6, "leftBound":F
    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v14

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getScrollX()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    .line 6520
    .restart local v14    # "rightBound":F
    if-eqz v5, :cond_120

    if-ne v2, v11, :cond_10c

    move v11, v8

    goto :goto_10d

    :cond_10c
    const/4 v11, 0x0

    :goto_10d
    xor-int/2addr v11, v10

    if-eqz v11, :cond_120

    .line 6522
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v0, v11, v4}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v11

    add-float/2addr v6, v11

    goto :goto_12f

    .line 6524
    :cond_120
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    add-float/2addr v6, v11

    .line 6526
    :goto_12f
    if-eqz v5, :cond_149

    if-ne v2, v8, :cond_135

    move v11, v8

    goto :goto_136

    :cond_135
    const/4 v11, 0x0

    :goto_136
    xor-int/2addr v11, v10

    if-eqz v11, :cond_149

    .line 6528
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v0, v11, v4}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v11

    add-float/2addr v14, v11

    goto :goto_158

    .line 6530
    :cond_149
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    add-float/2addr v14, v11

    .line 6532
    :goto_158
    iget v11, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    mul-float/2addr v6, v11

    .line 6533
    mul-float/2addr v14, v11

    .line 6534
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v11

    invoke-static {v11}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Magnifier;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v15

    invoke-static {v15}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v15

    .line 6535
    invoke-virtual {v15}, Landroid/widget/Magnifier;->getZoom()F

    move-result v15

    div-float/2addr v11, v15

    .line 6534
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v11, v11

    .line 6536
    .local v11, "contentWidth":F
    const/high16 v15, 0x40000000    # 2.0f

    div-float v17, v11, v15

    sub-float v17, v6, v17

    cmpg-float v17, v13, v17

    if-ltz v17, :cond_1fc

    div-float v18, v11, v15

    add-float v18, v14, v18

    cmpl-float v15, v13, v18

    if-lez v15, :cond_194

    move/from16 v19, v2

    goto :goto_1fe

    :cond_194
    move v11, v6

    .line 6544
    .end local v6    # "leftBound":F
    .local v11, "leftBound":F
    :cond_195
    iget v6, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v15

    if-nez v6, :cond_19f

    .line 6551
    move v6, v13

    .local v6, "scaledTouchXInView":F
    goto :goto_1af

    .line 6553
    .end local v6    # "scaledTouchXInView":F
    :cond_19f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v15, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    sub-float/2addr v6, v15

    iget v8, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    mul-float/2addr v6, v8

    add-float/2addr v6, v15

    const/4 v8, 0x0

    aget v15, v12, v8

    int-to-float v8, v15

    sub-float/2addr v6, v8

    .line 6557
    .restart local v6    # "scaledTouchXInView":F
    :goto_1af
    invoke-static {v14, v6}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v1, Landroid/graphics/PointF;->x:F

    .line 6560
    iget-object v8, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    .line 6561
    invoke-virtual {v15}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v15

    .line 6562
    move/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "trigger":I
    .local v19, "trigger":I
    invoke-virtual {v15, v9, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v2

    add-int/2addr v8, v2

    int-to-float v2, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    iget-object v8, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    .line 6563
    invoke-virtual {v8}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v2, v8

    iget-object v8, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v2, v8

    iget v8, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    mul-float/2addr v2, v8

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 6564
    const/4 v2, 0x1

    return v2

    .line 6536
    .end local v19    # "trigger":I
    .restart local v2    # "trigger":I
    .local v6, "leftBound":F
    .local v11, "contentWidth":F
    :cond_1fc
    move/from16 v19, v2

    .line 6539
    .end local v2    # "trigger":I
    .restart local v19    # "trigger":I
    :goto_1fe
    const/4 v2, 0x0

    return v2

    :pswitch_data_200
    .packed-switch 0x0
        :pswitch_38
        :pswitch_23
        :pswitch_e
    .end packed-switch
.end method

.method private restore()V
    .registers 18

    .line 6972
    move-object/from16 v0, p0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6974
    .local v1, "restoreAnimators":Landroid/animation/AnimatorSet;
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getRestoreSizeAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 6975
    .local v2, "restoreSizeAnimator":Landroid/animation/ObjectAnimator;
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getRestorePositionAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 6976
    .local v3, "restorePositionAnimator":Landroid/animation/ValueAnimator;
    if-nez v3, :cond_1d

    .line 6977
    const-string v4, "Editor"

    const-string/jumbo v5, "restorePositionAnimator is null. hide() is called."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6978
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->hide()V

    .line 6979
    return-void

    .line 6983
    :cond_1d
    instance-of v4, v0, Landroid/widget/Editor$InsertionHandleView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v4, :cond_95

    .line 6984
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 6985
    .local v4, "targetRect":Landroid/graphics/Rect;
    iget-object v8, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    div-int/2addr v8, v7

    .line 6986
    .local v8, "center":I
    iget v9, v0, Landroid/widget/Editor$HandleView;->mCursorWidth:I

    div-int/2addr v9, v7

    sub-int v9, v8, v9

    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 6987
    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/widget/Editor$HandleView;->mCursorWidth:I

    add-int/2addr v9, v10

    iput v9, v4, Landroid/graphics/Rect;->right:I

    .line 6989
    iget-object v9, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$mgetActiveLayout(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v9

    .line 6990
    .local v9, "layout":Landroid/text/Layout;
    iget-object v10, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v10

    .line 6991
    .local v10, "offset":I
    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 6992
    .local v11, "line":I
    invoke-virtual {v9, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    .line 6993
    .local v12, "top":I
    invoke-virtual {v9, v11, v6}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v13

    .line 6995
    .local v13, "bottom":I
    iget v14, v0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    sub-int v15, v13, v12

    sub-int/2addr v14, v15

    iput v14, v4, Landroid/graphics/Rect;->top:I

    .line 6996
    iget v14, v0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    iput v14, v4, Landroid/graphics/Rect;->bottom:I

    .line 6998
    iget-object v14, v0, Landroid/widget/Editor$HandleView;->mCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-direct {v0, v14, v4, v5}, Landroid/widget/Editor$HandleView;->getCursorSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/animation/ObjectAnimator;

    move-result-object v14

    iput-object v14, v0, Landroid/widget/Editor$HandleView;->mCursorRestoreAnimator:Landroid/animation/ObjectAnimator;

    .line 7000
    const/16 v15, 0xfa

    .line 7001
    .local v15, "duration":I
    move/from16 v16, v8

    .end local v8    # "center":I
    .local v16, "center":I
    int-to-long v7, v15

    invoke-virtual {v14, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7002
    iget-object v7, v0, Landroid/widget/Editor$HandleView;->mCursorRestoreAnimator:Landroid/animation/ObjectAnimator;

    iget-object v8, v0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7003
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v2, v7, v6

    aput-object v3, v7, v5

    iget-object v5, v0, Landroid/widget/Editor$HandleView;->mCursorRestoreAnimator:Landroid/animation/ObjectAnimator;

    const/4 v8, 0x2

    aput-object v5, v7, v8

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 7004
    .end local v4    # "targetRect":Landroid/graphics/Rect;
    .end local v9    # "layout":Landroid/text/Layout;
    .end local v10    # "offset":I
    .end local v11    # "line":I
    .end local v12    # "top":I
    .end local v13    # "bottom":I
    .end local v15    # "duration":I
    .end local v16    # "center":I
    goto :goto_9f

    .line 7006
    :cond_95
    move v8, v7

    new-array v4, v8, [Landroid/animation/Animator;

    aput-object v2, v4, v6

    aput-object v3, v4, v5

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 7008
    :goto_9f
    new-instance v4, Landroid/widget/Editor$HandleView$4;

    invoke-direct {v4, v0}, Landroid/widget/Editor$HandleView$4;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7033
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 7034
    return-void
.end method

.method private setVisible(Z)V
    .registers 6
    .param p1, "visible"    # Z

    .line 6193
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_c

    move v3, v1

    goto :goto_d

    :cond_c
    move v3, v2

    :goto_d
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6195
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1f

    .line 6196
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6199
    :cond_1f
    return-void
.end method

.method private shouldShow()Z
    .registers 4

    .line 6180
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_6

    .line 6181
    const/4 v0, 0x1

    return v0

    .line 6184
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6185
    const/4 v0, 0x0

    return v0

    .line 6188
    :cond_14
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    .line 6189
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v2, v2

    .line 6188
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v0

    return v0
.end method

.method private startTouchUpFilter(I)V
    .registers 3
    .param p1, "offset"    # I

    .line 6069
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 6070
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 6071
    return-void
.end method

.method private tooLargeTextForMagnifier()Z
    .registers 7

    .line 6402
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmNewMagnifierEnabled(Landroid/widget/Editor;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    .line 6403
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 6404
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v3

    .line 6405
    .local v3, "line":I
    invoke-virtual {v0, v3, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v4

    .line 6406
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmMaxLineHeightForMagnifier(Landroid/widget/Editor;)I

    move-result v5

    if-lt v4, v5, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    .line 6405
    :goto_2f
    return v1

    .line 6408
    .end local v0    # "layout":Landroid/text/Layout;
    .end local v3    # "line":I
    :cond_30
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v0

    .line 6409
    invoke-virtual {v0}, Landroid/widget/Magnifier;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v3

    invoke-static {v3}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v3

    .line 6410
    invoke-virtual {v3}, Landroid/widget/Magnifier;->getZoom()F

    move-result v3

    div-float/2addr v0, v3

    .line 6408
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 6411
    .local v0, "magnifierContentHeight":F
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 6412
    .local v3, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v5

    .line 6413
    .local v4, "glyphHeight":F
    iget v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    mul-float/2addr v5, v4

    cmpl-float v5, v5, v0

    if-lez v5, :cond_6e

    goto :goto_6f

    :cond_6e
    move v1, v2

    :goto_6f
    return v1
.end method

.method private updateHandlesVisibility()V
    .registers 8

    .line 6592
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Magnifier;->getPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 6593
    .local v0, "magnifierTopLeft":Landroid/graphics/Point;
    if-nez v0, :cond_11

    .line 6594
    return-void

    .line 6596
    :cond_11
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v5

    .line 6597
    invoke-virtual {v5}, Landroid/widget/Magnifier;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v6

    invoke-static {v6}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v6

    .line 6598
    invoke-virtual {v6}, Landroid/widget/Magnifier;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6599
    .local v1, "magnifierRect":Landroid/graphics/Rect;
    invoke-direct {p0, p0, v1}, Landroid/widget/Editor$HandleView;->handleOverlapsMagnifier(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4d

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmDrawCursorOnMagnifier(Landroid/widget/Editor;)Z

    move-result v2

    if-nez v2, :cond_4d

    move v2, v3

    goto :goto_4e

    :cond_4d
    const/4 v2, 0x0

    :goto_4e
    invoke-direct {p0, v2}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    .line 6601
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getOtherSelectionHandle()Landroid/widget/Editor$HandleView;

    move-result-object v2

    .line 6602
    .local v2, "otherHandle":Landroid/widget/Editor$HandleView;
    if-eqz v2, :cond_5f

    .line 6603
    invoke-direct {p0, v2, v1}, Landroid/widget/Editor$HandleView;->handleOverlapsMagnifier(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z

    move-result v4

    xor-int/2addr v3, v4

    invoke-direct {v2, v3}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    .line 6605
    :cond_5f
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .registers 2

    .line 6153
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 6156
    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    .line 6157
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_f

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHideAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 6158
    :cond_f
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 6160
    :cond_1c
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 6161
    return-void
.end method

.method protected final dismissMagnifier()V
    .registers 3

    .line 6664
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 6665
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$mdismiss(Landroid/widget/Editor$MagnifierMotionAnimator;)V

    .line 6666
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor;->-$$Nest$fputmRenderCursorRegardlessTiming(Landroid/widget/Editor;Z)V

    .line 6667
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0, v1}, Landroid/widget/Editor;->-$$Nest$fputmDrawCursorOnMagnifier(Landroid/widget/Editor;Z)V

    .line 6668
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_30

    .line 6669
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 6670
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 6672
    :cond_30
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mresumeBlink(Landroid/widget/Editor;)V

    .line 6673
    invoke-direct {p0, v1}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    .line 6674
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getOtherSelectionHandle()Landroid/widget/Editor$HandleView;

    move-result-object v0

    .line 6675
    .local v0, "otherHandle":Landroid/widget/Editor$HandleView;
    if-eqz v0, :cond_41

    .line 6676
    invoke-direct {v0, v1}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    .line 6679
    .end local v0    # "otherHandle":Landroid/widget/Editor$HandleView;
    :cond_41
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .registers 5
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 6296
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getCursorOffset()I
    .registers 2

    .line 6398
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .registers 5
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 6218
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 6219
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v0

    .line 6220
    .local v0, "transformedOffset":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    return v1
.end method

.method protected abstract getHorizontalGravity(Z)I
.end method

.method protected getHorizontalOffset()I
    .registers 6

    .line 6375
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    .line 6376
    .local v0, "width":I
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 6377
    .local v1, "drawWidth":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    .line 6379
    .local v2, "popupWidth":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    packed-switch v3, :pswitch_data_30

    .line 6386
    :pswitch_15
    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    .line 6387
    .local v3, "left":I
    sub-int v4, v2, v0

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    .line 6388
    goto :goto_2c

    .line 6390
    .end local v3    # "left":I
    :pswitch_20
    sub-int v3, v0, v1

    .line 6391
    .restart local v3    # "left":I
    sub-int v4, v2, v0

    iput v4, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    goto :goto_2c

    .line 6381
    .end local v3    # "left":I
    :pswitch_27
    const/4 v3, 0x0

    .line 6382
    .restart local v3    # "left":I
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    .line 6383
    nop

    .line 6394
    :goto_2c
    iget v4, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    add-int/2addr v4, v3

    return v4

    :pswitch_data_30
    .packed-switch 0x3
        :pswitch_27
        :pswitch_15
        :pswitch_20
    .end packed-switch
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method final getIdealFingerToCursorOffset()I
    .registers 2

    .line 5987
    iget v0, p0, Landroid/widget/Editor$HandleView;->mIdealFingerToCursorOffset:I

    return v0
.end method

.method public getIdealVerticalOffset()F
    .registers 2

    .line 5983
    iget v0, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    return v0
.end method

.method public getLineForOffset(Landroid/text/Layout;I)I
    .registers 5
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 6230
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 6231
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v0

    .line 6232
    .local v0, "transformedOffset":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    return v1
.end method

.method protected abstract getMagnifierHandleTrigger()I
.end method

.method protected getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .registers 5
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "x"    # F

    .line 6236
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v0

    return v0
.end method

.method protected final getPreferredHeight()I
    .registers 3

    .line 6134
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final getPreferredWidth()I
    .registers 3

    .line 6130
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public hide()V
    .registers 2

    .line 6169
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 6171
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 6172
    return-void
.end method

.method protected hideAfterDelay()V
    .registers 1

    .line 6813
    return-void
.end method

.method public invalidate()V
    .registers 4

    .line 6118
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 6120
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mCursorView:Landroid/widget/Editor$HandleView$CursorView;

    if-eqz v0, :cond_a

    .line 6121
    invoke-virtual {v0}, Landroid/widget/Editor$HandleView$CursorView;->invalidate()V

    .line 6124
    :cond_a
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6125
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 6127
    :cond_21
    return-void
.end method

.method protected isAtRtlRun(Landroid/text/Layout;I)Z
    .registers 5
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 6211
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 6212
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v0

    .line 6213
    .local v0, "transformedOffset":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    return v1
.end method

.method public isDragging()Z
    .registers 2

    .line 6792
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method protected isScreenOut(IZ)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "atRtl"    # Z

    .line 6816
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .line 6175
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .registers 3

    .line 6097
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public onDetached()V
    .registers 1

    .line 6801
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismissMagnifier()V

    .line 6802
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 6364
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 6365
    .local v0, "drawWidth":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    sub-int/2addr v1, v2

    .line 6367
    .local v1, "left":I
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v2, :cond_29

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-nez v2, :cond_29

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    if-nez v2, :cond_29

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v2, :cond_29

    .line 6368
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int v3, v1, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6370
    :cond_29
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6371
    return-void
.end method

.method onHandleMoved()V
    .registers 1

    .line 6795
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 6104
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    .line 6105
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    add-int/2addr v1, v2

    .line 6107
    .local v1, "height":I
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v2, :cond_13

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-eqz v2, :cond_35

    .line 6108
    :cond_13
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 6109
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 6112
    :cond_35
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    .line 6114
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 6806
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 6807
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 6808
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 6691
    const-string v0, "Editor"

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1, p1}, Landroid/widget/Editor;->-$$Nest$mupdateFloatingToolbarVisibility(Landroid/widget/Editor;Landroid/view/MotionEvent;)V

    .line 6693
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0x1002

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_164

    goto/16 :goto_162

    .line 6780
    :pswitch_14
    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 6782
    iput-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    .line 6783
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->restore()V

    .line 6785
    invoke-virtual {p0, v3}, Landroid/widget/Editor$HandleView;->updateDrawable(Z)V

    goto/16 :goto_162

    .line 6732
    :pswitch_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 6733
    .local v1, "xInWindow":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v6, v5

    add-float/2addr v3, v6

    .line 6736
    .local v3, "yInWindow":F
    iget v6, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    int-to-float v7, v5

    sub-float/2addr v6, v7

    .line 6737
    .local v6, "previousVerticalOffset":F
    iget v7, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v7, v7

    sub-float v7, v3, v7

    int-to-float v5, v5

    sub-float/2addr v7, v5

    .line 6739
    .local v7, "currentVerticalOffset":F
    iget v5, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v8, v6, v5

    if-gez v8, :cond_52

    .line 6740
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 6741
    .local v5, "newVerticalOffset":F
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_5a

    .line 6743
    .end local v5    # "newVerticalOffset":F
    :cond_52
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 6744
    .restart local v5    # "newVerticalOffset":F
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 6746
    :goto_5a
    iget v8, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v9, v8

    add-float/2addr v9, v5

    iput v9, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 6749
    iget v9, p0, Landroid/widget/Editor$HandleView;->mFirstParentY:I

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/widget/Editor$HandleView;->mVerticalScrolledYOffset:I

    .line 6750
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->isScrollChanged(Landroid/view/MotionEvent;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/widget/Editor$HandleView;->mIsVerticalScrolled:Z

    .line 6753
    iget v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v8, v1, v8

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 6754
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 6755
    .local v8, "newPosX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget v10, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float/2addr v9, v10

    iget v10, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float/2addr v9, v10

    .line 6759
    .local v9, "newPosY":F
    nop

    .line 6760
    :try_start_84
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    .line 6759
    invoke-virtual {p0, v8, v9, v2}, Landroid/widget/Editor$HandleView;->updatePosition(FFZ)V
    :try_end_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_84 .. :try_end_8b} :catch_a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_84 .. :try_end_8b} :catch_8c

    goto :goto_bc

    .line 6763
    :catch_8c
    move-exception v2

    .line 6764
    .local v2, "obe":Ljava/lang/IndexOutOfBoundsException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handle view action move IndexOutOfBoundsException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6767
    .end local v2    # "obe":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_162

    .line 6761
    :catch_a5
    move-exception v2

    .line 6762
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handle view action move IllegalArgumentException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6765
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_bc
    goto/16 :goto_162

    .line 6771
    .end local v1    # "xInWindow":F
    .end local v3    # "yInWindow":F
    .end local v5    # "newVerticalOffset":F
    .end local v6    # "previousVerticalOffset":F
    .end local v7    # "currentVerticalOffset":F
    .end local v8    # "newPosX":F
    .end local v9    # "newPosY":F
    :pswitch_be
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp(Z)V

    .line 6773
    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 6774
    iput-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    .line 6775
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->restore()V

    .line 6776
    goto/16 :goto_162

    .line 6695
    :pswitch_ce
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 6697
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    .line 6698
    .local v0, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 6699
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 6700
    iput v1, p0, Landroid/widget/Editor$HandleView;->mFirstParentY:I

    .line 6701
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionXOnScreen()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    .line 6702
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionYOnScreen()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    .line 6704
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 6705
    .restart local v1    # "xInWindow":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    .line 6706
    .local v2, "yInWindow":F
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v5, v5

    sub-float v5, v1, v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 6707
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 6709
    iput-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 6710
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 6713
    instance-of v5, p0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v5, :cond_14a

    .line 6714
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mCursorRestoreAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_133

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_133

    .line 6715
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mCursorRestoreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->end()V

    .line 6717
    :cond_133
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iput-boolean v4, v5, Landroid/widget/Editor;->mCursorMoving:Z

    .line 6718
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mCursorView:Landroid/widget/Editor$HandleView$CursorView;

    invoke-virtual {v5, v3}, Landroid/widget/Editor$HandleView$CursorView;->setVisibility(I)V

    .line 6719
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$msuspendBlink(Landroid/widget/Editor;)V

    .line 6720
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->invalidate()V

    .line 6724
    :cond_14a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iput v3, p0, Landroid/widget/Editor$HandleView;->mVerticalOffset:F

    .line 6725
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iput v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalOffset:F

    .line 6726
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->magnifySize()V

    .line 6728
    nop

    .line 6788
    .end local v0    # "positionListener":Landroid/widget/Editor$PositionListener;
    .end local v1    # "xInWindow":F
    .end local v2    # "yInWindow":F
    :goto_162
    return v4

    nop

    :pswitch_data_164
    .packed-switch 0x0
        :pswitch_ce
        :pswitch_be
        :pswitch_20
        :pswitch_14
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZZ)V
    .registers 11
    .param p1, "offset"    # I
    .param p2, "forceUpdatePosition"    # Z
    .param p3, "fromTouchScreen"    # Z

    .line 6249
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 6250
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_12

    .line 6252
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 6253
    return-void

    .line 6256
    :cond_12
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$mgetActiveLayout(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v0

    .line 6259
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_20

    move v1, v2

    goto :goto_21

    :cond_20
    move v1, v3

    .line 6260
    .local v1, "offsetChanged":Z
    :goto_21
    if-nez v1, :cond_25

    if-eqz p2, :cond_8f

    .line 6261
    :cond_25
    if-eqz v1, :cond_46

    .line 6262
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    .line 6263
    if-eqz p3, :cond_43

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmHapticTextHandleEnabled(Landroid/widget/Editor;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 6266
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x29

    invoke-static {v5}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 6269
    :cond_43
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 6271
    :cond_46
    invoke-virtual {p0, v0, p1}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v4

    .line 6272
    .local v4, "line":I
    iput v4, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 6274
    iget-boolean v5, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v5, :cond_8b

    iget-boolean v5, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-nez v5, :cond_8b

    .line 6275
    invoke-virtual {p0, v0, p1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v5

    iget v6, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v5, v6

    .line 6276
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 6277
    invoke-virtual {v0, v4, v3}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 6280
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 6281
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 6283
    :cond_8b
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 6284
    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 6286
    .end local v4    # "line":I
    :cond_8f
    return-void
.end method

.method protected removeHiderCallback()V
    .registers 1

    .line 6811
    return-void
.end method

.method setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .line 5991
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 5992
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 5993
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->updateDrawable(Z)V

    .line 5994
    return-void
.end method

.method public show()V
    .registers 3

    .line 6143
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v0, :cond_b

    return-void

    .line 6145
    :cond_b
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 6148
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 6149
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 6150
    return-void
.end method

.method protected updateDrawable(Z)V
    .registers 10
    .param p1, "updateDrawableWhenDragging"    # Z

    .line 5997
    if-nez p1, :cond_7

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_7

    .line 5998
    return-void

    .line 6000
    :cond_7
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 6001
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_14

    .line 6002
    return-void

    .line 6004
    :cond_14
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 6005
    .local v1, "offset":I
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v2

    .line 6006
    .local v2, "isRtlCharAtOffset":Z
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6007
    .local v3, "oldDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_23

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    goto :goto_25

    :cond_23
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    :goto_25
    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6008
    invoke-virtual {p0, v4, v2}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 6009
    invoke-virtual {p0, v2}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    .line 6011
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 6013
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_4f

    .line 6014
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 6017
    :cond_4f
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    .line 6018
    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v5

    add-int/2addr v4, v5

    .line 6019
    .local v4, "positionX":I
    invoke-virtual {p0, v4, v2}, Landroid/widget/Editor$HandleView;->isScreenOut(IZ)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 6020
    xor-int/lit8 v5, v2, 0x1

    move v2, v5

    .line 6021
    if-eqz v2, :cond_7c

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    goto :goto_7e

    :cond_7c
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    :goto_7e
    iput-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6022
    invoke-virtual {p0, v5, v2}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 6023
    invoke-virtual {p0, v2}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    .line 6024
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iget v6, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 6026
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_a8

    .line 6027
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iget v6, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 6033
    :cond_a8
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v3, v5, :cond_f0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_f0

    .line 6035
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v5

    iget v6, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v5, v6

    .line 6036
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 6037
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 6038
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 6040
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mIsSwitching:Z

    .line 6041
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6044
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_e3

    .line 6045
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6048
    :cond_e3
    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    iget v6, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7, v7}, Landroid/widget/Editor$HandleView;->updatePosition(IIZZ)V

    .line 6049
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->postInvalidate()V

    .line 6051
    iput-boolean v7, p0, Landroid/widget/Editor$HandleView;->mIsSwitching:Z

    .line 6054
    :cond_f0
    return-void
.end method

.method protected final updateMagnifier(Landroid/view/MotionEvent;)V
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6608
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    if-nez v0, :cond_9

    .line 6609
    return-void

    .line 6612
    :cond_9
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 6613
    .local v0, "showPosInView":Landroid/graphics/PointF;
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->checkForTransforms()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_30

    .line 6614
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->tooLargeTextForMagnifier()Z

    move-result v1

    if-nez v1, :cond_30

    .line 6615
    invoke-direct {p0, p1, v0}, Landroid/widget/Editor$HandleView;->obtainMagnifierShowCoordinates(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 6616
    invoke-virtual {v1}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result v1

    if-eqz v1, :cond_30

    move v1, v3

    goto :goto_31

    :cond_30
    move v1, v2

    .line 6617
    .local v1, "shouldShow":Z
    :goto_31
    if-eqz v1, :cond_135

    .line 6619
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4, v3}, Landroid/widget/Editor;->-$$Nest$fputmRenderCursorRegardlessTiming(Landroid/widget/Editor;Z)V

    .line 6620
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->invalidateCursorPath()V

    .line 6621
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$msuspendBlink(Landroid/widget/Editor;)V

    .line 6623
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmNewMagnifierEnabled(Landroid/widget/Editor;)Z

    move-result v4

    if-eqz v4, :cond_124

    .line 6625
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 6626
    .local v4, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v5

    .line 6627
    .local v5, "line":I
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    float-to-int v6, v6

    .line 6628
    .local v6, "lineLeft":I
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollX()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 6629
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v7

    float-to-int v7, v7

    .line 6630
    .local v7, "lineRight":I
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v8

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getScrollX()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 6631
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v9, v0, Landroid/graphics/PointF;->x:F

    add-int/lit8 v10, v6, -0x14

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_ad

    iget v9, v0, Landroid/graphics/PointF;->x:F

    add-int/lit8 v10, v7, 0x14

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_ab

    goto :goto_ad

    :cond_ab
    move v9, v2

    goto :goto_ae

    :cond_ad
    :goto_ad
    move v9, v3

    :goto_ae
    invoke-static {v8, v9}, Landroid/widget/Editor;->-$$Nest$fputmDrawCursorOnMagnifier(Landroid/widget/Editor;Z)V

    .line 6634
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v8

    invoke-static {v8}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmDrawCursorOnMagnifier(Landroid/widget/Editor;)Z

    move-result v9

    iget-object v10, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v10, v10, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9, v10}, Landroid/widget/Magnifier;->setDrawCursor(ZLandroid/graphics/drawable/Drawable;)V

    .line 6636
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v8, v8, Landroid/widget/Editor;->mCursorVisible:Z

    .line 6639
    .local v8, "cursorVisible":Z
    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmDrawCursorOnMagnifier(Landroid/widget/Editor;)Z

    move-result v10

    xor-int/2addr v3, v10

    iput-boolean v3, v9, Landroid/widget/Editor;->mCursorVisible:Z

    .line 6640
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v3, v3, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v3, :cond_e2

    if-nez v8, :cond_e2

    .line 6643
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->updateCursorPosition()V

    .line 6645
    :cond_e2
    nop

    .line 6646
    invoke-virtual {v4, v5, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v2

    .line 6647
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 6648
    .local v2, "lineHeight":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmInitialZoom(Landroid/widget/Editor;)F

    move-result v3

    .line 6649
    .local v3, "zoom":F
    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmMinLineHeightForMagnifier(Landroid/widget/Editor;)I

    move-result v9

    if-ge v2, v9, :cond_105

    .line 6650
    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmMinLineHeightForMagnifier(Landroid/widget/Editor;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v3

    int-to-float v10, v2

    div-float v3, v9, v10

    .line 6652
    :cond_105
    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v9

    invoke-static {v9}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Landroid/widget/Magnifier;->updateSourceFactors(IF)V

    .line 6653
    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v9

    invoke-static {v9}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v9

    iget v10, v0, Landroid/graphics/PointF;->x:F

    iget v11, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v10, v11}, Landroid/widget/Magnifier;->show(FF)V

    .line 6654
    .end local v2    # "lineHeight":I
    .end local v3    # "zoom":F
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v5    # "line":I
    .end local v6    # "lineLeft":I
    .end local v7    # "lineRight":I
    .end local v8    # "cursorVisible":Z
    goto :goto_131

    .line 6655
    :cond_124
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v3, v4}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$mshow(Landroid/widget/Editor$MagnifierMotionAnimator;FF)V

    .line 6657
    :goto_131
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->updateHandlesVisibility()V

    goto :goto_138

    .line 6659
    :cond_135
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismissMagnifier()V

    .line 6661
    :goto_138
    return-void
.end method

.method protected abstract updatePosition(FFZ)V
.end method

.method public updatePosition(IIZZ)V
    .registers 12
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .line 6302
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p4, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 6303
    if-nez p3, :cond_e

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v0, :cond_f5

    .line 6304
    :cond_e
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_33

    .line 6306
    iget v0, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v0, :cond_1a

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v2, :cond_30

    .line 6307
    :cond_1a
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-int v0, p1, v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 6308
    iget v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 6309
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 6310
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 6313
    :cond_30
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 6316
    :cond_33
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v0, :cond_f3

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-nez v0, :cond_f3

    .line 6317
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 6319
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    .line 6320
    .local v0, "pts":[I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    .line 6321
    aget v2, v0, v1

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 6323
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8a

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v2, :cond_8a

    .line 6324
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v4, v0, v1

    aget v5, v0, v3

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v5, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 6326
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_e9

    .line 6327
    aget v4, v0, v1

    aget v3, v0, v3

    iget v5, p0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    sub-int/2addr v3, v5

    invoke-virtual {v2, v4, v3, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_e9

    .line 6331
    :cond_8a
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isValid()Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 6332
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    aget v5, v0, v1

    aget v6, v0, v3

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 6335
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_b3

    .line 6336
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    aget v5, v0, v1

    aget v3, v0, v3

    iget v6, p0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    sub-int/2addr v3, v6

    invoke-virtual {v2, v4, v1, v5, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 6339
    :cond_b3
    instance-of v2, p0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v2, :cond_ce

    .line 6340
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$mgetActiveLayout(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mUpperLimit:I

    .line 6344
    :cond_ce
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_d8

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getShowAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    .line 6345
    :cond_d8
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_e9

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsSwitching:Z

    if-nez v2, :cond_e9

    .line 6346
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 6351
    .end local v0    # "pts":[I
    :cond_e9
    :goto_e9
    goto :goto_f3

    .line 6352
    :cond_ea
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 6353
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 6358
    :cond_f3
    :goto_f3
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 6360
    :cond_f5
    return-void
.end method

.method protected updatePositionDuringDragging(II)V
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 6827
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 6828
    .local v0, "textViewCoords":[I
    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->getLocationInWindow([I)V

    .line 6829
    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 6830
    const/4 v2, 0x1

    aget v3, v0, v2

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 6832
    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v4

    sub-int/2addr v3, v4

    aget v4, v0, v1

    .line 6833
    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 6832
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 6836
    instance-of v3, p0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v3, :cond_4d

    .line 6837
    iget v3, p0, Landroid/widget/Editor$HandleView;->mUpperLimit:I

    aget v4, v0, v2

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    goto :goto_59

    .line 6840
    :cond_4d
    aget v3, v0, v2

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 6844
    :goto_59
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v3, v4

    .line 6845
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    .line 6847
    .local v3, "pts":[I
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    .line 6848
    aget v4, v3, v1

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    aput v4, v3, v1

    .line 6850
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 6851
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v5, v3, v1

    aget v6, v3, v2

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 6853
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_9c

    .line 6854
    aget v1, v3, v1

    aget v2, v3, v2

    iget v5, p0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    sub-int/2addr v2, v5

    invoke-virtual {v4, v1, v2, v7, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 6858
    :cond_9c
    return-void
.end method

.method protected abstract updateSelection(I)V
.end method
