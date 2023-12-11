.class public Landroid/widget/DropDownListView;
.super Landroid/widget/ListView;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DropDownListView$ResolveHoverRunnable;
    }
.end annotation


# instance fields
.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field mIsAutoCompleteTextPopup:Z

.field private mListSelectionHidden:Z

.field private mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

.field private mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;


# direct methods
.method static bridge synthetic -$$Nest$fputmResolveHoverRunnable(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .line 96
    const v0, 0x101006d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DropDownListView;-><init>(Landroid/content/Context;ZI)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z
    .param p3, "defStyleAttr"    # I

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DropDownListView;->mIsAutoCompleteTextPopup:Z

    .line 106
    iput-boolean p2, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    .line 108
    invoke-virtual {p0, v0}, Landroid/widget/DropDownListView;->setCacheColorHint(I)V

    .line 109
    return-void
.end method

.method private clearPressedItem()V
    .registers 4

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 269
    invoke-virtual {p0, v0}, Landroid/widget/DropDownListView;->setPressed(Z)V

    .line 270
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->updateSelectorState()V

    .line 272
    iget v1, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/DropDownListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 273
    .local v1, "motionView":Landroid/view/View;
    if-eqz v1, :cond_17

    .line 274
    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 276
    :cond_17
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 282
    invoke-virtual {p0, p3, p4}, Landroid/widget/DropDownListView;->drawableHotspotChanged(FF)V

    .line 283
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_f

    .line 284
    invoke-virtual {p0, v0}, Landroid/widget/DropDownListView;->setPressed(Z)V

    .line 288
    :cond_f
    iget-boolean v1, p0, Landroid/widget/DropDownListView;->mDataChanged:Z

    if-eqz v1, :cond_16

    .line 289
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->layoutChildren()V

    .line 294
    :cond_16
    iget v1, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/DropDownListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 295
    .local v1, "motionView":Landroid/view/View;
    if-eqz v1, :cond_2d

    if-eq v1, p1, :cond_2d

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 296
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 298
    :cond_2d
    iput p2, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    .line 302
    .local v2, "childX":F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p4, v3

    .line 303
    .local v3, "childY":F
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-nez v4, :cond_49

    .line 305
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 309
    :cond_49
    invoke-virtual {p0, p2}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    .line 310
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/widget/DropDownListView;->positionSelectorLikeTouch(ILandroid/view/View;FF)V

    .line 314
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->refreshDrawableState()V

    .line 315
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v0, :cond_7

    .line 184
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 186
    :cond_7
    return-void
.end method

.method public hasFocus()Z
    .registers 2

    .line 373
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public hasWindowFocus()Z
    .registers 2

    .line 353
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isFocused()Z
    .registers 2

    .line 363
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isInTouchMode()Z
    .registers 2

    .line 343
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_e

    :cond_8
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .line 331
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_f

    .line 334
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 337
    :cond_f
    return-object v0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .line 195
    const/4 v0, 0x1

    .line 196
    .local v0, "handledEvent":Z
    const/4 v1, 0x0

    .line 198
    .local v1, "clearPressedItem":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 199
    .local v2, "actionMasked":I
    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_6e

    goto :goto_45

    .line 201
    :pswitch_b
    const/4 v0, 0x0

    .line 202
    goto :goto_45

    .line 204
    :pswitch_d
    const/4 v0, 0x0

    .line 207
    :pswitch_e
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 208
    .local v4, "activeIndex":I
    if-gez v4, :cond_16

    .line 209
    const/4 v0, 0x0

    .line 210
    goto :goto_45

    .line 213
    :cond_16
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    .line 214
    .local v5, "x":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    .line 216
    .local v6, "y":I
    if-gez v6, :cond_23

    .line 217
    goto :goto_45

    .line 220
    :cond_23
    invoke-virtual {p0, v5, v6}, Landroid/widget/DropDownListView;->pointToPosition(II)I

    move-result v7

    .line 221
    .local v7, "position":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2c

    .line 222
    const/4 v1, 0x1

    .line 223
    goto :goto_45

    .line 226
    :cond_2c
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {p0, v8}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 227
    .local v8, "child":Landroid/view/View;
    int-to-float v9, v5

    int-to-float v10, v6

    invoke-direct {p0, v8, v7, v9, v10}, Landroid/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    .line 228
    const/4 v0, 0x1

    .line 230
    if-ne v2, v3, :cond_45

    .line 231
    invoke-virtual {p0, v7}, Landroid/widget/DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v9

    .line 232
    .local v9, "id":J
    invoke-virtual {p0, v8, v7, v9, v10}, Landroid/widget/DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 238
    .end local v4    # "activeIndex":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "position":I
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "id":J
    :cond_45
    :goto_45
    if-eqz v0, :cond_49

    if-eqz v1, :cond_4c

    .line 239
    :cond_49
    invoke-direct {p0}, Landroid/widget/DropDownListView;->clearPressedItem()V

    .line 243
    :cond_4c
    if-eqz v0, :cond_64

    .line 244
    iget-object v4, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-nez v4, :cond_59

    .line 245
    new-instance v4, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    .line 247
    :cond_59
    iget-object v4, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    .line 248
    iget-object v3, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v3, p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_6c

    .line 249
    :cond_64
    iget-object v3, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-eqz v3, :cond_6c

    .line 250
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    .line 253
    :cond_6c
    :goto_6c
    return v0

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 129
    .local v0, "action":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_17

    iget-object v1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v1, :cond_17

    .line 132
    new-instance v1, Landroid/widget/DropDownListView$ResolveHoverRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable-IA;)V

    iput-object v1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    .line 133
    invoke-virtual {v1}, Landroid/widget/DropDownListView$ResolveHoverRunnable;->post()V

    .line 137
    :cond_17
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 139
    .local v1, "handled":Z
    const/16 v2, 0x9

    const/4 v3, -0x1

    if-eq v0, v2, :cond_31

    const/4 v2, 0x7

    if-ne v0, v2, :cond_24

    goto :goto_31

    .line 172
    :cond_24
    invoke-super {p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v2

    if-nez v2, :cond_82

    .line 173
    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    .line 174
    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->setNextSelectedPositionInt(I)V

    goto :goto_82

    .line 141
    :cond_31
    :goto_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v2, v4}, Landroid/widget/DropDownListView;->pointToPosition(II)I

    move-result v2

    .line 142
    .local v2, "position":I
    if-eq v2, v3, :cond_81

    iget v3, p0, Landroid/widget/DropDownListView;->mSelectedPosition:I

    if-eq v2, v3, :cond_81

    .line 143
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 144
    .local v3, "hoveredItem":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 147
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->requestFocus()Z

    .line 150
    const/4 v4, 0x0

    .line 151
    .local v4, "talkbackEnabled":Z
    iget-object v5, p0, Landroid/widget/DropDownListView;->mContext:Landroid/content/Context;

    .line 152
    const-string v6, "accessibility"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    .line 153
    .local v5, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v5, :cond_69

    .line 154
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result v4

    .line 157
    :cond_69
    if-nez v4, :cond_7e

    .line 158
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->isHovered()Z

    move-result v6

    if-nez v6, :cond_75

    .line 159
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/widget/DropDownListView;->setHovered(Z)V

    .line 161
    :cond_75
    invoke-virtual {p0, v2, v3}, Landroid/widget/DropDownListView;->positionSelector(ILandroid/view/View;)V

    .line 162
    invoke-virtual {p0, v2}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    .line 163
    invoke-virtual {p0, v2}, Landroid/widget/DropDownListView;->setNextSelectedPositionInt(I)V

    .line 167
    .end local v4    # "talkbackEnabled":Z
    .end local v5    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_7e
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->updateSelectorState()V

    .line 169
    .end local v2    # "position":I
    .end local v3    # "hoveredItem":Landroid/view/View;
    :cond_81
    nop

    .line 178
    :cond_82
    :goto_82
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 118
    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-eqz v0, :cond_7

    .line 120
    invoke-virtual {v0}, Landroid/widget/DropDownListView$ResolveHoverRunnable;->cancel()V

    .line 123
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListSelectionHidden(Z)V
    .registers 2
    .param p1, "hideListSelection"    # Z

    .line 264
    iput-boolean p1, p0, Landroid/widget/DropDownListView;->mListSelectionHidden:Z

    .line 265
    return-void
.end method

.method shouldShowSelector()Z
    .registers 2

    .line 113
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->isHovered()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method touchModeDrawsInPressedState()Z
    .registers 2

    .line 319
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method
