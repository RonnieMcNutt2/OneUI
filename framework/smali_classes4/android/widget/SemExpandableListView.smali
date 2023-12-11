.class public Landroid/widget/SemExpandableListView;
.super Landroid/widget/ListView;
.source "SemExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemExpandableListView$ViewInfo;,
        Landroid/widget/SemExpandableListView$ExpandingRect;,
        Landroid/widget/SemExpandableListView$CollapsingRect;,
        Landroid/widget/SemExpandableListView$OnGroupClickListener;,
        Landroid/widget/SemExpandableListView$OnChildClickListener;,
        Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;,
        Landroid/widget/SemExpandableListView$IndicatorImageView;,
        Landroid/widget/SemExpandableListView$OnGroupExpandListener;,
        Landroid/widget/SemExpandableListView$OnGroupCollapseListener;,
        Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;,
        Landroid/widget/SemExpandableListView$SavedState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ANIMATION_STATE_COLLAPSING:I = 0x3

.field private static final ANIMATION_STATE_COLLAPSING_ALL:I = 0x5

.field private static final ANIMATION_STATE_EXPANDING:I = 0x2

.field private static final ANIMATION_STATE_EXPANDING_ALL:I = 0x4

.field private static final ANIMATION_STATE_IDLE:I = 0x1

.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I

.field private static final COLLAPSE_ALL_PENDING:I = 0x2

.field private static final DEBUGGABLE_LOW:Z

.field private static final DECORATED_VIEW_TAG:I = 0x7a0a1eff

