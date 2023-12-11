.class final Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
.super Ljava/lang/Object;
.source "ButtonDispatcher.java"


# static fields
.field private static final FADE_DURATION_IN:I = 0x96

.field private static final FADE_DURATION_OUT:I = 0xfa

.field public static final LINEAR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mAlpha:F

.field private final mAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentView:Landroid/view/View;

.field private mDarkIntensity:Ljava/lang/Float;

.field private mDelayTouchFeedback:Ljava/lang/Boolean;

.field private mFadeAnimator:Landroid/animation/ValueAnimator;

.field private final mFadeListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mId:I

.field private mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickable:Ljava/lang/Boolean;

.field private mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibility:I


# direct methods
.method public static synthetic $r8$lambda$FQ01_drC__X0bzJ-ZeYlla-eFl0(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFadeAnimator(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->LINEAR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(I)V
    .registers 3
    .param p1, "id"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlpha:F

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mVisibility:I

    .line 56
    new-instance v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$$ExternalSyntheticLambda0;-><init>(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 62
    new-instance v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$1;-><init>(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeListener:Landroid/animation/AnimatorListenerAdapter;

    .line 71
    iput p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mId:I

    .line 72
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 57
    nop

    .line 58
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 57
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setAlpha(FZZ)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 79
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 83
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 84
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    if-eqz v0, :cond_24

    .line 85
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 87
    :cond_24
    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 88
    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mVisibility:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_35

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 92
    :cond_35
    instance-of v0, p1, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    if-eqz v0, :cond_59

    .line 93
    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    .line 94
    .local v0, "button":Landroid/inputmethodservice/navigationbar/ButtonInterface;
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mDarkIntensity:Ljava/lang/Float;

    if-eqz v1, :cond_47

    .line 95
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonInterface;->setDarkIntensity(F)V

    .line 97
    :cond_47
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    if-eqz v1, :cond_4e

    .line 98
    invoke-interface {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonInterface;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_4e
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mDelayTouchFeedback:Ljava/lang/Boolean;

    if-eqz v1, :cond_59

    .line 101
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonInterface;->setDelayTouchFeedback(Z)V

    .line 104
    .end local v0    # "button":Landroid/inputmethodservice/navigationbar/ButtonInterface;
    :cond_59
    return-void
.end method

.method public clear()V
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    return-void
.end method

.method public getAlpha()F
    .registers 2

    .line 119
    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlpha:F

    return v0
.end method

.method public getCurrentView()Landroid/view/View;
    .registers 2

    .line 282
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 107
    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mId:I

    return v0
.end method

.method public getImageDrawable()Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    return-object v0
.end method

.method public getViews()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVisibility()I
    .registers 2

    .line 111
    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mVisibility:I

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 115
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public onDestroy()V
    .registers 1

    .line 301
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .registers 5
    .param p1, "delegate"    # Landroid/view/View$AccessibilityDelegate;

    .line 260
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 261
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 262
    .local v0, "numViews":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_19

    .line 263
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 265
    .end local v1    # "i":I
    :cond_19
    return-void
.end method

.method public setAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setAlpha(FZ)V

    .line 154
    return-void
.end method

.method public setAlpha(FZ)V
    .registers 4
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setAlpha(FZZ)V

    .line 158
    return-void
.end method

.method public setAlpha(FZJ)V
    .registers 11
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z
    .param p3, "duration"    # J

    .line 161
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setAlpha(FZJZ)V

    .line 162
    return-void
.end method

.method public setAlpha(FZJZ)V
    .registers 12
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z
    .param p3, "duration"    # J
    .param p5, "cancelAnimator"    # Z

    .line 173
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_b

    if-nez p5, :cond_8

    if-eqz p2, :cond_b

    .line 174
    :cond_8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 176
    :cond_b
    if-eqz p2, :cond_41

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setVisibility(I)V

    .line 178
    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->getAlpha()F

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 179
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 180
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 183
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6b

    .line 187
    :cond_41
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->getAlpha()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 188
    .local v0, "prevAlpha":I
    mul-float v2, p1, v1

    float-to-int v2, v2

    .line 189
    .local v2, "nextAlpha":I
    if-eq v0, v2, :cond_6b

    .line 190
    int-to-float v3, v2

    div-float/2addr v3, v1

    iput v3, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlpha:F

    .line 191
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 192
    .local v1, "numViews":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_59
    if-ge v3, v1, :cond_6b

    .line 193
    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget v5, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlpha:F

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 192
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 197
    .end local v0    # "prevAlpha":I
    .end local v1    # "numViews":I
    .end local v2    # "nextAlpha":I
    .end local v3    # "i":I
    :cond_6b
    :goto_6b
    return-void
.end method

.method public setAlpha(FZZ)V
    .registers 12
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z
    .param p3, "cancelAnimator"    # Z

    .line 165
    nop

    .line 168
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_c

    const-wide/16 v0, 0x96

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0xfa

    :goto_e
    move-wide v5, v0

    .line 165
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setAlpha(FZJZ)V

    .line 170
    return-void
.end method

.method public setCurrentView(Landroid/view/View;)V
    .registers 4
    .param p1, "currentView"    # Landroid/view/View;

    .line 286
    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 287
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    if-eqz v1, :cond_f

    .line 288
    invoke-virtual {v1, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 290
    :cond_f
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 291
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 292
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 293
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 295
    :cond_21
    return-void
.end method

.method public setDarkIntensity(F)V
    .registers 5
    .param p1, "darkIntensity"    # F

    .line 200
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mDarkIntensity:Ljava/lang/Float;

    .line 201
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 202
    .local v0, "numViews":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_27

    .line 203
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    if-eqz v2, :cond_24

    .line 204
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    invoke-interface {v2, p1}, Landroid/inputmethodservice/navigationbar/ButtonInterface;->setDarkIntensity(F)V

    .line 202
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 207
    .end local v1    # "i":I
    :cond_27
    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .registers 5
    .param p1, "delay"    # Z

    .line 210
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mDelayTouchFeedback:Ljava/lang/Boolean;

    .line 211
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 212
    .local v0, "numViews":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_27

    .line 213
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    if-eqz v2, :cond_24

    .line 214
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    invoke-interface {v2, p1}, Landroid/inputmethodservice/navigationbar/ButtonInterface;->setDelayTouchFeedback(Z)V

    .line 212
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 217
    .end local v1    # "i":I
    :cond_27
    return-void
.end method

.method public setImageDrawable(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V
    .registers 6
    .param p1, "drawable"    # Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    .line 127
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    .line 128
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 129
    .local v0, "numViews":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_25

    .line 130
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    if-eqz v2, :cond_22

    .line 131
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-interface {v2, v3}, Landroid/inputmethodservice/navigationbar/ButtonInterface;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 134
    .end local v1    # "i":I
    :cond_25
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    if-eqz v1, :cond_2e

    .line 135
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 137
    :cond_2e
    return-void
.end method

.method public setLongClickable(Z)V
    .registers 6
    .param p1, "isLongClickable"    # Z

    .line 236
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    .line 237
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 238
    .local v0, "numViews":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_23

    .line 239
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 241
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 6
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .line 220
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    .line 221
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 222
    .local v0, "numViews":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1b

    .line 223
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 225
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .registers 6
    .param p1, "hoverListener"    # Landroid/view/View$OnHoverListener;

    .line 252
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    .line 253
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 254
    .local v0, "numViews":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1b

    .line 255
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 257
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 6
    .param p1, "longClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 244
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 245
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 246
    .local v0, "numViews":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1b

    .line 247
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 249
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 6
    .param p1, "touchListener"    # Landroid/view/View$OnTouchListener;

    .line 228
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 229
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 230
    .local v0, "numViews":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1b

    .line 231
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 233
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public setTranslation(III)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .line 268
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 269
    .local v0, "numViews":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 270
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 271
    .local v2, "view":Landroid/view/View;
    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 272
    int-to-float v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 273
    int-to-float v3, p3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 269
    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 275
    .end local v1    # "i":I
    :cond_20
    return-void
.end method

.method public setVisibility(I)V
    .registers 6
    .param p1, "visibility"    # I

    .line 140
    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mVisibility:I

    if-ne v0, p1, :cond_5

    return-void

    .line 141
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    .line 142
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 145
    :cond_c
    iput p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mVisibility:I

    .line 146
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 147
    .local v0, "numViews":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    if-ge v1, v0, :cond_27

    .line 148
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v3, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mVisibility:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 150
    .end local v1    # "i":I
    :cond_27
    return-void
.end method
