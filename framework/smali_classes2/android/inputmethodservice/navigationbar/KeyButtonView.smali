.class public Landroid/inputmethodservice/navigationbar/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"

# interfaces
.implements Landroid/inputmethodservice/navigationbar/ButtonInterface;


# static fields
.field public static final QUICKSTEP_TOUCH_SLOP_RATIO:F = 3.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCheckLongPress:Ljava/lang/Runnable;

.field private mCode:I

.field private mDarkIntensity:F

.field private mDownTime:J

.field private mGestureAborted:Z

.field private mHasOvalBg:Z

.field mLongClicked:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOvalBgPaint:Landroid/graphics/Paint;

.field private final mPlaySounds:Z

.field private final mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mTracking:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCode(Landroid/inputmethodservice/navigationbar/KeyButtonView;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$msendEvent(Landroid/inputmethodservice/navigationbar/KeyButtonView;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-class v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    .line 70
    new-instance v1, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonView;)V

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    .line 93
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_48

    .line 98
    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    goto :goto_23

    .line 95
    :pswitch_1f
    const/4 v1, 0x4

    iput v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    .line 96
    nop

    .line 102
    :goto_23
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mPlaySounds:Z

    .line 104
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setClickable(Z)V

    .line 105
    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    .line 107
    new-instance v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    const v2, 0x10501aa

    invoke-direct {v1, p1, p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    .line 109
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setWillNotDraw(Z)V

    .line 111
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->forceHasOverlappingRendering(Z)V

    .line 112
    return-void

    nop

    :pswitch_data_48
    .packed-switch 0x1020376
        :pswitch_1f
    .end packed-switch
.end method

.method private static getQuickStepTouchSlopPx(Landroid/content/Context;)F
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 369
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method private sendEvent(II)V
    .registers 5
    .param p1, "action"    # I
    .param p2, "flags"    # I

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(IIJ)V

    .line 283
    return-void
.end method

.method private sendEvent(IIJ)V
    .registers 23
    .param p1, "action"    # I
    .param p2, "flags"    # I
    .param p3, "when"    # J

    .line 286
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    .line 287
    nop

    .line 293
    :cond_a
    iget-object v2, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/inputmethodservice/InputMethodService;

    if-eqz v2, :cond_80

    .line 294
    and-int/lit16 v2, v1, 0x80

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_18

    move v12, v3

    goto :goto_19

    :cond_18
    move v12, v4

    .line 295
    .local v12, "repeatCount":I
    :goto_19
    new-instance v2, Landroid/view/KeyEvent;

    iget-wide v6, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    iget v11, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    or-int/lit8 v5, v1, 0x2

    or-int/lit8 v16, v5, 0x40

    const/16 v17, 0x101

    move-object v5, v2

    move-wide/from16 v8, p3

    move/from16 v10, p1

    invoke-direct/range {v5 .. v17}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 299
    .local v2, "ev":Landroid/view/KeyEvent;
    const/4 v5, -0x1

    .line 302
    .local v5, "displayId":I
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getDisplay()Landroid/view/Display;

    move-result-object v6

    if-eqz v6, :cond_3f

    .line 303
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    .line 305
    :cond_3f
    const/4 v6, -0x1

    if-eq v5, v6, :cond_45

    .line 306
    invoke-virtual {v2, v5}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 308
    :cond_45
    iget-object v6, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/inputmethodservice/InputMethodService;

    .line 310
    .local v6, "ims":Landroid/inputmethodservice/InputMethodService;
    packed-switch p1, :pswitch_data_82

    .line 320
    const/4 v3, 0x0

    .local v3, "handled":Z
    goto :goto_75

    .line 317
    .end local v3    # "handled":Z
    :pswitch_4e
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v6, v3, v2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 318
    .restart local v3    # "handled":Z
    goto :goto_75

    .line 312
    .end local v3    # "handled":Z
    :pswitch_57
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v6, v7, v2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    .line 313
    .local v7, "handled":Z
    if-eqz v7, :cond_71

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_71

    .line 314
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v8, v9

    if-eqz v8, :cond_71

    goto :goto_72

    :cond_71
    move v3, v4

    :goto_72
    iput-boolean v3, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    .line 315
    move v3, v7

    .line 323
    .end local v7    # "handled":Z
    .restart local v3    # "handled":Z
    :goto_75
    if-nez v3, :cond_80

    .line 324
    invoke-virtual {v6}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 325
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_80

    .line 326
    invoke-interface {v4, v2}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 330
    .end local v2    # "ev":Landroid/view/KeyEvent;
    .end local v3    # "handled":Z
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v5    # "displayId":I
    .end local v6    # "ims":Landroid/inputmethodservice/InputMethodService;
    .end local v12    # "repeatCount":I
    :cond_80
    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_57
        :pswitch_4e
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 353
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    if-eqz v0, :cond_1a

    .line 354
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 355
    .local v0, "d":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v0

    int-to-float v5, v0

    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 357
    .end local v0    # "d":I
    :cond_1a
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 358
    return-void
.end method

.method public isClickable()Z
    .registers 2

    .line 116
    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ImageView;->isClickable()Z

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

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 131
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 132
    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v0, :cond_22

    .line 133
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 134
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 135
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 139
    :cond_22
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "showSwipeUI":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 173
    .local v1, "action":I
    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 174
    iput-boolean v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mGestureAborted:Z

    .line 176
    :cond_a
    iget-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mGestureAborted:Z

    if-eqz v3, :cond_12

    .line 177
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 178
    return v2

    .line 181
    :cond_12
    const/16 v3, 0x20

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_f4

    goto/16 :goto_f2

    .line 215
    :pswitch_1a
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 216
    iget v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v2, :cond_24

    .line 217
    invoke-direct {p0, v4, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 219
    :cond_24
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 220
    goto/16 :goto_f2

    .line 203
    :pswitch_2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    .line 204
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    .line 206
    .local v5, "y":I
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getQuickStepTouchSlopPx(Landroid/content/Context;)F

    move-result v6

    .line 207
    .local v6, "slop":F
    iget v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownX:I

    sub-int v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v6

    if-gtz v7, :cond_57

    iget v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownY:I

    sub-int v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v6

    if-lez v7, :cond_f2

    .line 210
    :cond_57
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 211
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_f2

    .line 222
    .end local v3    # "x":I
    .end local v5    # "y":I
    .end local v6    # "slop":F
    :pswitch_61
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_6d

    iget-boolean v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    if-nez v5, :cond_6d

    move v5, v4

    goto :goto_6e

    :cond_6d
    move v5, v2

    .line 223
    .local v5, "doIt":Z
    :goto_6e
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x96

    cmp-long v6, v6, v8

    if-lez v6, :cond_80

    move v6, v4

    goto :goto_81

    :cond_80
    move v6, v2

    .line 231
    .local v6, "doHapticFeedback":Z
    :goto_81
    if-eqz v6, :cond_8c

    iget-boolean v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    if-nez v7, :cond_8c

    .line 234
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->performHapticFeedback(I)Z

    .line 236
    :cond_8c
    iget v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v7, :cond_a7

    .line 237
    if-eqz v5, :cond_a3

    .line 238
    iget-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    if-eqz v3, :cond_99

    const/16 v3, 0x200

    goto :goto_9a

    :cond_99
    move v3, v2

    :goto_9a
    invoke-direct {p0, v4, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 239
    iput-boolean v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    .line 240
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    goto :goto_b3

    .line 242
    :cond_a3
    invoke-direct {p0, v4, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    goto :goto_b3

    .line 246
    :cond_a7
    if-eqz v5, :cond_b3

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_b3

    .line 247
    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 248
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 251
    :cond_b3
    :goto_b3
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_f2

    .line 183
    .end local v5    # "doIt":Z
    .end local v6    # "doHapticFeedback":Z
    :pswitch_b9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    .line 184
    iput-boolean v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    .line 185
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownX:I

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownY:I

    .line 190
    iget v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v3, :cond_dc

    .line 191
    iget-wide v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    invoke-direct {p0, v2, v2, v5, v6}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(IIJ)V

    goto :goto_df

    .line 194
    :cond_dc
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->performHapticFeedback(I)Z

    .line 197
    :goto_df
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->playSoundEffect(I)V

    .line 199
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 200
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {p0, v2, v5, v6}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    nop

    .line 255
    :cond_f2
    :goto_f2
    return v4

    nop

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_b9
        :pswitch_61
        :pswitch_2b
        :pswitch_1a
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .line 143
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 144
    if-eqz p1, :cond_8

    .line 145
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->jumpDrawablesToCurrentState()V

    .line 147
    :cond_8
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 151
    const/16 v0, 0x10

    const/16 v1, 0x200

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_25

    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v0, :cond_25

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v3, v3, v4, v5}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(IIJ)V

    .line 153
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    invoke-direct {p0, v2, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 154
    iput-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    .line 155
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 156
    invoke-virtual {p0, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->playSoundEffect(I)V

    .line 157
    return v2

    .line 158
    :cond_25
    const/16 v0, 0x20

    if-ne p1, v0, :cond_42

    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v0, :cond_42

    .line 159
    const/16 v0, 0x80

    invoke-direct {p0, v3, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 160
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    if-eqz v0, :cond_37

    goto :goto_38

    :cond_37
    move v1, v3

    :goto_38
    invoke-direct {p0, v2, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 161
    iput-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    .line 162
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 163
    return v2

    .line 165
    :cond_42
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public playSoundEffect(I)V
    .registers 3
    .param p1, "soundConstant"    # I

    .line 277
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mPlaySounds:Z

    if-nez v0, :cond_5

    return-void

    .line 278
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 279
    return-void
.end method

.method public setCode(I)V
    .registers 2
    .param p1, "code"    # I

    .line 120
    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    .line 121
    return-void
.end method

.method public setDarkIntensity(F)V
    .registers 4
    .param p1, "darkIntensity"    # F

    .line 334
    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDarkIntensity:F

    .line 336
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 337
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_11

    .line 338
    move-object v1, v0

    check-cast v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-virtual {v1, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 341
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->invalidate()V

    .line 343
    :cond_11
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {v1, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setDarkIntensity(F)V

    .line 344
    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .registers 3
    .param p1, "shouldDelay"    # Z

    .line 348
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setDelayTouchFeedback(Z)V

    .line 349
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 260
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    if-nez p1, :cond_6

    .line 263
    return-void

    .line 265
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    .line 266
    .local v0, "keyButtonDrawable":Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    iget v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDarkIntensity:F

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 267
    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->hasOvalBg()Z

    move-result v1

    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    .line 268
    if-eqz v1, :cond_1f

    .line 269
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getDrawableBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    :cond_1f
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->hasOvalBg()Z

    move-result v2

    if-eqz v2, :cond_2a

    sget-object v2, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->OVAL:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    goto :goto_2c

    .line 272
    :cond_2a
    sget-object v2, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    .line 271
    :goto_2c
    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setType(Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;)V

    .line 273
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 125
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 127
    return-void
.end method