.field private static final EMPTY_STATE_SET:[I

.field private static final EXPAND_ALL_PENDING:I = 0x1

.field private static final EXPAND_COLLAPSE_ALL_IDLE:I = 0x0

.field private static final EXPAND_COLLAPSE_BASE_DURATION:I = 0x2bc

.field private static EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator; = null

.field private static final EXPAND_COLLAPSE_MIN_DURATION:I = 0x190

.field private static final GROUP_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_STATE_SET:[I

.field private static final GROUP_STATE_SETS:[[I

.field public static final INDICATOR_ANIMATION_TYPE_MORPH:I = 0x2

.field public static final INDICATOR_ANIMATION_TYPE_ROTATE:I = 0x1

.field private static final INDICATOR_UNDEFINED:I = -0x2

.field private static final PACKED_POSITION_FOOTER_VIEW_BASE:J = -0x100000000L

.field private static final PACKED_POSITION_GROUP_FOOTER_TYPE:I = -0x3

.field private static final PACKED_POSITION_GROUP_HEADER_TYPE:I = -0x2

.field private static final PACKED_POSITION_HEADER_VIEW_BASE:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL

.field private static final PAINT_ALPHA:I = 0x7f

.field private static final PAINT_STROKE_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static mExpandInterpolator:Landroid/view/animation/ElasticCustom;


# instance fields
.field private final DEBUGGABLE:Z

.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mAnimationEnabled:Z

.field private mAnimationState:I

.field private mBitmapUpdateBounds:Landroid/graphics/Rect;

.field mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mBlockTouchEvent:Z

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorEnd:I

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mChildIndicatorStart:I

.field private mCollapsedGroupTopEnd:I

.field private mCollapsedGroupTopStart:I

.field private mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

.field private mConnector:Landroid/widget/SemExpandableListConnector;

.field private mDescriptionCollapse:Ljava/lang/String;

.field private mDescriptionExpand:Ljava/lang/String;

.field private mExpListDividerHeight:[I

.field private mExpandCollapseAllState:I

.field private mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

.field private mGhostExpandCollapseChildViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemExpandableListView$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGhostViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemExpandableListView$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGhostViewsVisibleArea:Landroid/graphics/RectF;

.field private mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mGroupIndicatorColor:I

.field private mGroupIndicatorHeight:I

.field private mGroupIndicatorPaint:Landroid/graphics/Paint;

.field private mGroupIndicatorWidth:I

.field private mIndicatorAnimationType:I

.field private mIndicatorEnd:I

.field private mIndicatorGravity:I

.field private mIndicatorLeft:I

.field public mIndicatorPaddingHeight:F

.field private mIndicatorPaddingLeft:I

.field private mIndicatorPaddingRight:I

.field private mIndicatorRight:I

.field private mIndicatorStart:I

.field private mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

.field private mOnChildClickListener:Landroid/widget/SemExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Landroid/widget/SemExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

.field private mRotationAngle:I

.field private mTranslationOffset:I

.field private mViewSnapshots:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/widget/SemExpandableListView$ViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Landroid/widget/SemExpandableListView;)Landroid/widget/ExpandableListAdapter;
    .registers 1

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAnimationState(Landroid/widget/SemExpandableListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBitmapUpdateBounds(Landroid/widget/SemExpandableListView;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mBitmapUpdateBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChildIndicator(Landroid/widget/SemExpandableListView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChildIndicatorLeft(Landroid/widget/SemExpandableListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmChildIndicatorRight(Landroid/widget/SemExpandableListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCollapsedGroupTopEnd(Landroid/widget/SemExpandableListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopEnd:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCollapsedGroupTopStart(Landroid/widget/SemExpandableListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopStart:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCollapsingRects(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$CollapsingRect;
    .registers 1

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnector(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;
    .registers 1

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDescriptionCollapse(Landroid/widget/SemExpandableListView;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mDescriptionCollapse:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDescriptionExpand(Landroid/widget/SemExpandableListView;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mDescriptionExpand:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExpListDividerHeight(Landroid/widget/SemExpandableListView;)[I
    .registers 1

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExpandingRects(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$ExpandingRect;
    .registers 1

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGhostExpandCollapseChildViews(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGhostViews(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGhostViewsVisibleArea(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGhostViewsVisibleAreas(Landroid/widget/SemExpandableListView;)[Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupIndicator(Landroid/widget/SemExpandableListView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupIndicatorHeight(Landroid/widget/SemExpandableListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupIndicatorPaint(Landroid/widget/SemExpandableListView;)Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupIndicatorWidth(Landroid/widget/SemExpandableListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIndicatorAnimationType(Landroid/widget/SemExpandableListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SemExpandableListView;->mIndicatorAnimationType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIndicatorGravity(Landroid/widget/SemExpandableListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SemExpandableListView;->mIndicatorGravity:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIndicatorLeft(Landroid/widget/SemExpandableListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIndicatorPaddingLeft(Landroid/widget/SemExpandableListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingLeft:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIndicatorPaddingRight(Landroid/widget/SemExpandableListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingRight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIndicatorRight(Landroid/widget/SemExpandableListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnGroupCollapseListener(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListView$OnGroupCollapseListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnGroupExpandListener(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListView$OnGroupExpandListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTranslationOffset(Landroid/widget/SemExpandableListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;
    .registers 1

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAnimationState(Landroid/widget/SemExpandableListView;I)V
    .registers 2

    iput p1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCollapsedGroupTopEnd(Landroid/widget/SemExpandableListView;I)V
    .registers 2

    iput p1, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopEnd:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmExpandingRects(Landroid/widget/SemExpandableListView;[Landroid/widget/SemExpandableListView$ExpandingRect;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGhostViewsVisibleAreas(Landroid/widget/SemExpandableListView;[Landroid/graphics/RectF;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTranslationOffset(Landroid/widget/SemExpandableListView;I)V
    .registers 2

    iput p1, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateViewSnapshotAnimation(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/SemExpandableListView;->createViewSnapshotAnimation(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateViewSnapshotAnimationReverse(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/SemExpandableListView;->createViewSnapshotAnimationReverse(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAbsoluteFlatPosition(Landroid/widget/SemExpandableListView;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetDivider(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getDivider(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetFlatPositionForConnector(Landroid/widget/SemExpandableListView;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetIndicator(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getIndicator(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLastNonFooterPosition(Landroid/widget/SemExpandableListView;)I
    .registers 1

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->getLastNonFooterPosition()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSelectorRectAnim(Landroid/widget/SemExpandableListView;I)Landroid/animation/Animator;
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getSelectorRectAnim(I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misHeaderOrFooterPosition(Landroid/widget/SemExpandableListView;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresetCollapseAnimationState(Landroid/widget/SemExpandableListView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resetCollapseAnimationState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetExpandAnimationState(Landroid/widget/SemExpandableListView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resetExpandAnimationState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartIndicatorAnimation(Landroid/widget/SemExpandableListView;Landroid/view/View;ZI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemExpandableListView;->startIndicatorAnimation(Landroid/view/View;ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUGGABLE_LOW()Z
    .registers 1

    sget-boolean v0, Landroid/widget/SemExpandableListView;->DEBUGGABLE_LOW:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetEXPAND_COLLAPSE_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/widget/SemExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetGROUP_EXPANDED_STATE_SET()[I
    .registers 1

    sget-object v0, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 134
    const-class v0, Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    .line 138
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    sput-boolean v0, Landroid/widget/SemExpandableListView;->DEBUGGABLE_LOW:Z

    .line 261
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/widget/SemExpandableListView;->EMPTY_STATE_SET:[I

    .line 264
    const v1, 0x10100a8

    filled-new-array {v1}, [I

    move-result-object v2

    sput-object v2, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 268
    const v3, 0x10100a9

    filled-new-array {v3}, [I

    move-result-object v4

    sput-object v4, Landroid/widget/SemExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 272
    filled-new-array {v1, v3}, [I

    move-result-object v1

    sput-object v1, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 276
    filled-new-array {v0, v2, v4, v1}, [[I

    move-result-object v0

    sput-object v0, Landroid/widget/SemExpandableListView;->GROUP_STATE_SETS:[[I

    .line 284
    const v0, 0x10100a6

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/SemExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 320
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/widget/SemExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 322
    new-instance v0, Landroid/view/animation/ElasticCustom;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v4, v1}, Landroid/view/animation/ElasticCustom;-><init>(FF)V

    sput-object v0, Landroid/widget/SemExpandableListView;->mExpandInterpolator:Landroid/view/animation/ElasticCustom;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 372
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 373
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 388
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SemExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 389
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 406
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SemExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 407
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 429
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->DEBUGGABLE:Z

    .line 290
    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 292
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    .line 299
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    .line 300
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    .line 302
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mBitmapUpdateBounds:Landroid/graphics/Rect;

    .line 303
    iput v0, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    .line 304
    iput v0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopStart:I

    .line 305
    iput v0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopEnd:I

    .line 306
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    .line 311
    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingLeft:I

    .line 312
    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingRight:I

    .line 313
    const/4 v2, 0x3

    iput v2, p0, Landroid/widget/SemExpandableListView;->mIndicatorGravity:I

    .line 315
    const/16 v3, 0xb4

    iput v3, p0, Landroid/widget/SemExpandableListView;->mRotationAngle:I

    .line 329
    iput v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    .line 334
    iput v0, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    .line 350
    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorAnimationType:I

    .line 354
    const/high16 v3, -0x1000000

    iput v3, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorColor:I

    .line 619
    new-instance v3, Landroid/widget/SemExpandableListView$1;

    invoke-direct {v3, p0}, Landroid/widget/SemExpandableListView$1;-><init>(Landroid/widget/SemExpandableListView;)V

    iput-object v3, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    .line 1925
    new-instance v3, Landroid/widget/SemExpandableListView$9;

    invoke-direct {v3, p0}, Landroid/widget/SemExpandableListView$9;-><init>(Landroid/widget/SemExpandableListView;)V

    iput-object v3, p0, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 431
    sget-object v3, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 434
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 436
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 438
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    .line 440
    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 442
    if-nez v0, :cond_85

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_85

    .line 443
    iget v2, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 445
    :cond_85
    const/4 v0, 0x4

    const/4 v2, -0x1

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    .line 448
    const/4 v0, 0x5

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    .line 451
    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 454
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->isRtlCompatibilityMode()Z

    move-result v0

    if-nez v0, :cond_c1

    .line 455
    const/4 v0, 0x7

    const/4 v4, -0x2

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    .line 458
    const/16 v0, 0x8

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    .line 462
    const/16 v0, 0x9

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    .line 465
    const/16 v0, 0xa

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    .line 470
    :cond_c1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 471
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    if-nez v0, :cond_cc

    .line 472
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    .line 475
    :cond_cc
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    .line 476
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10404a1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 475
    const v4, 0x10404a2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mDescriptionExpand:Ljava/lang/String;

    .line 477
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    .line 478
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10404a0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 477
    invoke-virtual {v0, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mDescriptionCollapse:Ljava/lang/String;

    .line 480
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x105015d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorWidth:I

    .line 481
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x105015b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorHeight:I

    .line 482
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x105015c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingHeight:F

    .line 484
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    .line 485
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 486
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 487
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 488
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 489
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 490
    .local v0, "strokeSize":I
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 491
    return-void
.end method

.method static synthetic access$000(Landroid/widget/SemExpandableListView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SemExpandableListView;

    .line 132
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/SemExpandableListView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SemExpandableListView;

    .line 132
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/SemExpandableListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/SemExpandableListView;

    .line 132
    iget v0, p0, Landroid/widget/SemExpandableListView;->mBottom:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/SemExpandableListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/SemExpandableListView;

    .line 132
    iget v0, p0, Landroid/widget/SemExpandableListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/SemExpandableListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/SemExpandableListView;

    .line 132
    iget v0, p0, Landroid/widget/SemExpandableListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/SemExpandableListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/SemExpandableListView;

    .line 132
    iget v0, p0, Landroid/widget/SemExpandableListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/SemExpandableListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/SemExpandableListView;

    .line 132
    iget v0, p0, Landroid/widget/SemExpandableListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/SemExpandableListView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SemExpandableListView;

    .line 132
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/SemExpandableListView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SemExpandableListView;

    .line 132
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private captureViewsPriorAnimation()V
    .registers 9

    .line 1970
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v0

    .line 1971
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1974
    .local v1, "firstVisiblePos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_33

    .line 1975
    invoke-virtual {p0, v2}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1976
    .local v3, "child":Landroid/view/View;
    add-int v4, v2, v1

    invoke-virtual {p0, v4}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v4

    .line 1977
    .local v4, "packedPos":J
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    if-eqz v6, :cond_30

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    if-nez v6, :cond_22

    goto :goto_30

    .line 1979
    :cond_22
    new-instance v6, Landroid/widget/SemExpandableListView$ViewInfo;

    invoke-direct {v6, v3}, Landroid/widget/SemExpandableListView$ViewInfo;-><init>(Landroid/view/View;)V

    .line 1980
    .local v6, "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v7, v6, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_30

    .line 1981
    iget-object v7, p0, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1974
    .end local v4    # "packedPos":J
    .end local v6    # "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1984
    .end local v2    # "i":I
    .end local v3    # "child":Landroid/view/View;
    :cond_33
    return-void
.end method

.method private collapseAllGroups()V
    .registers 4

    .line 3186
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 3187
    .local v0, "groupCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 3188
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/SemExpandableListConnector;->collapseGroup(I)Z

    .line 3187
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3190
    .end local v1    # "i":I
    :cond_11
    return-void
.end method

.method private createViewSnapshotAnimation(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .registers 9
    .param p1, "translationOffset"    # I
    .param p2, "viewInfo"    # Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1917
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Landroid/widget/SemExpandableListView$ViewInfo;->left:I

    iget v2, p2, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    iget v3, p2, Landroid/widget/SemExpandableListView$ViewInfo;->right:I

    iget v4, p2, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1918
    .local v0, "oldViewBounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1919
    .local v1, "newViewBounds":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 1920
    iget-object v2, p2, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "bounds"

    invoke-static {v2, v5, v3, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1922
    .local v2, "animBounds":Landroid/animation/ObjectAnimator;
    return-object v2
.end method

.method private createViewSnapshotAnimationReverse(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .registers 9
    .param p1, "translationOffset"    # I
    .param p2, "viewInfo"    # Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1908
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Landroid/widget/SemExpandableListView$ViewInfo;->left:I

    iget v2, p2, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    iget v3, p2, Landroid/widget/SemExpandableListView$ViewInfo;->right:I

    iget v4, p2, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1909
    .local v0, "newViewBounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1910
    .local v1, "oldViewBounds":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 1911
    iget-object v2, p2, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "bounds"

    invoke-static {v2, v5, v3, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1913
    .local v2, "animBounds":Landroid/animation/ObjectAnimator;
    return-object v2
.end method

.method private drawGhostViews(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 823
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_10

    return-void

    .line 824
    :cond_10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 826
    .local v0, "saveCount":I
    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1e

    .line 827
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 830
    :cond_1e
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 831
    .local v2, "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v3, v2, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 832
    .end local v2    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    goto :goto_24

    .line 834
    :cond_36
    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_58

    .line 835
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 836
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 837
    .restart local v2    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v3, v2, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 838
    .end local v2    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    goto :goto_46

    .line 841
    :cond_58
    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_92

    .line 844
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    array-length v1, v1

    .line 845
    .local v1, "len":I
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 846
    .local v2, "expandUnionRect":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_66
    if-ge v3, v1, :cond_77

    .line 847
    iget-object v4, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    aget-object v4, v4, v3

    if-nez v4, :cond_6f

    goto :goto_74

    .line 849
    :cond_6f
    iget-object v4, v4, Landroid/widget/SemExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 846
    :goto_74
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .line 851
    .end local v3    # "i":I
    :cond_77
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 853
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_80
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 854
    .local v4, "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v5, v4, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 855
    .end local v4    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    goto :goto_80

    .line 857
    .end local v1    # "len":I
    .end local v2    # "expandUnionRect":Landroid/graphics/RectF;
    :cond_92
    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_cc

    .line 860
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    array-length v1, v1

    .line 861
    .restart local v1    # "len":I
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 862
    .local v2, "collapseUnionRect":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_a0
    if-ge v3, v1, :cond_b1

    .line 863
    iget-object v4, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    aget-object v4, v4, v3

    if-nez v4, :cond_a9

    goto :goto_ae

    .line 865
    :cond_a9
    iget-object v4, v4, Landroid/widget/SemExpandableListView$CollapsingRect;->destinationRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 862
    :goto_ae
    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    .line 867
    .end local v3    # "i":I
    :cond_b1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 869
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ba
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 870
    .restart local v4    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v5, v4, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 871
    .end local v4    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    goto :goto_ba

    .line 873
    .end local v1    # "len":I
    .end local v2    # "collapseUnionRect":Landroid/graphics/RectF;
    :cond_cc
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 874
    return-void
.end method

.method private expandAllGroups()V
    .registers 4

    .line 3179
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 3180
    .local v0, "groupCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 3181
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/SemExpandableListConnector;->expandGroup(I)Z

    .line 3180
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3183
    .end local v1    # "i":I
    :cond_11
    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .registers 3
    .param p1, "flatListPosition"    # I

    .line 1062
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Landroid/widget/SemExpandableListPosition;)J
    .registers 5
    .param p1, "position"    # Landroid/widget/SemExpandableListPosition;

    .line 2502
    iget v0, p1, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 2503
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v2, p1, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0

    .line 2505
    :cond_10
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDivider(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "pos"    # Landroid/widget/SemExpandableListConnector$PositionMetadata;

    .line 955
    iget-object v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 956
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 958
    :cond_a
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getExpandedState()[Z
    .registers 8

    .line 3158
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->getLastNonFooterPosition()I

    move-result v0

    .line 3159
    .local v0, "lastValidPos":I
    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    .line 3160
    .local v1, "lastPosPackedPos":J
    invoke-static {v1, v2}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    .line 3161
    .local v3, "lastGroupId":I
    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Z

    .line 3162
    .local v4, "expandedState":[Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    if-gt v5, v3, :cond_1e

    .line 3163
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v6, v5}, Landroid/widget/SemExpandableListConnector;->isGroupExpanded(I)Z

    move-result v6

    aput-boolean v6, v4, v5

    .line 3162
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 3165
    .end local v5    # "i":I
    :cond_1e
    return-object v4
.end method

.method private getFlatPositionForConnector(I)I
    .registers 3
    .param p1, "flatListPosition"    # I

    .line 1051
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getHeaderFooterPackedPosition(I)J
    .registers 8
    .param p1, "flatListPosition"    # I

    .line 2464
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p1, v0, :cond_f

    .line 2465
    move v0, p1

    .line 2466
    .local v0, "headerViewPosition":I
    const-wide v1, 0x7fffffff00000000L

    int-to-long v3, v0

    or-long/2addr v1, v3

    return-wide v1

    .line 2468
    .end local v0    # "headerViewPosition":I
    :cond_f
    iget v0, p0, Landroid/widget/SemExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2469
    .local v0, "footerViewsStart":I
    sub-int v1, p1, v0

    .line 2470
    .local v1, "footerViewPosition":I
    const-wide v2, -0x100000000L

    int-to-long v4, v1

    or-long/2addr v2, v4

    return-wide v2
.end method

.method private getIndicator(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "pos"    # Landroid/widget/SemExpandableListConnector$PositionMetadata;

    .line 886
    iget-object v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    .line 887
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 889
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 893
    iget-object v2, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    iget-object v2, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v4, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v2, v4, :cond_21

    goto :goto_23

    :cond_21
    move v2, v3

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v2, 0x1

    .line 897
    .local v2, "isEmpty":Z
    :goto_24
    invoke-virtual {p1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    .line 898
    if-eqz v2, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v3

    :goto_2c
    or-int/2addr v1, v4

    .line 899
    .local v1, "stateSetIndex":I
    sget-object v3, Landroid/widget/SemExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 900
    .end local v1    # "stateSetIndex":I
    .end local v2    # "isEmpty":Z
    goto :goto_52

    .line 902
    .end local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_35
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 904
    .restart local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 906
    iget-object v1, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    iget-object v2, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v1, v2, :cond_4c

    .line 907
    sget-object v1, Landroid/widget/SemExpandableListView;->CHILD_LAST_STATE_SET:[I

    goto :goto_4e

    .line 908
    :cond_4c
    sget-object v1, Landroid/widget/SemExpandableListView;->EMPTY_STATE_SET:[I

    :goto_4e
    nop

    .line 909
    .local v1, "stateSet":[I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 912
    .end local v1    # "stateSet":[I
    :cond_52
    :goto_52
    return-object v0
.end method

.method private getLastNonFooterPosition()I
    .registers 5

    .line 3169
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getLastVisiblePosition()I

    move-result v0

    .line 3170
    .local v0, "lastPos":I
    move v1, v0

    .line 3171
    .local v1, "lastValidPos":I
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v2

    .line 3172
    .local v2, "firstPos":I
    :goto_9
    if-lt v1, v2, :cond_14

    invoke-direct {p0, v1}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3173
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 3175
    :cond_14
    return v1
.end method

.method public static getPackedPositionChild(J)I
    .registers 10
    .param p0, "packedPosition"    # J

    .line 2411
    const-wide v0, 0xffffffffL

    cmp-long v2, p0, v0

    const/4 v3, -0x1

    if-nez v2, :cond_b

    return v3

    .line 2414
    :cond_b
    const-wide/high16 v4, -0x8000000000000000L

    and-long v6, p0, v4

    cmp-long v2, v6, v4

    if-eqz v2, :cond_14

    return v3

    .line 2416
    :cond_14
    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static getPackedPositionForChild(II)J
    .registers 8
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .line 2437
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide/high16 v2, -0x8000000000000000L

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .registers 5
    .param p0, "groupPosition"    # I

    .line 2453
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .registers 6
    .param p0, "packedPosition"    # J

    .line 2386
    const-wide v0, -0x100000000L

    and-long v2, p0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_d

    .line 2388
    const/4 v0, -0x3

    return v0

    .line 2389
    :cond_d
    const-wide v0, 0x7fffffff00000000L

    and-long v2, p0, v0

    cmp-long v2, v2, v0

    if-nez v2, :cond_1a

    .line 2391
    const/4 v0, -0x2

    return v0

    .line 2393
    :cond_1a
    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getPackedPositionType(J)I
    .registers 6
    .param p0, "packedPosition"    # J

    .line 2363
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    .line 2364
    const/4 v0, 0x2

    return v0

    .line 2367
    :cond_b
    const-wide/high16 v0, -0x8000000000000000L

    and-long v2, p0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_15

    .line 2368
    const/4 v0, 0x1

    goto :goto_16

    .line 2369
    :cond_15
    const/4 v0, 0x0

    .line 2367
    :goto_16
    return v0
.end method

.method private getSelectorRectAnim(I)Landroid/animation/Animator;
    .registers 8
    .param p1, "offset"    # I

    .line 1736
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1737
    .local v0, "newViewBounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1738
    .local v1, "oldViewBounds":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 1739
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, ""

    invoke-static {v2, v5, v3, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1741
    .local v2, "animBounds":Landroid/animation/ObjectAnimator;
    return-object v2
.end method

.method private hasRtlSupport()Z
    .registers 2

    .line 506
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .registers 4
    .param p1, "position"    # I

    .line 1039
    iget v0, p0, Landroid/widget/SemExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1040
    .local v0, "footerViewsStart":I
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_12

    if-lt p1, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v1, 0x1

    :goto_13
    return v1
.end method

.method private isHoverable()Z
    .registers 3

    .line 533
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 534
    return v1

    .line 537
    :cond_8
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method private isRtlCompatibilityMode()Z
    .registers 3

    .line 498
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 499
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_15

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->hasRtlSupport()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x1

    :goto_16
    return v1
.end method

.method private printArrays([I)Ljava/lang/String;
    .registers 7
    .param p1, "arr"    # [I

    .line 3057
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3058
    .local v0, "sb":Ljava/lang/StringBuffer;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_23

    aget v3, p1, v2

    .line 3059
    .local v3, "item":I
    if-gtz v3, :cond_e

    .line 3060
    goto :goto_20

    .line 3061
    :cond_e
    iget-object v4, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3062
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3058
    .end local v3    # "item":I
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3064
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private resetCollapseAnimationState()V
    .registers 3

    .line 1722
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopStart:I

    .line 1723
    iput v0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopEnd:I

    .line 1725
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1726
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1727
    iput v0, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    .line 1728
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    .line 1729
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    .line 1730
    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    .line 1732
    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 1733
    return-void
.end method

.method private resetExpandAnimationState()V
    .registers 5

    .line 1316
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1317
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1318
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    .line 1319
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    .line 1320
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    .line 1321
    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    .line 1323
    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 1326
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v0

    .line 1327
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    if-ge v1, v0, :cond_2a

    .line 1328
    invoke-virtual {p0, v1}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1327
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1330
    .end local v1    # "i":I
    :cond_2a
    return-void
.end method

.method private resolveChildIndicator()V
    .registers 4

    .line 584
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isLayoutRtl()Z

    move-result v0

    .line 585
    .local v0, "isLayoutRtl":Z
    const/4 v1, -0x1

    if-eqz v0, :cond_14

    .line 586
    iget v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    if-lt v2, v1, :cond_d

    .line 587
    iput v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    .line 589
    :cond_d
    iget v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    if-lt v2, v1, :cond_20

    .line 590
    iput v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    goto :goto_20

    .line 593
    :cond_14
    iget v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    if-lt v2, v1, :cond_1a

    .line 594
    iput v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    .line 596
    :cond_1a
    iget v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    if-lt v2, v1, :cond_20

    .line 597
    iput v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    .line 600
    :cond_20
    :goto_20
    return-void
.end method

.method private resolveIndicator()V
    .registers 4

    .line 558
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isLayoutRtl()Z

    move-result v0

    .line 559
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_13

    .line 560
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_c

    .line 561
    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 563
    :cond_c
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_1f

    .line 564
    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    goto :goto_1f

    .line 567
    :cond_13
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_19

    .line 568
    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    .line 570
    :cond_19
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_1f

    .line 571
    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 574
    :cond_1f
    :goto_1f
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_30

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_30

    .line 575
    iget v2, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 577
    :cond_30
    return-void
.end method

.method private startCollapseAllAnimation([ZLjava/lang/Runnable;)V
    .registers 26
    .param p1, "expanded"    # [Z
    .param p2, "animationEndRunnable"    # Ljava/lang/Runnable;

    .line 1746
    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v8

    .line 1748
    .local v8, "firstVisiblePos":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getLastNonFooterPosition()I

    move-result v9

    .line 1749
    .local v9, "lastValidPos":I
    if-ge v9, v8, :cond_d

    return-void

    .line 1751
    :cond_d
    invoke-virtual {v7, v9}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v10

    .line 1752
    .local v10, "lastPosPackedPos":J
    invoke-static {v10, v11}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v12

    .line 1753
    .local v12, "lastGroupIdBefore":I
    invoke-virtual {v7, v9}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 1755
    .local v13, "lastPositionBottomBefore":I
    add-int/lit8 v0, v12, 0x1

    new-array v14, v0, [I

    .line 1756
    .local v14, "groupOffsets":[I
    add-int/lit8 v0, v12, 0x1

    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, v7, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    .line 1757
    add-int/lit8 v0, v12, 0x1

    new-array v0, v0, [Landroid/widget/SemExpandableListView$CollapsingRect;

    iput-object v0, v7, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    .line 1758
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v15

    .line 1759
    .local v15, "childCount":I
    const/4 v0, 0x0

    invoke-direct {v7, v0}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v6

    .line 1760
    .local v6, "firstGroupPosition":I
    invoke-virtual {v7, v6}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1762
    .local v1, "lastGroupView":Landroid/view/View;
    const/4 v2, 0x1

    move-object/from16 v16, v1

    .end local v1    # "lastGroupView":Landroid/view/View;
    .local v2, "i":I
    .local v16, "lastGroupView":Landroid/view/View;
    :goto_3d
    array-length v1, v14

    if-ge v2, v1, :cond_a1

    .line 1763
    invoke-static {v2}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v3

    .line 1764
    .local v3, "groupPackedPos":J
    invoke-virtual {v7, v3, v4}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v1

    .line 1765
    .local v1, "pos":I
    invoke-virtual {v7, v1}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1766
    .local v5, "groupView":Landroid/view/View;
    add-int/lit8 v17, v2, -0x1

    aget v17, v14, v17

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v18

    sub-int v17, v17, v18

    aput v17, v14, v2

    .line 1768
    new-instance v0, Landroid/graphics/RectF;

    move/from16 v18, v1

    .end local v1    # "pos":I
    .local v18, "pos":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    move-wide/from16 v19, v3

    .end local v3    # "groupPackedPos":J
    .local v19, "groupPackedPos":J
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    move/from16 v21, v6

    .end local v6    # "firstGroupPosition":I
    .local v21, "firstGroupPosition":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v0, v1, v3, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1769
    .local v0, "startRect":Landroid/graphics/RectF;
    iget-object v1, v7, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    add-int/lit8 v3, v2, -0x1

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    aput-object v4, v1, v3

    .line 1770
    iget-object v1, v7, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    add-int/lit8 v3, v2, -0x1

    new-instance v4, Landroid/widget/SemExpandableListView$CollapsingRect;

    iget-object v6, v7, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    add-int/lit8 v22, v2, -0x1

    aget-object v6, v6, v22

    invoke-direct {v4, v0, v6}, Landroid/widget/SemExpandableListView$CollapsingRect;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    aput-object v4, v1, v3

    .line 1771
    move-object/from16 v16, v5

    .line 1762
    .end local v0    # "startRect":Landroid/graphics/RectF;
    .end local v5    # "groupView":Landroid/view/View;
    .end local v18    # "pos":I
    .end local v19    # "groupPackedPos":J
    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v21

    const/4 v0, 0x0

    goto :goto_3d

    .end local v21    # "firstGroupPosition":I
    .restart local v6    # "firstGroupPosition":I
    :cond_a1
    move/from16 v21, v6

    .line 1774
    .end local v2    # "i":I
    .end local v6    # "firstGroupPosition":I
    .restart local v21    # "firstGroupPosition":I
    invoke-virtual {v7, v9}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 1775
    .local v18, "lastChild":Landroid/view/View;
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v6, v0

    .line 1776
    .local v6, "startRect":Landroid/graphics/RectF;
    iget-object v0, v7, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v0, v12

    .line 1777
    iget-object v0, v7, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    new-instance v1, Landroid/widget/SemExpandableListView$CollapsingRect;

    iget-object v2, v7, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    aget-object v2, v2, v12

    invoke-direct {v1, v6, v2}, Landroid/widget/SemExpandableListView$CollapsingRect;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    aput-object v1, v0, v12

    .line 1779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 1781
    .local v5, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_de
    const/4 v1, 0x1

    if-ge v0, v15, :cond_126

    .line 1782
    add-int v2, v0, v8

    invoke-direct {v7, v2}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v2

    if-eqz v2, :cond_ec

    move-object/from16 v20, v6

    goto :goto_121

    .line 1784
    :cond_ec
    invoke-virtual {v7, v0}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    .line 1785
    .local v2, "expandableListPos":J
    invoke-static {v2, v3}, Landroid/widget/SemExpandableListView;->getPackedPositionType(J)I

    move-result v4

    if-nez v4, :cond_f7

    goto :goto_f8

    :cond_f7
    const/4 v1, 0x0

    .line 1786
    .local v1, "isGroup":Z
    :goto_f8
    if-eqz v1, :cond_fd

    move-object/from16 v20, v6

    goto :goto_121

    .line 1788
    :cond_fd
    invoke-static {v2, v3}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v4

    .line 1789
    .local v4, "groupId":I
    move/from16 v19, v1

    .end local v1    # "isGroup":Z
    .local v19, "isGroup":Z
    iget-object v1, v7, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1791
    .local v1, "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    move-object/from16 v20, v6

    .end local v6    # "startRect":Landroid/graphics/RectF;
    .local v20, "startRect":Landroid/graphics/RectF;
    iget-object v6, v7, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1792
    iget-object v6, v7, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1793
    aget v6, v14, v4

    neg-int v6, v6

    invoke-direct {v7, v6, v1}, Landroid/widget/SemExpandableListView;->createViewSnapshotAnimation(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1795
    .local v6, "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1781
    .end local v1    # "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v2    # "expandableListPos":J
    .end local v4    # "groupId":I
    .end local v6    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v19    # "isGroup":Z
    :goto_121
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, v20

    goto :goto_de

    .end local v20    # "startRect":Landroid/graphics/RectF;
    .local v6, "startRect":Landroid/graphics/RectF;
    :cond_126
    move-object/from16 v20, v6

    .line 1798
    .end local v0    # "i":I
    .end local v6    # "startRect":Landroid/graphics/RectF;
    .restart local v20    # "startRect":Landroid/graphics/RectF;
    iput-boolean v1, v7, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 1800
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v4, Landroid/widget/SemExpandableListView$8;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v12

    move-object v7, v4

    move v4, v13

    move-object/from16 v17, v5

    .end local v5    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local v17, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v5, p1

    move/from16 v19, v21

    move/from16 v21, v8

    move-object v8, v6

    .end local v8    # "firstVisiblePos":I
    .local v19, "firstGroupPosition":I
    .local v21, "firstVisiblePos":I
    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Landroid/widget/SemExpandableListView$8;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;II[ZLjava/util/ArrayList;)V

    invoke-virtual {v8, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1884
    return-void
.end method

.method private startCollapseAnimation(ILjava/lang/Runnable;)V
    .registers 26
    .param p1, "groupPosBefore"    # I
    .param p2, "animationEndRunnable"    # Ljava/lang/Runnable;

    .line 1567
    move-object/from16 v9, p0

    move/from16 v10, p1

    invoke-static/range {p1 .. p1}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v11

    .line 1568
    .local v11, "collapsedGroupPackedPosition":J
    add-int/lit8 v0, v10, 0x1

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v13

    .line 1570
    .local v13, "nextCollapsedGroupPackedPosition":J
    invoke-virtual {v9, v11, v12}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v15

    .line 1571
    .local v15, "collapsedGroupFlatPosBefore":I
    invoke-virtual {v9, v13, v14}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v16

    .line 1573
    .local v16, "nextCollapsedGroupFlatPos":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v8

    .line 1574
    .local v8, "firstVisiblePosBefore":I
    sub-int v0, v15, v8

    invoke-virtual {v9, v0}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 1575
    .local v17, "collapsedGroupBefore":Landroid/view/View;
    if-nez v17, :cond_56

    .line 1577
    sget-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCollapseAnimation() BEFORE: groupPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flatPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", firstPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->resetCollapseAnimationState()V

    .line 1581
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    .line 1582
    return-void

    .line 1584
    :cond_56
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v18

    .line 1586
    .local v18, "collapsedGroupTopBefore":I
    sub-int v0, v16, v8

    invoke-virtual {v9, v0}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 1587
    .local v19, "nextCollapsedGroup":Landroid/view/View;
    const/4 v0, 0x1

    if-nez v19, :cond_81

    .line 1588
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v9, v2}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1589
    .local v1, "listBottom":I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v2, v1, v2

    iput v2, v9, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    .line 1590
    .end local v1    # "listBottom":I
    goto :goto_8c

    .line 1591
    :cond_81
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v9, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    .line 1594
    :goto_8c
    iget-object v1, v9, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v20

    .line 1595
    .local v20, "groupCountBefore":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v21

    .line 1596
    .local v21, "listTotalChildrenCountBefore":I
    iget-object v1, v9, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 1597
    iget-object v1, v9, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 1598
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v9, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopStart:I

    .line 1599
    iput-boolean v0, v9, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 1601
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v6, Landroid/widget/SemExpandableListView$7;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p1

    move v4, v15

    move/from16 v5, v20

    move-object v9, v6

    move v6, v8

    move-object v10, v7

    move/from16 v7, v21

    move/from16 v22, v8

    .end local v8    # "firstVisiblePosBefore":I
    .local v22, "firstVisiblePosBefore":I
    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Landroid/widget/SemExpandableListView$7;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;IIIIII)V

    invoke-virtual {v10, v9}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1718
    return-void
.end method

.method private startExpandAllAnimation([ZLjava/lang/Runnable;)V
    .registers 5
    .param p1, "expanded"    # [Z
    .param p2, "animationEndRunnable"    # Ljava/lang/Runnable;

    .line 1333
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 1335
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/widget/SemExpandableListView$6;

    invoke-direct {v1, p0, p2, p1}, Landroid/widget/SemExpandableListView$6;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;[Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1491
    return-void
.end method

.method private startExpandAnimation(ILjava/lang/Runnable;)V
    .registers 5
    .param p1, "groupPos"    # I
    .param p2, "animationEndRunnable"    # Ljava/lang/Runnable;

    .line 1185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 1187
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/widget/SemExpandableListView$5;

    invoke-direct {v1, p0, p2, p1}, Landroid/widget/SemExpandableListView$5;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1313
    return-void
.end method

.method private startIndicatorAnimation(Landroid/view/View;ZI)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "isExpanding"    # Z
    .param p3, "duration"    # I

    .line 1887
    iget v0, p0, Landroid/widget/SemExpandableListView;->mRotationAngle:I

    if-eqz p2, :cond_5

    goto :goto_6

    :cond_5
    neg-int v0, v0

    .line 1888
    .local v0, "startAngle":I
    :goto_6
    const v1, 0x7a0a1eff

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;

    .line 1889
    .local v1, "holder":Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;
    if-eqz v1, :cond_47

    iget-object v2, v1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    if-nez v2, :cond_16

    goto :goto_47

    .line 1893
    :cond_16
    iget-object v2, v1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    .line 1895
    .local v2, "img":Landroid/widget/SemExpandableListView$IndicatorImageView;
    iget v3, p0, Landroid/widget/SemExpandableListView;->mIndicatorAnimationType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_39

    .line 1896
    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setRotation(F)V

    .line 1897
    invoke-virtual {v2}, Landroid/widget/SemExpandableListView$IndicatorImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Landroid/widget/SemExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 1898
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, p3

    .line 1899
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1900
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    goto :goto_3c

    .line 1902
    :cond_39
    invoke-virtual {v2}, Landroid/widget/SemExpandableListView$IndicatorImageView;->startIndicatorMorphAimation()V

    .line 1904
    :goto_3c
    if-eqz p2, :cond_41

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mDescriptionCollapse:Ljava/lang/String;

    goto :goto_43

    :cond_41
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mDescriptionExpand:Ljava/lang/String;

    :goto_43
    invoke-virtual {v2, v3}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1905
    return-void

    .line 1890
    .end local v2    # "img":Landroid/widget/SemExpandableListView$IndicatorImageView;
    :cond_47
    :goto_47
    sget-object v2, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startIndicatorAnimation() holder or indicatorImgView is null, startAngle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    return-void
.end method


# virtual methods
.method public collapseAll()V
    .registers 3

    .line 3106
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 3108
    :cond_9
    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    return-void

    .line 3110
    :cond_f
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    .line 3111
    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-nez v0, :cond_19

    .line 3112
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->collapseAllGroups()V

    .line 3115
    :cond_19
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->triggerJumpScrollToTop()V

    .line 3116
    return-void
.end method

.method public collapseGroup(I)Z
    .registers 4
    .param p1, "groupPos"    # I

    .line 2060
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 2062
    .local v0, "retValue":Z
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_d

    .line 2063
    invoke-interface {v1, p1}, Landroid/widget/SemExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 2066
    :cond_d
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flatListPosition"    # I
    .param p3, "id"    # J

    .line 2476
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2478
    new-instance v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object/from16 v9, p1

    move-wide/from16 v3, p3

    invoke-direct {v2, v9, v1, v3, v4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v2

    .line 2481
    :cond_14
    move-object/from16 v9, p1

    move-wide/from16 v3, p3

    invoke-direct {v0, v1}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v2

    .line 2482
    .local v2, "adjustedPosition":I
    iget-object v5, v0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v5, v2}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v10

    .line 2483
    .local v10, "pm":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    iget-object v11, v10, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    .line 2485
    .local v11, "pos":Landroid/widget/SemExpandableListPosition;
    invoke-direct {v0, v11}, Landroid/widget/SemExpandableListView;->getChildOrGroupId(Landroid/widget/SemExpandableListPosition;)J

    move-result-wide v12

    .line 2486
    .end local p3    # "id":J
    .local v12, "id":J
    invoke-virtual {v11}, Landroid/widget/SemExpandableListPosition;->getPackedPosition()J

    move-result-wide v14

    .line 2488
    .local v14, "packedPosition":J
    invoke-virtual {v10}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 2490
    new-instance v16, Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;

    move-object/from16 v3, v16

    move-object/from16 v4, p1

    move-wide v5, v14

    move-wide v7, v12

    invoke-direct/range {v3 .. v8}, Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    return-object v16
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 607
    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    .line 609
    :cond_8
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->drawGhostViews(Landroid/graphics/Canvas;)V

    .line 612
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 614
    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    .line 616
    :cond_16
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->drawGhostViews(Landroid/graphics/Canvas;)V

    .line 617
    :cond_19
    return-void
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .line 929
    iget v0, p0, Landroid/widget/SemExpandableListView;->mFirstPosition:I

    add-int/2addr v0, p3

    .line 933
    .local v0, "flatListPosition":I
    if-ltz v0, :cond_37

    .line 934
    invoke-direct {p0, v0}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v1

    .line 935
    .local v1, "adjustedPosition":I
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 938
    .local v2, "pos":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    iget-object v3, v2, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2b

    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, v2, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v3, v3, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v4, v2, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v3, v4, :cond_27

    goto :goto_2b

    .line 947
    :cond_27
    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_37

    .line 941
    :cond_2b
    :goto_2b
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 942
    .local v3, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 943
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 944
    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 945
    return-void

    .line 951
    .end local v1    # "adjustedPosition":I
    .end local v2    # "pos":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    .end local v3    # "divider":Landroid/graphics/drawable/Drawable;
    :cond_37
    :goto_37
    invoke-super {p0, p1, p2, v0}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 952
    return-void
.end method

.method public expandAll()V
    .registers 3

    .line 3087
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 3089
    :cond_9
    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    return-void

    .line 3091
    :cond_f
    iput v1, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    .line 3092
    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-nez v0, :cond_19

    .line 3093
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->expandAllGroups()V

    .line 3094
    return-void

    .line 3097
    :cond_19
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->triggerJumpScrollToTop()V

    .line 3098
    return-void
.end method

.method public expandCollapseAll(Z)Z
    .registers 3
    .param p1, "isExpand"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3355
    const/4 v0, 0x0

    return v0
.end method

.method public expandGroup(I)Z
    .registers 3
    .param p1, "groupPos"    # I

    .line 2013
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemExpandableListView;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public expandGroup(IZ)Z
    .registers 9
    .param p1, "groupPos"    # I
    .param p2, "animate"    # Z

    .line 2026
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, v1}, Landroid/widget/SemExpandableListPosition;->obtain(IIII)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    .line 2028
    .local v0, "elGroupPos":Landroid/widget/SemExpandableListPosition;
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 2029
    .local v1, "pm":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    if-nez v1, :cond_10

    .line 2030
    const/4 v2, 0x0

    return v2

    .line 2032
    :cond_10
    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    .line 2033
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/SemExpandableListConnector;->expandGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 2035
    .local v2, "retValue":Z
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    if-eqz v3, :cond_20

    .line 2036
    invoke-interface {v3, p1}, Landroid/widget/SemExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 2039
    :cond_20
    if-eqz p2, :cond_35

    .line 2040
    iget-object v3, v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    .line 2042
    .local v3, "groupFlatPos":I
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, v3

    .line 2043
    .local v4, "shiftedGroupPosition":I
    iget-object v5, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5, v4}, Landroid/widget/SemExpandableListView;->smoothScrollToPosition(II)V

    .line 2046
    .end local v3    # "groupFlatPos":I
    .end local v4    # "shiftedGroupPosition":I
    :cond_35
    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 2048
    return v2
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .line 131
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 987
    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getExpandCollapseDuration()I
    .registers 5

    .line 1538
    iget v0, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x4085e00000000000L    # 700.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 1539
    .local v0, "animationDuration":I
    const/16 v1, 0x190

    if-ge v0, v1, :cond_1b

    .line 1540
    const/16 v0, 0x190

    .line 1542
    :cond_1b
    return v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .registers 2

    .line 1031
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .registers 6
    .param p1, "flatListPosition"    # I

    .line 2204
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2206
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getHeaderFooterPackedPosition(I)J

    move-result-wide v0

    return-wide v0

    .line 2209
    :cond_b
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 2210
    .local v0, "adjustedPosition":I
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 2211
    .local v1, "pm":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    iget-object v2, v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    invoke-virtual {v2}, Landroid/widget/SemExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 2212
    .local v2, "packedPos":J
    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 2213
    return-wide v2
.end method

.method public getFlatListPosition(J)I
    .registers 7
    .param p1, "packedPosition"    # J

    .line 2229
    nop

    .line 2230
    invoke-static {p1, p2}, Landroid/widget/SemExpandableListPosition;->obtainPosition(J)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    .line 2231
    .local v0, "elPackedPos":Landroid/widget/SemExpandableListPosition;
    const/4 v1, -0x1

    if-nez v0, :cond_9

    return v1

    .line 2233
    :cond_9
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 2234
    .local v2, "pm":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    .line 2235
    if-nez v2, :cond_15

    return v1

    .line 2237
    :cond_15
    iget-object v1, v2, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    .line 2238
    .local v1, "flatListPosition":I
    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 2239
    invoke-direct {p0, v1}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    return v3
.end method

.method public getSelectedId()J
    .registers 6

    .line 2267
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getSelectedPosition()J

    move-result-wide v0

    .line 2268
    .local v0, "packedPos":J
    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    const-wide/16 v2, -0x1

    return-wide v2

    .line 2270
    :cond_10
    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 2272
    .local v2, "groupPos":I
    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_21

    .line 2274
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v2}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    return-wide v3

    .line 2277
    :cond_21
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v2, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    return-wide v3
.end method

.method public getSelectedPosition()J
    .registers 4

    .line 2252
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 2255
    .local v0, "selectedPos":I
    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public getUnfoldedChildAt(I)Landroid/view/View;
    .registers 4
    .param p1, "index"    # I

    .line 3266
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-super {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/SemExpandableListConnector$ItemDecorator;->unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 1094
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0, p2}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 1096
    .local v0, "posMetadata":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    invoke-direct {p0, v1}, Landroid/widget/SemExpandableListView;->getChildOrGroupId(Landroid/widget/SemExpandableListPosition;)J

    move-result-wide p3

    .line 1099
    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v2, 0x2

    const/4 v8, 0x0

    if-ne v1, v2, :cond_85

    .line 1103
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mOnGroupClickListener:Landroid/widget/SemExpandableListView$OnGroupClickListener;

    if-eqz v2, :cond_2d

    .line 1104
    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v5, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move-object v3, p0

    move-object v4, p1

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/widget/SemExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/SemExpandableListView;Landroid/view/View;IJ)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1106
    invoke-virtual {p0, v8}, Landroid/widget/SemExpandableListView;->playSoundEffect(I)V

    .line 1107
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 1108
    const/4 v1, 0x1

    return v1

    .line 1112
    :cond_2d
    iget-boolean v1, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-eqz v1, :cond_34

    .line 1113
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->captureViewsPriorAnimation()V

    .line 1115
    :cond_34
    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    .line 1117
    .local v1, "groupPos":I
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1118
    new-instance v2, Landroid/widget/SemExpandableListView$2;

    invoke-direct {v2, p0, v1}, Landroid/widget/SemExpandableListView$2;-><init>(Landroid/widget/SemExpandableListView;I)V

    .line 1126
    .local v2, "animationEndRunnable":Ljava/lang/Runnable;
    iget-boolean v3, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-eqz v3, :cond_4a

    .line 1127
    invoke-direct {p0, v1, v2}, Landroid/widget/SemExpandableListView;->startCollapseAnimation(ILjava/lang/Runnable;)V

    .line 1131
    :cond_4a
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v3, v0}, Landroid/widget/SemExpandableListConnector;->collapseGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    .line 1133
    new-instance v3, Landroid/widget/SemExpandableListView$3;

    invoke-direct {v3, p0}, Landroid/widget/SemExpandableListView$3;-><init>(Landroid/widget/SemExpandableListView;)V

    invoke-virtual {p0, v3}, Landroid/widget/SemExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 1140
    invoke-virtual {p0, v8}, Landroid/widget/SemExpandableListView;->playSoundEffect(I)V

    .line 1142
    iget-boolean v3, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-nez v3, :cond_61

    .line 1143
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1145
    .end local v2    # "animationEndRunnable":Ljava/lang/Runnable;
    :cond_61
    goto :goto_83

    .line 1148
    :cond_62
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v0}, Landroid/widget/SemExpandableListConnector;->expandGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    .line 1150
    invoke-virtual {p0, v8}, Landroid/widget/SemExpandableListView;->playSoundEffect(I)V

    .line 1152
    iget-object v2, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 1153
    .local v2, "shiftedGroupPosition":I
    new-instance v3, Landroid/widget/SemExpandableListView$4;

    invoke-direct {v3, p0, v1}, Landroid/widget/SemExpandableListView$4;-><init>(Landroid/widget/SemExpandableListView;I)V

    .line 1160
    .local v3, "animationEndRunnable":Ljava/lang/Runnable;
    iget-boolean v4, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-eqz v4, :cond_80

    .line 1161
    invoke-direct {p0, v1, v3}, Landroid/widget/SemExpandableListView;->startExpandAnimation(ILjava/lang/Runnable;)V

    goto :goto_83

    .line 1163
    :cond_80
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1167
    .end local v2    # "shiftedGroupPosition":I
    .end local v3    # "animationEndRunnable":Ljava/lang/Runnable;
    :goto_83
    const/4 v1, 0x1

    .line 1168
    .local v1, "returnValue":Z
    goto :goto_9f

    .line 1170
    .end local v1    # "returnValue":Z
    :cond_85
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mOnChildClickListener:Landroid/widget/SemExpandableListView$OnChildClickListener;

    if-eqz v1, :cond_9e

    .line 1171
    invoke-virtual {p0, v8}, Landroid/widget/SemExpandableListView;->playSoundEffect(I)V

    .line 1172
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mOnChildClickListener:Landroid/widget/SemExpandableListView$OnChildClickListener;

    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v5, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v6, v1, Landroid/widget/SemExpandableListPosition;->childPos:I

    move-object v3, p0

    move-object v4, p1

    move-wide v7, p3

    invoke-interface/range {v2 .. v8}, Landroid/widget/SemExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/SemExpandableListView;Landroid/view/View;IIJ)Z

    move-result v1

    return v1

    .line 1176
    :cond_9e
    const/4 v1, 0x0

    .line 1179
    .restart local v1    # "returnValue":Z
    :goto_9f
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 1181
    return v1
.end method

.method public isGroupExpanded(I)Z
    .registers 3
    .param p1, "groupPosition"    # I

    .line 2349
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method protected layoutChildren()V
    .registers 5

    .line 1556
    const/4 v0, 0x0

    .line 1557
    .local v0, "before":Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_12

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_12

    .line 1558
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, v1

    .line 1560
    :cond_12
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 1561
    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    if-ne v1, v2, :cond_20

    if-eqz v0, :cond_20

    .line 1562
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1564
    :cond_20
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 3284
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 3285
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v0, :cond_a

    .line 3286
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector;->semRegisterDataSetObserver()V

    .line 3288
    :cond_a
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 3302
    invoke-super {p0, p1}, Landroid/widget/ListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3304
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    .line 3305
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10404a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 3304
    const v2, 0x10404a2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mDescriptionExpand:Ljava/lang/String;

    .line 3306
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    .line 3307
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10404a0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 3306
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mDescriptionCollapse:Ljava/lang/String;

    .line 3309
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_5d

    .line 3310
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 3311
    .local v0, "strokeSize":I
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3313
    .end local v0    # "strokeSize":I
    :cond_5d
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 3293
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 3294
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v0, :cond_a

    .line 3295
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector;->semUnregisterDataSetObserver()V

    .line 3297
    :cond_a
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 545
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 546
    .local v0, "action":I
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->isHoverable()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isHovered()Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v1, 0xa

    if-ne v0, v1, :cond_19

    .line 547
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/SemExpandableListView;->setHovered(Z)V

    .line 548
    return v1

    .line 550
    :cond_19
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2745
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2746
    const-class v0, Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2747
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2754
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2755
    const-class v0, Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2756
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3271
    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 3272
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method onJumpScrollToTopFinished()V
    .registers 3

    .line 3120
    invoke-super {p0}, Landroid/widget/ListView;->onJumpScrollToTopFinished()V

    .line 3121
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 3123
    :cond_c
    iget v0, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    .line 3124
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->captureViewsPriorAnimation()V

    .line 3125
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->getExpandedState()[Z

    move-result-object v0

    .line 3126
    .local v0, "expanded":[Z
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->expandAllGroups()V

    .line 3127
    new-instance v1, Landroid/widget/SemExpandableListView$10;

    invoke-direct {v1, p0}, Landroid/widget/SemExpandableListView$10;-><init>(Landroid/widget/SemExpandableListView;)V

    .line 3137
    .local v1, "animationEndRunnable":Ljava/lang/Runnable;
    invoke-direct {p0, v0, v1}, Landroid/widget/SemExpandableListView;->startExpandAllAnimation([ZLjava/lang/Runnable;)V

    .end local v0    # "expanded":[Z
    .end local v1    # "animationEndRunnable":Ljava/lang/Runnable;
    goto :goto_3a

    .line 3138
    :cond_24
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    .line 3139
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->captureViewsPriorAnimation()V

    .line 3140
    new-instance v0, Landroid/widget/SemExpandableListView$11;

    invoke-direct {v0, p0}, Landroid/widget/SemExpandableListView$11;-><init>(Landroid/widget/SemExpandableListView;)V

    .line 3150
    .local v0, "animationEndRunnable":Ljava/lang/Runnable;
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->getExpandedState()[Z

    move-result-object v1

    .line 3151
    .local v1, "expanded":[Z
    invoke-direct {p0, v1, v0}, Landroid/widget/SemExpandableListView;->startCollapseAllAnimation([ZLjava/lang/Runnable;)V

    .line 3152
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->collapseAllGroups()V

    goto :goto_3b

    .line 3138
    .end local v0    # "animationEndRunnable":Ljava/lang/Runnable;
    .end local v1    # "expanded":[Z
    :cond_3a
    :goto_3a
    nop

    .line 3154
    :goto_3b
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    .line 3155
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2727
    instance-of v0, p1, Landroid/widget/SemExpandableListView$SavedState;

    if-nez v0, :cond_8

    .line 2728
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2729
    return-void

    .line 2732
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/widget/SemExpandableListView$SavedState;

    .line 2733
    .local v0, "ss":Landroid/widget/SemExpandableListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/SemExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2735
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v1, :cond_21

    iget-object v1, v0, Landroid/widget/SemExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_21

    .line 2736
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    iget-object v2, v0, Landroid/widget/SemExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/widget/SemExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    .line 2738
    :cond_21
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .line 522
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveIndicator()V

    .line 523
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveChildIndicator()V

    .line 524
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 2716
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2717
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/SemExpandableListView$SavedState;

    .line 2718
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    invoke-direct {v1, v0, v2}, Landroid/widget/SemExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 2717
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3277
    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 3278
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 1071
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-interface {v0, p1}, Landroid/widget/SemExpandableListConnector$ItemDecorator;->unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 1074
    .local v0, "unfoldedDecoratedItemView":Landroid/view/View;
    invoke-direct {p0, p2}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1076
    invoke-super {p0, v0, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    return v1

    .line 1080
    :cond_11
    invoke-direct {p0, p2}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v1

    .line 1081
    .local v1, "adjustedPosition":I
    invoke-virtual {p0, v0, v1, p3, p4}, Landroid/widget/SemExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v2

    return v2
.end method

.method public scrollTo(Landroid/view/View;IILandroid/widget/SemExpandableListConnector$PositionMetadata;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "groupPos"    # I
    .param p3, "expandingChildCount"    # I
    .param p4, "pos"    # Landroid/widget/SemExpandableListConnector$PositionMetadata;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3348
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .line 131
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .line 1011
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 1013
    if-eqz p1, :cond_11

    .line 1015
    new-instance v0, Landroid/widget/SemExpandableListConnector;

    invoke-direct {v0, p1}, Landroid/widget/SemExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    .line 1016
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListConnector;->setItemDecorator(Landroid/widget/SemExpandableListConnector$ItemDecorator;)V

    goto :goto_14

    .line 1018
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    .line 1022
    :goto_14
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1023
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 971
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnimationEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 3199
    iput-boolean p1, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    .line 3200
    return-void
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "childDivider"    # Landroid/graphics/drawable/Drawable;

    .line 924
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 925
    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "childIndicator"    # Landroid/graphics/drawable/Drawable;

    .line 2518
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 2519
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .registers 3
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 2534
    iput p1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    .line 2535
    iput p2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    .line 2536
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveChildIndicator()V

    .line 2537
    return-void
.end method

.method public setChildIndicatorBoundsRelative(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2552
    iput p1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    .line 2553
    iput p2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    .line 2554
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveChildIndicator()V

    .line 2555
    return-void
.end method

.method public setCollapseAllSpeedFactor(F)V
    .registers 2
    .param p1, "collapseAllSpeedFactor"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3341
    return-void
.end method

.method public setCollapseSpeedFactor(F)V
    .registers 2
    .param p1, "collapseSpeedFactor"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3327
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 2764
    invoke-super {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2765
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mDividerHeight:I

    .line 2766
    if-eqz p1, :cond_36

    .line 2767
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    if-nez v1, :cond_11

    .line 2768
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    .line 2770
    :cond_11
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    aput v2, v1, v0

    .line 2771
    sget-object v1, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDivider() height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    aget v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    :cond_36
    return-void
.end method

.method public setDividerHeight(I)V
    .registers 5
    .param p1, "height"    # I

    .line 2781
    invoke-super {p0, p1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 2782
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mDividerHeight:I

    .line 2783
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    if-nez v1, :cond_f

    .line 2784
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    .line 2786
    :cond_f
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    aput p1, v1, v0

    .line 2787
    sget-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDividerHeight() height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    return-void
.end method

.method public setExpandAllSpeedFactor(F)V
    .registers 2
    .param p1, "expandAllSpeedFactor"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3334
    return-void
.end method

.method public setExpandSpeedFactor(F)V
    .registers 2
    .param p1, "expandSpeedFactor"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3320
    return-void
.end method

.method public setExpandingAnimationEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 3209
    iput-boolean p1, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    .line 3210
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "groupIndicator"    # Landroid/graphics/drawable/Drawable;

    .line 2567
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 2568
    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_11

    if-eqz p1, :cond_11

    .line 2569
    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 2571
    :cond_11
    return-void
.end method

.method public setGroupIndicatorAnimationType(I)V
    .registers 2
    .param p1, "animationType"    # I

    .line 2581
    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorAnimationType:I

    .line 2582
    return-void
.end method

.method public setGroupIndicatorColor(I)V
    .registers 5
    .param p1, "color"    # I

    .line 3243
    sget-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGroupIndicatorColor() color= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    iput p1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorColor:I

    .line 3245
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_26

    .line 3246
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3248
    :cond_26
    return-void
.end method

.method public setGroupIndicatorRotationAngle(I)V
    .registers 2
    .param p1, "angle"    # I

    .line 3078
    iput p1, p0, Landroid/widget/SemExpandableListView;->mRotationAngle:I

    .line 3079
    return-void
.end method

.method public setIndicatorBounds(II)V
    .registers 3
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 2597
    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    .line 2598
    iput p2, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 2599
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveIndicator()V

    .line 2600
    return-void
.end method

.method public setIndicatorBoundsRelative(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2615
    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    .line 2616
    iput p2, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    .line 2617
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveIndicator()V

    .line 2618
    return-void
.end method

.method public setIndicatorGravity(I)V
    .registers 5
    .param p1, "gravity"    # I

    .line 3231
    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorGravity:I

    .line 3233
    sget-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIndicatorGravity() gravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIndicatorGravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/SemExpandableListView;->mIndicatorGravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    return-void
.end method

.method public setIndicatorPaddings(II)V
    .registers 3
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 3220
    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingLeft:I

    .line 3221
    iput p2, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingRight:I

    .line 3222
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/SemExpandableListView$OnChildClickListener;)V
    .registers 2
    .param p1, "onChildClickListener"    # Landroid/widget/SemExpandableListView$OnChildClickListener;

    .line 2185
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnChildClickListener:Landroid/widget/SemExpandableListView$OnChildClickListener;

    .line 2186
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/SemExpandableListView$OnGroupClickListener;)V
    .registers 2
    .param p1, "onGroupClickListener"    # Landroid/widget/SemExpandableListView$OnGroupClickListener;

    .line 2151
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnGroupClickListener:Landroid/widget/SemExpandableListView$OnGroupClickListener;

    .line 2152
    return-void
.end method

.method public setOnGroupCollapseListener(Landroid/widget/SemExpandableListView$OnGroupCollapseListener;)V
    .registers 2
    .param p1, "onGroupCollapseListener"    # Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    .line 2092
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    .line 2093
    return-void
.end method

.method public setOnGroupExpandListener(Landroid/widget/SemExpandableListView$OnGroupExpandListener;)V
    .registers 2
    .param p1, "onGroupExpandListener"    # Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    .line 2119
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    .line 2120
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 1001
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1002
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .registers 8
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .line 2312
    invoke-static {p1, p2}, Landroid/widget/SemExpandableListPosition;->obtainChildPosition(II)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    .line 2314
    .local v0, "elChildPos":Landroid/widget/SemExpandableListPosition;
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 2316
    .local v1, "flatChildPos":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    if-nez v1, :cond_24

    .line 2320
    if-nez p3, :cond_10

    const/4 v2, 0x0

    return v2

    .line 2322
    :cond_10
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListView;->expandGroup(I)Z

    .line 2324
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 2327
    if-eqz v1, :cond_1c

    goto :goto_24

    .line 2328
    :cond_1c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not find child"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2332
    :cond_24
    :goto_24
    iget-object v2, v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v2}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    .line 2333
    .local v2, "absoluteFlatPosition":I
    invoke-super {p0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 2335
    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    .line 2336
    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 2338
    const/4 v3, 0x1

    return v3
.end method

.method public setSelectedGroup(I)V
    .registers 5
    .param p1, "groupPosition"    # I

    .line 2287
    nop

    .line 2288
    invoke-static {p1}, Landroid/widget/SemExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    .line 2289
    .local v0, "elGroupPos":Landroid/widget/SemExpandableListPosition;
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 2290
    .local v1, "pm":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    if-nez v1, :cond_e

    .line 2291
    return-void

    .line 2293
    :cond_e
    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    .line 2294
    iget-object v2, v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v2}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    .line 2295
    .local v2, "absoluteFlatPosition":I
    invoke-super {p0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 2296
    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 2297
    return-void
.end method
