.class public Landroid/text/method/ArrowKeyMovementMethod;
.super Landroid/text/method/BaseMovementMethod;
.source "ArrowKeyMovementMethod.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# static fields
.field private static final LAST_TAP_DOWN:Ljava/lang/Object;

.field private static sInstance:Landroid/text/method/ArrowKeyMovementMethod;


# instance fields
.field private mIsSpanSet:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 398
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/text/method/BaseMovementMethod;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/method/ArrowKeyMovementMethod;->mIsSpanSet:Z

    return-void
.end method

.method private static getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I
    .registers 3
    .param p0, "buffer"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 44
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .registers 1

    .line 391
    sget-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    if-nez v0, :cond_b

    .line 392
    new-instance v0, Landroid/text/method/ArrowKeyMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    .line 395
    :cond_b
    sget-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    return-object v0
.end method

.method private static getPageHeight(Landroid/widget/TextView;)I
    .registers 3
    .param p0, "widget"    # Landroid/widget/TextView;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 52
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private static isSelecting(Landroid/text/Spannable;)Z
    .registers 3
    .param p0, "buffer"    # Landroid/text/Spannable;

    .line 39
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    if-eq v1, v0, :cond_12

    .line 40
    const/16 v1, 0x800

    invoke-static {p0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    nop

    .line 39
    :goto_13
    return v0
.end method


# virtual methods
.method protected bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 191
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 192
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_15

    .line 194
    :cond_e
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 196
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public canSelectArbitrarily()Z
    .registers 2

    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 114
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 115
    const/4 v0, 0x0

    return v0

    .line 117
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 118
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 119
    invoke-static {p2, v0}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 121
    :cond_17
    invoke-static {p2, v0}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method protected end(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 250
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "movementMetaState"    # I
    .param p5, "event"    # Landroid/view/KeyEvent;

    .line 58
    packed-switch p3, :pswitch_data_28

    goto :goto_23

    .line 60
    :pswitch_4
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 61
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_23

    .line 62
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_23

    .line 63
    const/16 v0, 0x800

    invoke-static {p2, v0, p5}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v0

    if-eqz v0, :cond_23

    .line 65
    invoke-virtual {p1}, Landroid/widget/TextView;->showContextMenu()Z

    move-result v0

    return v0

    .line 70
    :cond_23
    :goto_23
    invoke-super/range {p0 .. p5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_data_28
    .packed-switch 0x17
        :pswitch_4
    .end packed-switch
.end method

.method protected home(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 245
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;

    .line 375
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 376
    return-void
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 75
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 76
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 79
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 80
    invoke-static {p2, v0}, Landroid/text/Selection;->extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 82
    :cond_17
    invoke-static {p2, v0}, Landroid/text/Selection;->moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method protected leftWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 6
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 228
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 229
    .local v0, "selectionEnd":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v1

    .line 230
    .local v1, "wordIterator":Landroid/text/method/WordIterator;
    invoke-virtual {v1, p2, v0, v0}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 231
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/text/Selection;->moveToPreceding(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z

    move-result v2

    return v2
.end method

.method protected lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 214
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 215
    const/4 v0, 0x0

    return v0

    .line 217
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 218
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 219
    invoke-static {p2, v0}, Landroid/text/Selection;->extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 221
    :cond_17
    invoke-static {p2, v0}, Landroid/text/Selection;->moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method protected lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 201
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 202
    const/4 v0, 0x0

    return v0

    .line 204
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 205
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 206
    invoke-static {p2, v0}, Landroid/text/Selection;->extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 208
    :cond_17
    invoke-static {p2, v0}, Landroid/text/Selection;->moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method public nextParagraph(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 268
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 269
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 272
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 273
    invoke-static {p2}, Landroid/text/Selection;->extendToParagraphEnd(Landroid/text/Spannable;)Z

    move-result v1

    return v1

    .line 275
    :cond_17
    invoke-static {p2, v0}, Landroid/text/Selection;->moveToParagraphEnd(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .registers 5
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "dir"    # I

    .line 380
    and-int/lit16 v0, p3, 0x82

    if-eqz v0, :cond_12

    .line 381
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_19

    .line 383
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_19

    .line 386
    :cond_12
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 388
    :cond_19
    :goto_19
    return-void
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 281
    const/4 v0, -0x1

    .line 282
    .local v0, "initialScrollX":I
    const/4 v1, -0x1

    .line 283
    .local v1, "initialScrollY":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 285
    .local v2, "action":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 286
    invoke-static {p1, p2}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v0

    .line 287
    invoke-static {p1, p2}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v1

    .line 290
    :cond_11
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v4

    .line 291
    .local v4, "wasTouchSelecting":Z
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v5

    .line 293
    .local v5, "handled":Z
    invoke-virtual {p1}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 294
    return v5

    .line 296
    :cond_20
    if-nez v2, :cond_53

    .line 298
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 299
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_35

    .line 300
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    move-result v6

    if-nez v6, :cond_35

    .line 301
    return v5

    .line 304
    :cond_35
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v6

    .line 305
    .local v6, "offset":I
    sget-object v7, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    const/16 v8, 0x22

    invoke-interface {p2, v7, v6, v6, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 307
    iput-boolean v3, p0, Landroid/text/method/ArrowKeyMovementMethod;->mIsSpanSet:Z

    .line 313
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 314
    .end local v6    # "offset":I
    goto/16 :goto_cf

    .line 315
    :cond_53
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 316
    const/4 v6, 0x2

    if-ne v2, v6, :cond_89

    .line 317
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v6

    if-eqz v6, :cond_cf

    if-eqz v5, :cond_cf

    iget-boolean v6, p0, Landroid/text/method/ArrowKeyMovementMethod;->mIsSpanSet:Z

    if-eqz v6, :cond_cf

    .line 319
    sget-object v6, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    invoke-interface {p2, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 326
    .local v6, "startOffset":I
    invoke-virtual {p1}, Landroid/widget/TextView;->cancelLongPress()V

    .line 331
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v7

    .line 332
    .local v7, "offset":I
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 333
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 332
    invoke-static {p2, v8, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 334
    return v3

    .line 336
    .end local v6    # "startOffset":I
    .end local v7    # "offset":I
    :cond_89
    if-ne v2, v3, :cond_cf

    .line 341
    if-ltz v1, :cond_93

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    if-ne v1, v6, :cond_9b

    :cond_93
    if-ltz v0, :cond_9f

    .line 342
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    if-eq v0, v6, :cond_9f

    .line 343
    :cond_9b
    invoke-virtual {p1}, Landroid/widget/TextView;->moveCursorToVisibleOffset()Z

    .line 344
    return v3

    .line 347
    :cond_9f
    if-eqz v4, :cond_c8

    iget-boolean v6, p0, Landroid/text/method/ArrowKeyMovementMethod;->mIsSpanSet:Z

    if-eqz v6, :cond_c8

    .line 349
    sget-object v6, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    invoke-interface {p2, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 350
    .local v7, "startOffset":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v8

    .line 351
    .local v8, "endOffset":I
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 352
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 351
    invoke-static {p2, v9, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 353
    invoke-interface {p2, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 355
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/text/method/ArrowKeyMovementMethod;->mIsSpanSet:Z

    .line 359
    .end local v7    # "startOffset":I
    .end local v8    # "endOffset":I
    :cond_c8
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 360
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    .line 362
    return v3

    .line 365
    :cond_cf
    :goto_cf
    return v5
.end method

.method protected pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 9
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 154
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 155
    const/4 v0, 0x0

    return v0

    .line 157
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 158
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    .line 159
    .local v1, "selecting":Z
    invoke-static {p2, v0}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    move-result v2

    invoke-static {p1}, Landroid/text/method/ArrowKeyMovementMethod;->getPageHeight(Landroid/widget/TextView;)I

    move-result v3

    add-int/2addr v2, v3

    .line 160
    .local v2, "targetY":I
    const/4 v3, 0x0

    .line 162
    .local v3, "handled":Z
    :goto_1a
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 163
    .local v4, "previousSelectionEnd":I
    if-eqz v1, :cond_24

    .line 164
    invoke-static {p2, v0}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_27

    .line 166
    :cond_24
    invoke-static {p2, v0}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 168
    :goto_27
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    if-ne v5, v4, :cond_2e

    .line 169
    goto :goto_36

    .line 171
    :cond_2e
    const/4 v3, 0x1

    .line 172
    invoke-static {p2, v0}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    move-result v5

    if-lt v5, v2, :cond_37

    .line 173
    nop

    .line 176
    .end local v4    # "previousSelectionEnd":I
    :goto_36
    return v3

    .line 175
    :cond_37
    goto :goto_1a
.end method

.method protected pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 9
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 127
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 128
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 131
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    .line 132
    .local v1, "selecting":Z
    invoke-static {p2, v0}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    move-result v2

    invoke-static {p1}, Landroid/text/method/ArrowKeyMovementMethod;->getPageHeight(Landroid/widget/TextView;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 133
    .local v2, "targetY":I
    const/4 v3, 0x0

    .line 135
    .local v3, "handled":Z
    :goto_1a
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 136
    .local v4, "previousSelectionEnd":I
    if-eqz v1, :cond_24

    .line 137
    invoke-static {p2, v0}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_27

    .line 139
    :cond_24
    invoke-static {p2, v0}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 141
    :goto_27
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    if-ne v5, v4, :cond_2e

    .line 142
    goto :goto_36

    .line 144
    :cond_2e
    const/4 v3, 0x1

    .line 145
    invoke-static {p2, v0}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    move-result v5

    if-gt v5, v2, :cond_37

    .line 146
    nop

    .line 149
    .end local v4    # "previousSelectionEnd":I
    :goto_36
    return v3

    .line 148
    :cond_37
    goto :goto_1a
.end method

.method public previousParagraph(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 255
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 256
    const/4 v0, 0x0

    return v0

    .line 258
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 259
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 260
    invoke-static {p2}, Landroid/text/Selection;->extendToParagraphStart(Landroid/text/Spannable;)Z

    move-result v1

    return v1

    .line 262
    :cond_17
    invoke-static {p2, v0}, Landroid/text/Selection;->moveToParagraphStart(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 88
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 89
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 92
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 93
    invoke-static {p2, v0}, Landroid/text/Selection;->extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 95
    :cond_17
    invoke-static {p2, v0}, Landroid/text/Selection;->moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method protected rightWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 6
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 237
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 238
    .local v0, "selectionEnd":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v1

    .line 239
    .local v1, "wordIterator":Landroid/text/method/WordIterator;
    invoke-virtual {v1, p2, v0, v0}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 240
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/text/Selection;->moveToFollowing(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z

    move-result v2

    return v2
.end method

.method protected top(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 181
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 182
    invoke-static {p2, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_e

    .line 184
    :cond_b
    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 186
    :goto_e
    const/4 v0, 0x1

    return v0
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 101
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 102
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 105
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 106
    invoke-static {p2, v0}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 108
    :cond_17
    invoke-static {p2, v0}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method
