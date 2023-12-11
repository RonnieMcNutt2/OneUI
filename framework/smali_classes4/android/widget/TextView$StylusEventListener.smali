.class Landroid/widget/TextView$StylusEventListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private mEndCurPosition:I

.field private mIsSelectableTextView:Z

.field private mMaxX:F

.field private mPressed:Z

.field private mStartCurPosition:I

.field private mStartX:F

.field private mStartY:F

.field private mThisView:Landroid/widget/TextView;

.field private oldEndPos:I

.field private selectRange:[I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEndCurPosition(Landroid/widget/TextView$StylusEventListener;)I
    .registers 1

    iget p0, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartCurPosition(Landroid/widget/TextView$StylusEventListener;)I
    .registers 1

    iget p0, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmEndCurPosition(Landroid/widget/TextView$StylusEventListener;I)V
    .registers 2

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartCurPosition(Landroid/widget/TextView$StylusEventListener;I)V
    .registers 2

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 3
    .param p2, "textView"    # Landroid/widget/TextView;

    .line 19265
    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19253
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 19254
    iput-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    .line 19255
    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 19256
    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 19257
    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 19258
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    .line 19260
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 19261
    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 19262
    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 19263
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    .line 19266
    iput-object p2, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    .line 19267
    return-void
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;)V
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 19270
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-nez v0, :cond_5

    .line 19271
    return-void

    .line 19274
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 19276
    .local v0, "action":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_476

    iget-object v2, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->-$$Nest$fgetmEnableMultiSelection(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_476

    .line 19280
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 19281
    .local v2, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 19283
    .local v3, "rawY":F
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-nez v0, :cond_101

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_101

    .line 19285
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmIsFindTargetView()Z

    move-result v6

    if-nez v6, :cond_82

    .line 19286
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    if-eq v6, v4, :cond_51

    .line 19287
    sget-boolean v6, Lcom/samsung/android/rune/ViewRune;->WIDGET_MULTIPLE_PEN_TEXT_SUPPORTED:Z

    if-nez v6, :cond_4e

    .line 19288
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->clearMultiSelection()Z

    .line 19290
    :cond_4e
    invoke-static {v4}, Landroid/widget/TextView;->-$$Nest$sfputmTargetViewId(I)V

    .line 19292
    :cond_51
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$mcanTextMultiSelection(Landroid/widget/TextView;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 19293
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/widget/TextView;->-$$Nest$sfputmCurTime(J)V

    .line 19294
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastHoveredViewId()I

    move-result v6

    if-eq v6, v4, :cond_7c

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide v6

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastHoveredTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x64

    cmp-long v6, v6, v8

    if-gez v6, :cond_7c

    .line 19295
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastHoveredViewId()I

    move-result v6

    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$sfputmTargetViewId(I)V

    .line 19298
    :cond_7c
    invoke-static {v4}, Landroid/widget/TextView;->-$$Nest$sfputmLastHoveredViewId(I)V

    .line 19299
    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$sfputmIsFindTargetView(Z)V

    .line 19301
    :cond_82
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    if-eq v6, v4, :cond_100

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    if-nez v4, :cond_8d

    goto :goto_100

    .line 19304
    :cond_8d
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v4

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    if-eq v4, v6, :cond_ab

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v4

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    if-eq v4, v6, :cond_ab

    .line 19305
    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 19306
    return-void

    .line 19309
    :cond_ab
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/widget/TextView;->-$$Nest$fgetmMarquee(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v4

    if-eqz v4, :cond_c0

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/widget/TextView;->-$$Nest$fgetmMarquee(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v4

    if-nez v4, :cond_c0

    .line 19310
    return-void

    .line 19312
    :cond_c0
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/EditText;

    if-eqz v4, :cond_f0

    .line 19313
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->hideCursorControllers()V

    .line 19314
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-static {v4, v6, v7, v1}, Landroid/widget/TextView;->-$$Nest$mcheckPosInView(Landroid/widget/TextView;III)Z

    move-result v4

    if-eqz v4, :cond_ef

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canSelectText()Z

    move-result v4

    if-nez v4, :cond_110

    .line 19315
    :cond_ef
    return-void

    .line 19318
    :cond_f0
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-static {v4}, Landroid/widget/TextView;->-$$Nest$fgetTOUCH_DELTA(Landroid/widget/TextView;)F

    move-result v8

    float-to-int v8, v8

    invoke-static {v4, v6, v7, v8}, Landroid/widget/TextView;->-$$Nest$mcheckPosOnText(Landroid/widget/TextView;III)Z

    move-result v4

    if-nez v4, :cond_110

    .line 19319
    return-void

    .line 19302
    :cond_100
    :goto_100
    return-void

    .line 19324
    :cond_101
    invoke-static {v1}, Landroid/widget/TextView;->-$$Nest$sfputmIsFindTargetView(Z)V

    .line 19325
    iget-boolean v6, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-eqz v6, :cond_475

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    if-ne v6, v4, :cond_110

    goto/16 :goto_475

    .line 19330
    :cond_110
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v4

    .line 19331
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11d

    return-void

    .line 19333
    :cond_11d
    const/4 v6, 0x0

    const-string v7, "TextView"

    sparse-switch v0, :sswitch_data_478

    goto/16 :goto_474

    .line 19574
    :sswitch_125
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v1, v6, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 19575
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 19577
    iget-boolean v6, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v6, :cond_149

    .line 19578
    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 19579
    move-object v6, v4

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    .line 19580
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object v7, v4

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v7

    if-lez v7, :cond_144

    move v1, v5

    :cond_144
    invoke-static {v6, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    goto/16 :goto_474

    .line 19582
    :cond_149
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    .line 19583
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz v1, :cond_474

    .line 19584
    move-object v5, v4

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_474

    .line 19398
    :sswitch_15a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_21a

    .line 19399
    sget-boolean v6, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-eqz v6, :cond_474

    .line 19400
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {v6, v7}, Landroid/widget/TextView;->-$$Nest$mgetScreenPointOfView(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v6

    .line 19401
    .local v6, "startPos":Landroid/graphics/Point;
    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float v7, v2, v7

    .line 19402
    .local v7, "endX":F
    iget v8, v6, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sub-float v8, v3, v8

    .line 19404
    .local v8, "endY":F
    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v10, v2

    float-to-int v11, v3

    invoke-static {v9, v10, v11, v1}, Landroid/widget/TextView;->-$$Nest$mcheckPosInView(Landroid/widget/TextView;III)Z

    move-result v9

    invoke-static {v9}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 19406
    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget v10, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_199

    .line 19407
    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 19410
    :cond_199
    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v9, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 19411
    iget-boolean v10, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v10, :cond_1b4

    .line 19412
    iget-object v11, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v1, v11, v1

    if-ge v9, v1, :cond_1ae

    .line 19413
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto :goto_1b4

    .line 19415
    :cond_1ae
    aget v1, v11, v5

    if-le v9, v1, :cond_1b4

    .line 19416
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 19420
    :cond_1b4
    :goto_1b4
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ne v1, v9, :cond_1c4

    .line 19421
    if-nez v10, :cond_474

    .line 19422
    move-object v1, v4

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    goto/16 :goto_474

    .line 19427
    :cond_1c4
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    if-eq v1, v9, :cond_218

    if-ltz v9, :cond_218

    .line 19428
    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 19429
    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v1, v5}, Landroid/widget/TextView;->-$$Nest$fputmHighlightPathBogus(Landroid/widget/TextView;Z)V

    .line 19430
    iget-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v1, :cond_201

    .line 19431
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v1, v9, :cond_1e3

    .line 19432
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 19434
    :cond_1e3
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v1, v9, :cond_1f1

    .line 19435
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 19437
    :cond_1f1
    move-object v1, v4

    check-cast v1, Landroid/text/Spannable;

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v10, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v1, v9, v10}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 19438
    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v1, v5}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    goto :goto_218

    .line 19440
    :cond_201
    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_20e

    .line 19441
    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 19443
    :cond_20e
    move-object v1, v4

    check-cast v1, Landroid/text/Spannable;

    iget v5, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v1, v5, v9}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 19446
    .end local v6    # "startPos":Landroid/graphics/Point;
    .end local v7    # "endX":F
    .end local v8    # "endY":F
    :cond_218
    :goto_218
    goto/16 :goto_474

    .line 19455
    :cond_21a
    :sswitch_21a
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {v8, v9}, Landroid/widget/TextView;->-$$Nest$mgetScreenPointOfView(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v8

    .line 19456
    .local v8, "startPos":Landroid/graphics/Point;
    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sub-float v9, v2, v9

    .line 19457
    .local v9, "endX":F
    iget v10, v8, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    sub-float v10, v3, v10

    .line 19459
    .local v10, "endY":F
    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_242

    .line 19460
    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iput v11, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 19462
    :cond_242
    iget-object v11, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v11, v9, v10}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v11

    iput v11, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 19463
    iget-boolean v12, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v12, :cond_25d

    .line 19464
    iget-object v12, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v13, v12, v1

    if-ge v11, v13, :cond_257

    .line 19465
    iput v13, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto :goto_25d

    .line 19466
    :cond_257
    aget v12, v12, v5

    if-le v11, v12, :cond_25d

    .line 19467
    iput v12, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 19471
    :cond_25d
    :goto_25d
    const/4 v11, 0x0

    .line 19472
    .local v11, "isSameLine":Z
    iget-object v12, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v12}, Landroid/widget/TextView;->-$$Nest$fgetmLayout(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v12

    if-eqz v12, :cond_27a

    .line 19473
    iget-object v12, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget v13, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v12

    iget-object v13, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v13

    if-ne v12, v13, :cond_278

    move v12, v5

    goto :goto_279

    :cond_278
    move v12, v1

    :goto_279
    move v11, v12

    .line 19476
    :cond_27a
    iget-boolean v12, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v12, :cond_2bc

    if-eqz v11, :cond_2bc

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget-object v13, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v13}, Landroid/widget/TextView;->-$$Nest$fgetTOUCH_DELTA(Landroid/widget/TextView;)F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2bc

    .line 19477
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v5

    if-eqz v5, :cond_29e

    .line 19478
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 19479
    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$sfputmShowPenSelectionRunnable(Ljava/lang/Runnable;)V

    .line 19481
    :cond_29e
    new-instance v5, Landroid/widget/TextView$StylusEventListener$1;

    invoke-direct {v5, p0}, Landroid/widget/TextView$StylusEventListener$1;-><init>(Landroid/widget/TextView$StylusEventListener;)V

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$sfputmShowPenSelectionRunnable(Ljava/lang/Runnable;)V

    .line 19511
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v12, v7

    invoke-virtual {v5, v6, v12, v13}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19513
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v1, v5, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 19514
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 19515
    goto/16 :goto_474

    .line 19518
    :cond_2bc
    invoke-static {v1}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 19519
    iget v6, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ne v6, v12, :cond_2ec

    .line 19520
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 19521
    iget-boolean v6, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v6, :cond_2e5

    .line 19522
    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 19523
    move-object v6, v4

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    .line 19524
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object v7, v4

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v7

    if-lez v7, :cond_2e0

    move v1, v5

    :cond_2e0
    invoke-static {v6, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    goto/16 :goto_474

    .line 19526
    :cond_2e5
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    .line 19528
    goto/16 :goto_474

    .line 19531
    :cond_2ec
    if-le v6, v12, :cond_2f4

    .line 19532
    iget v6, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 19533
    .local v6, "temp":I
    iput v12, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 19534
    iput v6, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 19536
    .end local v6    # "temp":I
    :cond_2f4
    iget-boolean v6, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v6, :cond_33b

    .line 19537
    move-object v6, v4

    check-cast v6, Landroid/text/Spannable;

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v13, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v6, v12, v13}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 19538
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$mshowMultiSelectPopupWindow(Landroid/widget/TextView;)V

    .line 19542
    :try_start_307
    new-instance v6, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    iget-object v12, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v6, v12}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;-><init>(Landroid/content/Context;)V

    .line 19543
    .local v6, "infoExtractionManager":Lcom/samsung/android/infoextraction/SemInfoExtractionManager;
    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v13, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-interface {v4, v12, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->training(Ljava/lang/String;)V
    :try_end_321
    .catch Ljava/lang/IllegalStateException; {:try_start_307 .. :try_end_321} :catch_322

    .line 19546
    .end local v6    # "infoExtractionManager":Lcom/samsung/android/infoextraction/SemInfoExtractionManager;
    goto :goto_328

    .line 19544
    :catch_322
    move-exception v6

    .line 19545
    .local v6, "ie":Ljava/lang/IllegalStateException;
    const-string v12, "** skip SemInfoExtractionManager Service by IllegalStateException **"

    invoke-static {v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19547
    .end local v6    # "ie":Ljava/lang/IllegalStateException;
    :goto_328
    const-string v6, "Pen up with side button! : end text selection"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19550
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->registerForTouchMonitorListener()V

    .line 19552
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v6, v5}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    .line 19553
    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    goto :goto_385

    .line 19554
    :cond_33b
    iget v5, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz v5, :cond_385

    iget v5, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ltz v5, :cond_385

    .line 19555
    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-eqz v5, :cond_385

    .line 19556
    move-object v5, v4

    check-cast v5, Landroid/text/Spannable;

    iget v6, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v7, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v5, v6, v7}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 19557
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    if-eqz v5, :cond_36c

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    iget-boolean v5, v5, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v5, :cond_36c

    .line 19558
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 19560
    :cond_36c
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    if-eqz v5, :cond_385

    .line 19561
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    .line 19562
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    iput-boolean v1, v5, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 19567
    :cond_385
    :goto_385
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v1, v5, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 19568
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 19569
    goto/16 :goto_474

    .line 19336
    .end local v8    # "startPos":Landroid/graphics/Point;
    .end local v9    # "endX":F
    .end local v10    # "endY":F
    .end local v11    # "isSameLine":Z
    :sswitch_38d
    iget-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-eqz v8, :cond_393

    goto/16 :goto_474

    .line 19338
    :cond_393
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/widget/TextView;->-$$Nest$mhideMultiSelectPopupWindow(Landroid/widget/TextView;)V

    .line 19339
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v8

    if-nez v8, :cond_3a9

    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    instance-of v8, v8, Landroid/widget/EditText;

    if-eqz v8, :cond_3a7

    goto :goto_3a9

    :cond_3a7
    move v8, v1

    goto :goto_3aa

    :cond_3a9
    :goto_3a9
    move v8, v5

    :goto_3aa
    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    .line 19341
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {v8, v9}, Landroid/widget/TextView;->-$$Nest$mgetScreenPointOfView(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v8

    .line 19342
    .restart local v8    # "startPos":Landroid/graphics/Point;
    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sub-float v9, v2, v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 19343
    iget v9, v8, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float v9, v3, v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 19344
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 19346
    iget-object v10, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    invoke-virtual {v10, v11, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 19347
    if-ltz v9, :cond_449

    .line 19348
    sget-boolean v9, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-eqz v9, :cond_43f

    iget-boolean v9, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v9, :cond_43f

    .line 19350
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide v9

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastPenDownTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v11

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_40b

    .line 19351
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v5

    if-eqz v5, :cond_3fd

    .line 19352
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 19353
    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$sfputmShowPenSelectionRunnable(Ljava/lang/Runnable;)V

    .line 19355
    :cond_3fd
    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 19356
    invoke-static {v1}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 19357
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/widget/TextView;->-$$Nest$sfputmLastPenDownTime(J)V

    .line 19358
    goto :goto_474

    .line 19361
    :cond_40b
    invoke-static {v5}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 19363
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->getVisibleTextRange([I)Z

    move-result v6

    .line 19364
    .local v6, "flag":Z
    if-nez v6, :cond_422

    .line 19365
    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aput v1, v9, v1

    .line 19366
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v10

    aput v10, v9, v5

    .line 19368
    :cond_422
    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget-object v10, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v11, v10, v1

    if-ge v9, v11, :cond_42d

    .line 19369
    iput v11, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    goto :goto_433

    .line 19371
    :cond_42d
    aget v10, v10, v5

    if-le v9, v10, :cond_433

    .line 19372
    iput v10, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 19375
    :cond_433
    :goto_433
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroid/widget/TextView;->-$$Nest$sfputmLastPenDownTime(J)V

    .line 19376
    const-string v9, "Pen down with side button! : start text selection"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19378
    .end local v6    # "flag":Z
    :cond_43f
    iget v6, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iput v6, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 19379
    iput-boolean v5, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 19380
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v5, v6, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 19382
    :cond_449
    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->WIDGET_MULTIPLE_PEN_TEXT_SUPPORTED:Z

    if-eqz v5, :cond_470

    .line 19383
    move-object v5, v4

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v5

    if-lez v5, :cond_470

    .line 19384
    move-object v5, v4

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    .line 19385
    .local v5, "oldStart":I
    move-object v6, v4

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    .line 19387
    .local v6, "oldEnd":I
    iget v7, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-lt v7, v5, :cond_46a

    if-le v7, v6, :cond_470

    .line 19388
    :cond_46a
    move-object v7, v4

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v5, v6}, Landroid/text/MultiSelection;->addMultiSelection(Landroid/text/Spannable;II)V

    .line 19393
    .end local v5    # "oldStart":I
    .end local v6    # "oldEnd":I
    :cond_470
    invoke-static {v1}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 19394
    nop

    .line 19589
    .end local v8    # "startPos":Landroid/graphics/Point;
    :cond_474
    :goto_474
    return-void

    .line 19326
    .end local v4    # "text":Ljava/lang/CharSequence;
    :cond_475
    :goto_475
    return-void

    .line 19277
    .end local v2    # "rawX":F
    .end local v3    # "rawY":F
    :cond_476
    :goto_476
    return-void

    nop

    :sswitch_data_478
    .sparse-switch
        0x0 -> :sswitch_38d
        0x1 -> :sswitch_21a
        0x2 -> :sswitch_15a
        0x3 -> :sswitch_125
        0xd6 -> :sswitch_125
    .end sparse-switch
.end method
