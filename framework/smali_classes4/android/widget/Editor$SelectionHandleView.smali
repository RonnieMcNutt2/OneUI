.class public final Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SelectionHandleView"
.end annotation


# instance fields
.field private final mHandleType:I

.field private mInWord:Z

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field private mTouchWordDelta:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .registers 12
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I
    .param p5, "handleType"    # I

    .line 7749
    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 7750
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView-IA;)V

    .line 7735
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 7741
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 7746
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    .line 7751
    iput p5, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    .line 7752
    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 7753
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    .line 7754
    return-void
.end method

.method private getHorizontal(Landroid/text/Layout;IZ)F
    .registers 12
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "startHandle"    # Z

    .line 8141
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v0

    .line 8143
    .local v0, "offsetTransformed":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 8145
    .local v2, "line":I
    const/4 v3, 0x0

    if-eqz p3, :cond_14

    move v4, v0

    goto :goto_1a

    :cond_14
    add-int/lit8 v4, v0, -0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 8146
    .local v4, "offsetToCheck":I
    :goto_1a
    invoke-virtual {p1, v4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v5

    .line 8147
    .local v5, "isRtlChar":Z
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_26

    goto :goto_27

    :cond_26
    move v1, v3

    .line 8148
    .local v1, "isRtlParagraph":Z
    :goto_27
    if-eq v5, v1, :cond_2e

    .line 8149
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v3

    return v3

    .line 8151
    :cond_2e
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    return v3
.end method

.method private isStartHandle()Z
    .registers 2

    .line 7757
    iget v0, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private positionAndAdjustForCrossingHandles(IZ)V
    .registers 7
    .param p1, "offset"    # I
    .param p2, "fromTouchScreen"    # Z

    .line 8066
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    goto :goto_1b

    :cond_11
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 8067
    .local v0, "anotherHandleOffset":I
    :goto_1b
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    if-eqz v1, :cond_23

    if-ge p1, v0, :cond_2b

    .line 8068
    :cond_23
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    if-nez v1, :cond_45

    if-gt p1, v0, :cond_45

    .line 8072
    :cond_2b
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 8074
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_45

    if-ne p1, v0, :cond_45

    .line 8075
    iget-object v2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Editor;->-$$Nest$mgetNextCursorOffset(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 8108
    .end local v1    # "layout":Landroid/text/Layout;
    :cond_45
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    .line 8109
    return-void
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .registers 8
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .line 8112
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 8114
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_39

    .line 8115
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v0, v0, v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    .line 8116
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    .line 8117
    .local v0, "rightEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_36

    goto :goto_37

    :cond_36
    move v1, v2

    :goto_37
    move v0, v1

    .line 8118
    .local v0, "nearEdge":Z
    goto :goto_53

    .line 8119
    .end local v0    # "nearEdge":Z
    :cond_39
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v0, v0, v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    .line 8120
    .local v0, "leftEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gez v3, :cond_51

    goto :goto_52

    :cond_51
    move v1, v2

    :goto_52
    move v0, v1

    .line 8122
    .local v0, "nearEdge":Z
    :goto_53
    return v0
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .registers 2

    .line 7776
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    goto :goto_1b

    :cond_11
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    :goto_1b
    return v0
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .registers 4
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 8137
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .registers 3
    .param p1, "isRtlRun"    # Z

    .line 7771
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x3

    goto :goto_9

    :cond_8
    const/4 v0, 0x5

    :goto_9
    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .line 7762
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p2, v0, :cond_d

    .line 7763
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0

    .line 7765
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected getMagnifierHandleTrigger()I
    .registers 2

    .line 8184
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8185
    const/4 v0, 0x1

    goto :goto_9

    .line 8186
    :cond_8
    const/4 v0, 0x2

    .line 8184
    :goto_9
    return v0
.end method

.method protected getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .registers 16
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "x"    # F

    .line 8156
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v0

    .line 8157
    .local v0, "localX":F
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v2

    .line 8158
    .local v2, "primaryOffset":I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v3

    if-nez v3, :cond_20

    .line 8159
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result v1

    return v1

    .line 8162
    :cond_20
    const/4 v3, 0x0

    invoke-virtual {p1, p2, v0, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v4

    .line 8163
    .local v4, "secondaryOffset":I
    iget-object v5, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v6

    invoke-virtual {v5, v6, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v5

    .line 8165
    .local v5, "currentOffset":I
    sub-int v6, v2, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 8166
    .local v6, "primaryDiff":I
    sub-int v7, v4, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 8168
    .local v7, "secondaryDiff":I
    if-ge v6, v7, :cond_43

    .line 8169
    move v3, v2

    .local v3, "offset":I
    goto :goto_67

    .line 8170
    .end local v3    # "offset":I
    :cond_43
    if-le v6, v7, :cond_47

    .line 8171
    move v3, v4

    .restart local v3    # "offset":I
    goto :goto_67

    .line 8173
    .end local v3    # "offset":I
    :cond_47
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 8174
    move v8, v5

    goto :goto_55

    :cond_4f
    add-int/lit8 v8, v5, -0x1

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 8175
    .local v8, "offsetToCheck":I
    :goto_55
    invoke-virtual {p1, v8}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v9

    .line 8176
    .local v9, "isRtlChar":Z
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_61

    move v3, v1

    .line 8177
    .local v3, "isRtlParagraph":Z
    :cond_61
    if-ne v9, v3, :cond_65

    move v10, v2

    goto :goto_66

    :cond_65
    move v10, v4

    :goto_66
    move v3, v10

    .line 8179
    .end local v8    # "offsetToCheck":I
    .end local v9    # "isRtlChar":Z
    .local v3, "offset":I
    :goto_67
    iget-object v8, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v3, v1}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result v1

    return v1
.end method

.method protected isAtRtlRun(Landroid/text/Layout;I)Z
    .registers 8
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 8127
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 8128
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result v0

    .line 8130
    .local v0, "transformedOffset":I
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    if-ge v3, v4, :cond_27

    const/4 v3, 0x1

    goto :goto_28

    :cond_27
    move v3, v1

    :goto_28
    if-ne v2, v3, :cond_2c

    .line 8131
    move v1, v0

    goto :goto_32

    :cond_2c
    add-int/lit8 v2, v0, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 8132
    .local v1, "offsetToCheck":I
    :goto_32
    invoke-virtual {p1, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v2

    return v2
.end method

.method protected isScreenOut(IZ)Z
    .registers 8
    .param p1, "x"    # I
    .param p2, "atRtl"    # Z

    .line 8192
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 8193
    .local v0, "displayWidth":I
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 8197
    .local v1, "iconSize":I
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-ne v2, p2, :cond_20

    .line 8198
    move v2, p1

    .line 8199
    .local v2, "startX":I
    add-int v3, p1, v1

    .local v3, "endX":I
    goto :goto_23

    .line 8201
    .end local v2    # "startX":I
    .end local v3    # "endX":I
    :cond_20
    sub-int v2, p1, v1

    .line 8202
    .restart local v2    # "startX":I
    move v3, p1

    .line 8205
    .restart local v3    # "endX":I
    :goto_23
    if-ltz v2, :cond_2e

    if-ltz v3, :cond_2e

    if-gt v2, v0, :cond_2e

    if-le v3, v0, :cond_2c

    goto :goto_2e

    .line 8209
    :cond_2c
    const/4 v4, 0x0

    return v4

    .line 8206
    :cond_2e
    :goto_2e
    const/4 v4, 0x1

    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8037
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->isFromPrimePointer(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 8038
    return v1

    .line 8040
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 8042
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_24

    :pswitch_19
    goto :goto_23

    .line 8053
    :pswitch_1a
    goto :goto_23

    .line 8046
    :pswitch_1b
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 8047
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 8049
    nop

    .line 8061
    :goto_23
    return v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZZ)V
    .registers 5
    .param p1, "offset"    # I
    .param p2, "forceUpdatePosition"    # Z
    .param p3, "fromTouchScreen"    # Z

    .line 8031
    invoke-super {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 8032
    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetWordIteratorWithText(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 8033
    return-void
.end method

.method protected updatePosition(FFZ)V
    .registers 35
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "fromTouchScreen"    # Z

    .line 7805
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 7806
    .local v3, "selectionStart":I
    iget-object v4, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 7807
    .local v4, "selectionEnd":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-ge v3, v4, :cond_22

    const/4 v8, 0x1

    goto :goto_23

    :cond_22
    const/4 v8, 0x0

    :goto_23
    if-ne v5, v8, :cond_27

    const/4 v5, 0x1

    goto :goto_28

    :cond_27
    const/4 v5, 0x0

    .line 7809
    .local v5, "isTwoWayStartHandle":Z
    :goto_28
    iget v8, v0, Landroid/widget/Editor$SelectionHandleView;->mLastParentYOnScreen:I

    int-to-float v8, v8

    sub-float v8, p2, v8

    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mFirstParentY:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 7810
    .local v8, "inWindowY":F
    iget-object v9, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    .line 7811
    .local v9, "layout":Landroid/text/Layout;
    if-nez v9, :cond_4b

    .line 7814
    iget-object v6, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v1, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v6

    invoke-direct {v0, v6, v2}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 7816
    return-void

    .line 7819
    :cond_4b
    iget v10, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_5c

    .line 7820
    iget-object v10, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v10

    iput v10, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    .line 7823
    :cond_5c
    const/4 v10, 0x0

    .line 7830
    .local v10, "positionCursor":Z
    iget-object v12, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget v13, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    invoke-virtual {v12, v9, v13, v8}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v12

    .line 7831
    .local v12, "currLine":I
    invoke-virtual {v0, v9, v12, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v13

    .line 7843
    .local v13, "initialOffset":I
    invoke-virtual {v0, v9, v12, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v14

    .line 7844
    .local v14, "offset":I
    iget-object v15, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15, v14}, Landroid/widget/Editor;->-$$Nest$mgetWordEnd(Landroid/widget/Editor;I)I

    move-result v15

    .line 7845
    .local v15, "wordEnd":I
    iget-object v11, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11, v14}, Landroid/widget/Editor;->-$$Nest$mgetWordStart(Landroid/widget/Editor;I)I

    move-result v11

    .line 7847
    .local v11, "wordStart":I
    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    const/high16 v18, -0x40800000    # -1.0f

    cmpl-float v6, v6, v18

    if-nez v6, :cond_83

    .line 7848
    iput v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 7851
    :cond_83
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v6

    .line 7852
    .local v6, "currentOffset":I
    invoke-virtual {v0, v9, v6}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v18

    .line 7853
    .local v18, "rtlAtCurrentOffset":Z
    invoke-virtual {v0, v9, v14}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v7

    .line 7854
    .local v7, "atRtl":Z
    move/from16 v19, v3

    .end local v3    # "selectionStart":I
    .local v19, "selectionStart":I
    iget-object v3, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    .line 7855
    move/from16 v20, v4

    const/4 v4, 0x1

    .end local v4    # "selectionEnd":I
    .local v20, "selectionEnd":I
    invoke-virtual {v3, v14, v4}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v3

    .line 7854
    invoke-virtual {v9, v3}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v3

    .line 7860
    .local v3, "isLvlBoundary":Z
    if-nez v3, :cond_2f1

    if-eqz v18, :cond_b1

    if-eqz v7, :cond_a9

    goto :goto_b1

    :cond_a9
    :goto_a9
    move/from16 v22, v3

    move/from16 v25, v8

    move/from16 v26, v10

    goto/16 :goto_2f7

    :cond_b1
    :goto_b1
    if-nez v18, :cond_b6

    if-eqz v7, :cond_b6

    goto :goto_a9

    .line 7869
    :cond_b6
    iget-boolean v4, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    if-eqz v4, :cond_c4

    .line 7872
    invoke-direct {v0, v14, v2}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 7873
    const/4 v4, 0x0

    iput v4, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 7874
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 7875
    return-void

    .line 7879
    :cond_c4
    const/4 v4, 0x0

    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    sub-float v4, v1, v4

    .line 7881
    .local v4, "xDiff":F
    if-eqz v5, :cond_d5

    .line 7882
    move/from16 v22, v3

    .end local v3    # "isLvlBoundary":Z
    .local v22, "isLvlBoundary":Z
    iget v3, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    if-ge v12, v3, :cond_d3

    const/4 v3, 0x1

    goto :goto_d4

    :cond_d3
    const/4 v3, 0x0

    .local v3, "isExpanding":Z
    :goto_d4
    goto :goto_de

    .line 7884
    .end local v22    # "isLvlBoundary":Z
    .local v3, "isLvlBoundary":Z
    :cond_d5
    move/from16 v22, v3

    .end local v3    # "isLvlBoundary":Z
    .restart local v22    # "isLvlBoundary":Z
    iget v3, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    if-le v12, v3, :cond_dd

    const/4 v3, 0x1

    goto :goto_de

    :cond_dd
    const/4 v3, 0x0

    .line 7887
    .local v3, "isExpanding":Z
    :goto_de
    if-ne v7, v5, :cond_ee

    .line 7888
    const/16 v21, 0x0

    cmpl-float v23, v4, v21

    if-lez v23, :cond_e9

    const/16 v23, 0x1

    goto :goto_eb

    :cond_e9
    const/16 v23, 0x0

    :goto_eb
    or-int v3, v3, v23

    goto :goto_fb

    .line 7890
    :cond_ee
    const/16 v21, 0x0

    cmpg-float v23, v4, v21

    if-gez v23, :cond_f7

    const/16 v23, 0x1

    goto :goto_f9

    :cond_f7
    const/16 v23, 0x0

    :goto_f9
    or-int v3, v3, v23

    .line 7894
    :goto_fb
    invoke-virtual {v9, v12}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v23

    .line 7895
    .local v23, "currentLineBottom":I
    move/from16 v24, v4

    .end local v4    # "xDiff":F
    .local v24, "xDiff":F
    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    invoke-virtual {v9, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    .line 7896
    .local v4, "previousLineBottom":I
    move/from16 v25, v8

    .end local v8    # "inWindowY":F
    .local v25, "inWindowY":F
    iget-object v8, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    move/from16 v26, v10

    const/4 v10, 0x1

    .end local v10    # "positionCursor":Z
    .local v26, "positionCursor":Z
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v8

    iget-object v10, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    .line 7897
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v10

    add-int/2addr v8, v10

    .line 7898
    .local v8, "verticalOffset":I
    sub-int v10, v23, v4

    sub-int/2addr v10, v8

    .line 7900
    .local v10, "diff":I
    move/from16 v27, v4

    .end local v4    # "previousLineBottom":I
    .local v27, "previousLineBottom":I
    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchToWindowOffsetX:F

    add-float/2addr v4, v1

    move/from16 v28, v8

    .end local v8    # "verticalOffset":I
    .local v28, "verticalOffset":I
    iget v8, v0, Landroid/widget/Editor$SelectionHandleView;->mHotspotX:I

    int-to-float v8, v8

    sub-float/2addr v4, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontalOffset()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v4, v8

    iget v8, v0, Landroid/widget/Editor$SelectionHandleView;->mHorizontalOffset:F

    sub-float/2addr v4, v8

    iget v8, v0, Landroid/widget/Editor$SelectionHandleView;->mLastParentXOnScreen:I

    int-to-float v8, v8

    add-float/2addr v4, v8

    iget v8, v0, Landroid/widget/Editor$SelectionHandleView;->mLastParentX:I

    int-to-float v8, v8

    sub-float/2addr v4, v8

    float-to-int v4, v4

    .line 7904
    .local v4, "x_":I
    iget-boolean v8, v0, Landroid/widget/Editor$SelectionHandleView;->mIsVerticalScrolled:Z

    if-eqz v8, :cond_14a

    .line 7905
    sub-int v8, v23, v10

    move/from16 v29, v10

    .local v8, "y_":I
    goto :goto_15b

    .line 7907
    .end local v8    # "y_":I
    :cond_14a
    iget v8, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchToWindowOffsetY:F

    add-float v8, p2, v8

    move/from16 v29, v10

    .end local v10    # "diff":I
    .local v29, "diff":I
    iget v10, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchOffsetY:F

    sub-float/2addr v8, v10

    iget v10, v0, Landroid/widget/Editor$SelectionHandleView;->mVerticalScrolledYOffset:I

    int-to-float v10, v10

    sub-float/2addr v8, v10

    iget v10, v0, Landroid/widget/Editor$SelectionHandleView;->mVerticalOffset:F

    sub-float/2addr v8, v10

    float-to-int v8, v8

    .line 7911
    .restart local v8    # "y_":I
    :goto_15b
    invoke-virtual {v0, v4, v8}, Landroid/widget/Editor$SelectionHandleView;->updatePositionDuringDragging(II)V

    .line 7914
    iget-object v10, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v10

    if-eqz v10, :cond_1d0

    .line 7915
    invoke-direct {v0, v1, v7}, Landroid/widget/Editor$SelectionHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v10

    if-eqz v10, :cond_1cd

    .line 7916
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_186

    iget-object v10, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getScrollX()I

    move-result v10

    if-nez v10, :cond_183

    goto :goto_186

    :cond_183
    move/from16 v16, v4

    goto :goto_19f

    .line 7917
    :cond_186
    :goto_186
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-nez v10, :cond_1ca

    iget-object v10, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    .line 7918
    move/from16 v16, v4

    if-eqz v7, :cond_198

    const/4 v4, -0x1

    goto :goto_199

    :cond_198
    const/4 v4, 0x1

    .end local v4    # "x_":I
    .local v16, "x_":I
    :goto_199
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_1d2

    .line 7925
    :goto_19f
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v4

    if-eqz v4, :cond_1a7

    if-lt v14, v6, :cond_1af

    .line 7926
    :cond_1a7
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v4

    if-nez v4, :cond_1d2

    if-le v14, v6, :cond_1d2

    .line 7931
    :cond_1af
    const/4 v4, 0x0

    iput v4, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 7932
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v4

    if-ne v7, v4, :cond_1bf

    .line 7933
    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {v9, v4}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v4

    goto :goto_1c5

    .line 7934
    :cond_1bf
    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {v9, v4}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v4

    :goto_1c5
    nop

    .line 7935
    .local v4, "nextOffset":I
    invoke-direct {v0, v4, v2}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 7936
    return-void

    .line 7917
    .end local v16    # "x_":I
    .local v4, "x_":I
    :cond_1ca
    move/from16 v16, v4

    .end local v4    # "x_":I
    .restart local v16    # "x_":I
    goto :goto_1d2

    .line 7915
    .end local v16    # "x_":I
    .restart local v4    # "x_":I
    :cond_1cd
    move/from16 v16, v4

    .end local v4    # "x_":I
    .restart local v16    # "x_":I
    goto :goto_1d2

    .line 7914
    .end local v16    # "x_":I
    .restart local v4    # "x_":I
    :cond_1d0
    move/from16 v16, v4

    .line 7940
    .end local v4    # "x_":I
    .restart local v16    # "x_":I
    :cond_1d2
    :goto_1d2
    if-eqz v3, :cond_265

    .line 7943
    if-eqz v5, :cond_1d8

    move v4, v11

    goto :goto_1d9

    :cond_1d8
    move v4, v15

    .line 7944
    .local v4, "wordBoundary":I
    :goto_1d9
    iget-boolean v10, v0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    if-eqz v10, :cond_1e6

    iget v10, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-eqz v5, :cond_1e4

    if-ge v12, v10, :cond_1ef

    goto :goto_1e6

    :cond_1e4
    if-le v12, v10, :cond_1ef

    .line 7946
    :cond_1e6
    :goto_1e6
    invoke-virtual {v0, v9, v4}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v10

    if-ne v7, v10, :cond_1ef

    const/16 v17, 0x1

    goto :goto_1f1

    :cond_1ef
    const/16 v17, 0x0

    :goto_1f1
    move/from16 v10, v17

    .line 7947
    .local v10, "snapToWord":Z
    if-eqz v10, :cond_23f

    .line 7951
    move/from16 v30, v3

    .end local v3    # "isExpanding":Z
    .local v30, "isExpanding":Z
    invoke-virtual {v0, v9, v4}, Landroid/widget/Editor$SelectionHandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v3

    if-eq v3, v12, :cond_209

    .line 7953
    if-eqz v5, :cond_204

    .line 7954
    invoke-virtual {v9, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    goto :goto_208

    :cond_204
    invoke-virtual {v9, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    :goto_208
    move v4, v3

    .line 7957
    :cond_209
    if-eqz v5, :cond_212

    .line 7958
    sub-int v3, v15, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v15, v3

    goto :goto_217

    .line 7959
    :cond_212
    sub-int v3, v4, v11

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v11

    :goto_217
    nop

    .line 7961
    .local v3, "offsetThresholdToSnap":I
    if-eqz v5, :cond_22a

    if-le v14, v3, :cond_223

    move/from16 v17, v4

    .end local v4    # "wordBoundary":I
    .local v17, "wordBoundary":I
    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v12, v4, :cond_22c

    goto :goto_225

    .end local v17    # "wordBoundary":I
    .restart local v4    # "wordBoundary":I
    :cond_223
    move/from16 v17, v4

    .line 7965
    .end local v4    # "wordBoundary":I
    .restart local v17    # "wordBoundary":I
    :goto_225
    move v4, v11

    move v14, v4

    move/from16 v4, v17

    .end local v14    # "offset":I
    .local v4, "offset":I
    goto :goto_241

    .line 7961
    .end local v17    # "wordBoundary":I
    .local v4, "wordBoundary":I
    .restart local v14    # "offset":I
    :cond_22a
    move/from16 v17, v4

    .line 7967
    .end local v4    # "wordBoundary":I
    .restart local v17    # "wordBoundary":I
    :cond_22c
    if-nez v5, :cond_239

    if-ge v14, v3, :cond_234

    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v12, v4, :cond_239

    .line 7971
    :cond_234
    move v4, v15

    move v14, v4

    move/from16 v4, v17

    .end local v14    # "offset":I
    .local v4, "offset":I
    goto :goto_241

    .line 7973
    .end local v4    # "offset":I
    .restart local v14    # "offset":I
    :cond_239
    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move v14, v4

    move/from16 v4, v17

    .end local v14    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_241

    .line 7947
    .end local v17    # "wordBoundary":I
    .end local v30    # "isExpanding":Z
    .local v3, "isExpanding":Z
    .local v4, "wordBoundary":I
    .restart local v14    # "offset":I
    :cond_23f
    move/from16 v30, v3

    .line 7977
    .end local v3    # "isExpanding":Z
    .restart local v30    # "isExpanding":Z
    :goto_241
    if-eqz v5, :cond_245

    if-lt v14, v13, :cond_249

    :cond_245
    if-nez v5, :cond_25d

    if-le v14, v13, :cond_25d

    .line 7979
    :cond_249
    invoke-virtual {v0, v9, v14}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v3

    .line 7980
    .local v3, "adjustedX":F
    move/from16 v17, v4

    .end local v4    # "wordBoundary":I
    .restart local v17    # "wordBoundary":I
    iget-object v4, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    .line 7981
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v4

    sub-float/2addr v4, v3

    iput v4, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 7982
    .end local v3    # "adjustedX":F
    goto :goto_262

    .line 7977
    .end local v17    # "wordBoundary":I
    .restart local v4    # "wordBoundary":I
    :cond_25d
    move/from16 v17, v4

    .line 7983
    .end local v4    # "wordBoundary":I
    .restart local v17    # "wordBoundary":I
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 7985
    :goto_262
    const/4 v10, 0x1

    .line 7986
    .end local v17    # "wordBoundary":I
    .end local v26    # "positionCursor":Z
    .local v10, "positionCursor":Z
    goto/16 :goto_2e7

    .line 7987
    .end local v10    # "positionCursor":Z
    .end local v30    # "isExpanding":Z
    .local v3, "isExpanding":Z
    .restart local v26    # "positionCursor":Z
    :cond_265
    move/from16 v30, v3

    .end local v3    # "isExpanding":Z
    .restart local v30    # "isExpanding":Z
    iget v3, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    sub-float v3, v1, v3

    .line 7988
    invoke-virtual {v0, v9, v12, v3}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v3

    .line 7990
    .local v3, "adjustedOffset":I
    if-eqz v5, :cond_280

    .line 7991
    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-gt v3, v4, :cond_27d

    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v12, v4, :cond_27a

    goto :goto_27d

    :cond_27a
    const/16 v17, 0x0

    goto :goto_28e

    :cond_27d
    :goto_27d
    const/16 v17, 0x1

    goto :goto_28e

    .line 7992
    :cond_280
    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-lt v3, v4, :cond_28c

    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v12, v4, :cond_289

    goto :goto_28c

    :cond_289
    const/16 v17, 0x0

    goto :goto_28e

    :cond_28c
    :goto_28c
    const/16 v17, 0x1

    :goto_28e
    move/from16 v4, v17

    .line 7993
    .local v4, "shrinking":Z
    if-eqz v4, :cond_2c4

    .line 7995
    iget v10, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-eq v12, v10, :cond_2be

    .line 7998
    if-eqz v5, :cond_29a

    move v10, v11

    goto :goto_29b

    :cond_29a
    move v10, v15

    .line 7999
    .end local v14    # "offset":I
    .local v10, "offset":I
    :goto_29b
    if-eqz v5, :cond_29f

    if-lt v10, v13, :cond_2a3

    :cond_29f
    if-nez v5, :cond_2b7

    if-le v10, v13, :cond_2b7

    .line 8001
    :cond_2a3
    invoke-virtual {v0, v9, v10}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v14

    .line 8002
    .local v14, "adjustedX":F
    move/from16 v17, v4

    .end local v4    # "shrinking":Z
    .local v17, "shrinking":Z
    iget-object v4, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    .line 8003
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v4

    sub-float/2addr v4, v14

    iput v4, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 8004
    .end local v14    # "adjustedX":F
    goto :goto_2bc

    .line 7999
    .end local v17    # "shrinking":Z
    .restart local v4    # "shrinking":Z
    :cond_2b7
    move/from16 v17, v4

    .line 8005
    .end local v4    # "shrinking":Z
    .restart local v17    # "shrinking":Z
    const/4 v4, 0x0

    iput v4, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 8010
    :goto_2bc
    move v14, v10

    goto :goto_2c2

    .line 8008
    .end local v10    # "offset":I
    .end local v17    # "shrinking":Z
    .restart local v4    # "shrinking":Z
    .local v14, "offset":I
    :cond_2be
    move/from16 v17, v4

    .end local v4    # "shrinking":Z
    .restart local v17    # "shrinking":Z
    move v4, v3

    move v14, v4

    .line 8010
    :goto_2c2
    const/4 v10, 0x1

    .end local v26    # "positionCursor":Z
    .local v10, "positionCursor":Z
    goto :goto_2e7

    .line 8012
    .end local v10    # "positionCursor":Z
    .end local v17    # "shrinking":Z
    .restart local v4    # "shrinking":Z
    .restart local v26    # "positionCursor":Z
    :cond_2c4
    move/from16 v17, v4

    .end local v4    # "shrinking":Z
    .restart local v17    # "shrinking":Z
    if-eqz v5, :cond_2cc

    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-lt v3, v4, :cond_2d2

    :cond_2cc
    if-nez v5, :cond_2e5

    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-le v3, v4, :cond_2e5

    .line 8016
    :cond_2d2
    iget-object v4, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v4

    iget v10, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    .line 8017
    invoke-virtual {v0, v9, v10}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v10

    sub-float/2addr v4, v10

    iput v4, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 8021
    .end local v3    # "adjustedOffset":I
    .end local v17    # "shrinking":Z
    :cond_2e5
    move/from16 v10, v26

    .end local v26    # "positionCursor":Z
    .restart local v10    # "positionCursor":Z
    :goto_2e7
    if-eqz v10, :cond_2ee

    .line 8022
    iput v12, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    .line 8023
    invoke-direct {v0, v14, v2}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 8025
    :cond_2ee
    iput v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 8026
    return-void

    .line 7860
    .end local v16    # "x_":I
    .end local v22    # "isLvlBoundary":Z
    .end local v23    # "currentLineBottom":I
    .end local v24    # "xDiff":F
    .end local v25    # "inWindowY":F
    .end local v27    # "previousLineBottom":I
    .end local v28    # "verticalOffset":I
    .end local v29    # "diff":I
    .end local v30    # "isExpanding":Z
    .local v3, "isLvlBoundary":Z
    .local v8, "inWindowY":F
    :cond_2f1
    move/from16 v22, v3

    move/from16 v25, v8

    move/from16 v26, v10

    .line 7863
    .end local v3    # "isLvlBoundary":Z
    .end local v8    # "inWindowY":F
    .end local v10    # "positionCursor":Z
    .restart local v22    # "isLvlBoundary":Z
    .restart local v25    # "inWindowY":F
    .restart local v26    # "positionCursor":Z
    :goto_2f7
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 7864
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 7865
    invoke-direct {v0, v14, v2}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 7866
    return-void
.end method

.method protected updateSelection(I)V
    .registers 4
    .param p1, "offset"    # I

    .line 7781
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 7785
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 7786
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 7785
    invoke-static {v0, p1, v1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    goto :goto_39

    .line 7792
    :cond_20
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 7793
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7792
    invoke-static {v0, v1, p1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 7796
    :goto_39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionHandleView;->updateDrawable(Z)V

    .line 7797
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 7798
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$minvalidateActionMode(Landroid/widget/Editor;)V

    .line 7800
    :cond_4a
    return-void
.end method
