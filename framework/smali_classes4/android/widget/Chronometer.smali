.class public Landroid/widget/Chronometer;
.super Landroid/widget/TextView;
.source "Chronometer.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Chronometer$OnChronometerTickListener;,
        Landroid/widget/Chronometer$RefreshProgressRunnable;,
        Landroid/widget/Chronometer$CirCleProgressDrawable;,
        Landroid/widget/Chronometer$RefreshData;
    }
.end annotation


# static fields
.field private static final HOUR_IN_SEC:I = 0xe10

.field private static final MAX_LEVEL:I = 0x2710

.field private static final MIN_IN_SEC:I = 0x3c

.field private static final PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

.field private static final SEM_MODE_DEFAULT:I = 0x0

.field private static final SEM_MODE_DEFAULT_KEEP_UPDATE:I = 0x2

.field private static final SEM_MODE_MERGE:I = 0x3

.field private static final SEM_MODE_PROGRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Chronometer"


# instance fields
.field private mAttached:Z

.field private mBase:J

.field private mBaseTimerSeconds:J

.field private mCirclePadding:I

.field private mCountDown:Z

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mFirstTimerSeconds:J

.field private mFormat:Ljava/lang/String;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mFormatterArgs:[Ljava/lang/Object;

.field private mFormatterLocale:Ljava/util/Locale;

.field private mLogged:Z

.field private mMax:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMin:I

.field private mMinHeight:I

.field private mMinWidth:I

.field private mMode:I

.field private mNow:J

.field private mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

.field private mOriginalBase:J

.field private mProgress:I

.field private mProgressAnimationDuration:I

.field private mProgressBackgroundColor:I

.field private mProgressColor:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressWarningColor:I

.field private mRecycle:Ljava/lang/StringBuilder;

.field private final mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/Chronometer$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Landroid/widget/Chronometer$RefreshProgressRunnable;

.field private mRoundStrokeWidth:I

.field private mRunning:Z

.field private mShouldStartAnimationDrawable:Z

.field private mStarted:Z

.field private final mTickRunnable:Ljava/lang/Runnable;

.field private mVisible:Z

.field private mWaringTime:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmCirclePadding(Landroid/widget/Chronometer;)I
    .registers 1

    iget p0, p0, Landroid/widget/Chronometer;->mCirclePadding:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMax(Landroid/widget/Chronometer;)I
    .registers 1

    iget p0, p0, Landroid/widget/Chronometer;->mMax:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMin(Landroid/widget/Chronometer;)I
    .registers 1

    iget p0, p0, Landroid/widget/Chronometer;->mMin:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressAnimationDuration(Landroid/widget/Chronometer;)I
    .registers 1

    iget p0, p0, Landroid/widget/Chronometer;->mProgressAnimationDuration:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRefreshData(Landroid/widget/Chronometer;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/widget/Chronometer;->mRefreshData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoundStrokeWidth(Landroid/widget/Chronometer;)I
    .registers 1

    iget p0, p0, Landroid/widget/Chronometer;->mRoundStrokeWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunning(Landroid/widget/Chronometer;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Chronometer;->mRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTickRunnable(Landroid/widget/Chronometer;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmRefreshIsPosted(Landroid/widget/Chronometer;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Chronometer;->mRefreshIsPosted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoRefreshProgress(Landroid/widget/Chronometer;IIZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Chronometer;->doRefreshProgress(IIZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateText(Landroid/widget/Chronometer;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Chronometer;->updateText(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetPROGRESS_ANIM_INTERPOLATOR()Landroid/view/animation/LinearInterpolator;
    .registers 1

    sget-object v0, Landroid/widget/Chronometer;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 99
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/Chronometer;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 158
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 178
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 96
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/Chronometer;->mProgressAnimationDuration:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/Chronometer;->mRefreshData:Ljava/util/ArrayList;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Chronometer;->mMode:I

    .line 109
    const/16 v1, 0x2710

    iput v1, p0, Landroid/widget/Chronometer;->mMax:I

    .line 110
    iput v0, p0, Landroid/widget/Chronometer;->mMin:I

    .line 112
    const v1, -0x737374

    iput v1, p0, Landroid/widget/Chronometer;->mProgressBackgroundColor:I

    .line 113
    const v1, -0x7a7802

    iput v1, p0, Landroid/widget/Chronometer;->mProgressColor:I

    .line 114
    const v1, -0x89098

    iput v1, p0, Landroid/widget/Chronometer;->mProgressWarningColor:I

    .line 115
    const-wide/16 v1, 0x1770

    iput-wide v1, p0, Landroid/widget/Chronometer;->mWaringTime:J

    .line 122
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/Chronometer;->mFirstTimerSeconds:J

    .line 123
    iput-wide v1, p0, Landroid/widget/Chronometer;->mOriginalBase:J

    .line 147
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    .line 507
    new-instance v2, Landroid/widget/Chronometer$1;

    invoke-direct {v2, p0}, Landroid/widget/Chronometer$1;-><init>(Landroid/widget/Chronometer;)V

    iput-object v2, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    .line 180
    sget-object v2, Lcom/android/internal/R$styleable;->Chronometer:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 182
    .local v2, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/android/internal/R$styleable;->Chronometer:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/Chronometer;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 184
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Chronometer;->setCountDown(Z)V

    .line 186
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    invoke-direct {p0}, Landroid/widget/Chronometer;->init()V

    .line 189
    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 5
    .param p1, "color"    # I

    .line 666
    const/4 v0, 0x0

    new-array v0, v0, [I

    filled-new-array {v0}, [[I

    move-result-object v0

    .line 667
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    filled-new-array {p1}, [I

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private declared-synchronized doRefreshProgress(IIZZ)V
    .registers 11
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "callBackToApp"    # Z
    .param p4, "animate"    # Z

    monitor-enter p0

    .line 748
    :try_start_1
    iget v0, p0, Landroid/widget/Chronometer;->mMax:I

    iget v1, p0, Landroid/widget/Chronometer;->mMin:I

    sub-int/2addr v0, v1

    .line 749
    .local v0, "range":I
    if-lez v0, :cond_e

    sub-int v1, p2, v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 751
    .local v1, "scale":F
    :goto_f
    iget-object v2, p0, Landroid/widget/Chronometer;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 752
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_41

    .line 753
    const/4 v3, 0x0

    .line 754
    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    .line 755
    .local v4, "level":I
    instance-of v5, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_3d

    .line 756
    move-object v5, v2

    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v3, v5

    .line 757
    if-eqz v3, :cond_34

    invoke-virtual {p0}, Landroid/widget/Chronometer;->canResolveLayoutDirection()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 758
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 760
    .end local p0    # "this":Landroid/widget/Chronometer;
    :cond_34
    if-eqz v3, :cond_38

    move-object v5, v3

    goto :goto_39

    :cond_38
    move-object v5, v2

    :goto_39
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_40

    .line 762
    :cond_3d
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 764
    .end local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "level":I
    :goto_40
    goto :goto_44

    .line 765
    :cond_41
    invoke-virtual {p0}, Landroid/widget/Chronometer;->invalidate()V

    .line 768
    :goto_44
    if-eqz p3, :cond_49

    .line 769
    invoke-virtual {p0, v1, p2}, Landroid/widget/Chronometer;->onProgressRefresh(FI)V
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4b

    .line 771
    :cond_49
    monitor-exit p0

    return-void

    .line 747
    .end local v0    # "range":I
    .end local v1    # "scale":F
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local p1    # "id":I
    .end local p2    # "progress":I
    .end local p3    # "callBackToApp":Z
    .end local p4    # "animate":Z
    :catchall_4b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static formatDuration(J)Ljava/lang/String;
    .registers 10
    .param p0, "ms"    # J

    .line 527
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    long-to-int v0, v0

    .line 528
    .local v0, "duration":I
    if-gez v0, :cond_8

    .line 529
    neg-int v0, v0

    .line 532
    :cond_8
    const/4 v1, 0x0

    .line 533
    .local v1, "h":I
    const/4 v2, 0x0

    .line 535
    .local v2, "m":I
    const/16 v3, 0xe10

    if-lt v0, v3, :cond_13

    .line 536
    div-int/lit16 v1, v0, 0xe10

    .line 537
    mul-int/lit16 v3, v1, 0xe10

    sub-int/2addr v0, v3

    .line 539
    :cond_13
    const/16 v3, 0x3c

    if-lt v0, v3, :cond_1c

    .line 540
    div-int/lit8 v2, v0, 0x3c

    .line 541
    mul-int/lit8 v3, v2, 0x3c

    sub-int/2addr v0, v3

    .line 543
    :cond_1c
    move v3, v0

    .line 545
    .local v3, "s":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v4, "measures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/util/Measure;>;"
    if-lez v1, :cond_32

    .line 547
    new-instance v5, Landroid/icu/util/Measure;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v5, v6, v7}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_32
    if-lez v2, :cond_42

    .line 550
    new-instance v5, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v5, v6, v7}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_42
    new-instance v5, Landroid/icu/util/Measure;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v5, v6, v7}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    sget-object v6, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v5, v6}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v5

    .line 555
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/icu/util/Measure;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/icu/util/Measure;

    invoke-virtual {v5, v6}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v5

    .line 554
    return-object v5
.end method

.method private getCircleProgressDrawable()Landroid/widget/Chronometer$CirCleProgressDrawable;
    .registers 3

    .line 447
    iget-object v0, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_17

    .line 448
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 449
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;

    if-eqz v1, :cond_17

    .line 450
    move-object v1, v0

    check-cast v1, Landroid/widget/Chronometer$CirCleProgressDrawable;

    return-object v1

    .line 453
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method private init()V
    .registers 3

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    .line 193
    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 194
    return-void
.end method

.method private initCirCleStrokeWidth()V
    .registers 2

    .line 834
    const/16 v0, 0x20

    iput v0, p0, Landroid/widget/Chronometer;->mRoundStrokeWidth:I

    .line 835
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Chronometer;->mCirclePadding:I

    .line 836
    return-void
.end method

.method private initializeRoundCicleMode()V
    .registers 8

    .line 641
    new-instance v0, Landroid/widget/Chronometer$CirCleProgressDrawable;

    iget v1, p0, Landroid/widget/Chronometer;->mProgressColor:I

    invoke-direct {p0, v1}, Landroid/widget/Chronometer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget v2, p0, Landroid/widget/Chronometer;->mProgressWarningColor:I

    invoke-direct {p0, v2}, Landroid/widget/Chronometer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Landroid/widget/Chronometer$CirCleProgressDrawable;-><init>(Landroid/widget/Chronometer;ZLandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 642
    .local v0, "primaryProgress":Landroid/widget/Chronometer$CirCleProgressDrawable;
    new-instance v1, Landroid/widget/Chronometer$CirCleProgressDrawable;

    iget v2, p0, Landroid/widget/Chronometer;->mProgressBackgroundColor:I

    invoke-direct {p0, v2}, Landroid/widget/Chronometer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, p0, v5, v2, v4}, Landroid/widget/Chronometer$CirCleProgressDrawable;-><init>(Landroid/widget/Chronometer;ZLandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 645
    .local v1, "background":Landroid/widget/Chronometer$CirCleProgressDrawable;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 646
    .local v2, "drawables":[Landroid/graphics/drawable/Drawable;
    aput-object v1, v2, v3

    .line 647
    aput-object v0, v2, v5

    .line 649
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 650
    .local v4, "layer":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    .line 651
    const/high16 v6, 0x1020000

    invoke-virtual {v4, v3, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 652
    const v6, 0x102000d

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 654
    invoke-direct {p0, v4}, Landroid/widget/Chronometer;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 656
    iput v3, p0, Landroid/widget/Chronometer;->mMin:I

    .line 657
    const/16 v5, 0x2710

    iput v5, p0, Landroid/widget/Chronometer;->mMax:I

    .line 658
    iput v3, p0, Landroid/widget/Chronometer;->mProgress:I

    .line 659
    const/16 v3, 0xb4

    iput v3, p0, Landroid/widget/Chronometer;->mMinWidth:I

    .line 660
    iput v3, p0, Landroid/widget/Chronometer;->mMaxWidth:I

    .line 661
    iput v3, p0, Landroid/widget/Chronometer;->mMinHeight:I

    .line 662
    iput v3, p0, Landroid/widget/Chronometer;->mMaxHeight:I

    .line 663
    return-void
.end method

.method private isShownForSemMode()Z
    .registers 6

    .line 486
    move-object v0, p0

    .line 488
    .local v0, "current":Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 489
    return v2

    .line 491
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 492
    .local v1, "parent":Landroid/view/ViewParent;
    const/4 v3, 0x1

    if-nez v1, :cond_16

    .line 493
    instance-of v4, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    if-eqz v4, :cond_15

    .line 495
    return v3

    .line 497
    :cond_15
    return v2

    .line 499
    :cond_16
    instance-of v4, v1, Landroid/view/View;

    if-nez v4, :cond_1b

    .line 500
    return v3

    .line 502
    :cond_1b
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 503
    .end local v1    # "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_1

    .line 504
    return v2
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "animate"    # Z

    monitor-enter p0

    .line 628
    :try_start_1
    iget-object v0, p0, Landroid/widget/Chronometer;->mRefreshProgressRunnable:Landroid/widget/Chronometer$RefreshProgressRunnable;

    if-nez v0, :cond_d

    .line 629
    new-instance v0, Landroid/widget/Chronometer$RefreshProgressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Chronometer$RefreshProgressRunnable;-><init>(Landroid/widget/Chronometer;Landroid/widget/Chronometer$RefreshProgressRunnable-IA;)V

    iput-object v0, p0, Landroid/widget/Chronometer;->mRefreshProgressRunnable:Landroid/widget/Chronometer$RefreshProgressRunnable;

    .line 632
    .end local p0    # "this":Landroid/widget/Chronometer;
    :cond_d
    invoke-static {p1, p2, p3}, Landroid/widget/Chronometer$RefreshData;->obtain(IIZ)Landroid/widget/Chronometer$RefreshData;

    move-result-object v0

    .line 633
    .local v0, "rd":Landroid/widget/Chronometer$RefreshData;
    iget-object v1, p0, Landroid/widget/Chronometer;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    iget-boolean v1, p0, Landroid/widget/Chronometer;->mAttached:Z

    if-eqz v1, :cond_26

    iget-boolean v1, p0, Landroid/widget/Chronometer;->mRefreshIsPosted:Z

    if-nez v1, :cond_26

    .line 635
    iget-object v1, p0, Landroid/widget/Chronometer;->mRefreshProgressRunnable:Landroid/widget/Chronometer$RefreshProgressRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->post(Ljava/lang/Runnable;)Z

    .line 636
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Chronometer;->mRefreshIsPosted:Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 638
    :cond_26
    monitor-exit p0

    return-void

    .line 627
    .end local v0    # "rd":Landroid/widget/Chronometer$RefreshData;
    .end local p1    # "id":I
    .end local p2    # "progress":I
    .end local p3    # "animate":Z
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 671
    iget-object v0, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_52

    .line 672
    if-eqz v0, :cond_f

    .line 673
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 674
    iget-object v0, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/Chronometer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 677
    :cond_f
    iput-object p1, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 679
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 680
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 681
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 682
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 685
    :cond_28
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 686
    .local v0, "drawableHeight":I
    iget v1, p0, Landroid/widget/Chronometer;->mMaxHeight:I

    if-ge v1, v0, :cond_35

    .line 687
    iput v0, p0, Landroid/widget/Chronometer;->mMaxHeight:I

    .line 688
    invoke-virtual {p0}, Landroid/widget/Chronometer;->requestLayout()V

    .line 691
    :cond_35
    invoke-direct {p0, p1}, Landroid/widget/Chronometer;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 692
    invoke-virtual {p0}, Landroid/widget/Chronometer;->postInvalidate()V

    .line 694
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/Chronometer;->updateDrawableBounds(II)V

    .line 695
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateDrawableState()V

    .line 697
    const v1, 0x102000d

    iget v2, p0, Landroid/widget/Chronometer;->mProgress:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v3}, Landroid/widget/Chronometer;->doRefreshProgress(IIZZ)V

    .line 699
    .end local v0    # "drawableHeight":I
    :cond_52
    return-void
.end method

.method private declared-synchronized setProgressInternal(IZ)V
    .registers 6
    .param p1, "progress"    # I
    .param p2, "animate"    # Z

    monitor-enter p0

    .line 605
    :try_start_1
    iget v0, p0, Landroid/widget/Chronometer;->mMin:I

    iget v1, p0, Landroid/widget/Chronometer;->mMax:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    move p1, v0

    .line 615
    iput p1, p0, Landroid/widget/Chronometer;->mProgress:I

    .line 616
    iget-object v0, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    const v2, 0x102000d

    if-eqz v1, :cond_25

    .line 617
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 618
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;

    if-eqz v1, :cond_25

    .line 619
    move-object v1, v0

    check-cast v1, Landroid/widget/Chronometer$CirCleProgressDrawable;

    invoke-virtual {v1, p1, p2}, Landroid/widget/Chronometer$CirCleProgressDrawable;->setProgress(IZ)V

    .line 622
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local p0    # "this":Landroid/widget/Chronometer;
    :cond_25
    iget v0, p0, Landroid/widget/Chronometer;->mProgress:I

    invoke-direct {p0, v2, v0, p2}, Landroid/widget/Chronometer;->refreshProgress(IIZ)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 623
    monitor-exit p0

    return-void

    .line 604
    .end local p1    # "progress":I
    .end local p2    # "animate":Z
    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "newDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 702
    iget-object v0, p0, Landroid/widget/Chronometer;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 703
    .local v0, "oldDrawable":Landroid/graphics/drawable/Drawable;
    iput-object p1, p0, Landroid/widget/Chronometer;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 705
    if-eq v0, p1, :cond_22

    .line 706
    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 707
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 709
    :cond_c
    iget-object v2, p0, Landroid/widget/Chronometer;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_22

    .line 710
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {p0}, Landroid/widget/Chronometer;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_1e
    move v3, v1

    :goto_1f
    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 713
    :cond_22
    return-void
.end method

.method private updateDrawableBounds(II)V
    .registers 9
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 718
    iget v0, p0, Landroid/widget/Chronometer;->mPaddingRight:I

    iget v1, p0, Landroid/widget/Chronometer;->mPaddingLeft:I

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 719
    iget v0, p0, Landroid/widget/Chronometer;->mPaddingTop:I

    iget v1, p0, Landroid/widget/Chronometer;->mPaddingBottom:I

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 721
    move v0, p1

    .line 722
    .local v0, "right":I
    move v1, p2

    .line 723
    .local v1, "bottom":I
    const/4 v2, 0x0

    .line 724
    .local v2, "top":I
    const/4 v3, 0x0

    .line 726
    .local v3, "left":I
    iget-object v4, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_18

    .line 727
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 729
    :cond_18
    return-void
.end method

.method private updateDrawableState()V
    .registers 5

    .line 732
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getDrawableState()[I

    move-result-object v0

    .line 733
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 735
    .local v1, "changed":Z
    iget-object v2, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 736
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 737
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 740
    :cond_14
    if-eqz v1, :cond_19

    .line 741
    invoke-virtual {p0}, Landroid/widget/Chronometer;->invalidate()V

    .line 743
    :cond_19
    return-void
.end method

.method private updateRunning()V
    .registers 5

    .line 459
    iget v0, p0, Landroid/widget/Chronometer;->mMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 460
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/Chronometer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    move v0, v1

    .local v0, "running":Z
    goto :goto_29

    .line 462
    .end local v0    # "running":Z
    :cond_18
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    if-eqz v0, :cond_27

    invoke-direct {p0}, Landroid/widget/Chronometer;->isShownForSemMode()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    move v0, v1

    .line 465
    .restart local v0    # "running":Z
    :goto_29
    iget-boolean v1, p0, Landroid/widget/Chronometer;->mRunning:Z

    if-eq v0, v1, :cond_53

    .line 466
    if-eqz v0, :cond_4c

    .line 467
    iget v1, p0, Landroid/widget/Chronometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3a

    .line 468
    iget-object v1, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->post(Ljava/lang/Runnable;)Z

    goto :goto_51

    .line 470
    :cond_3a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/widget/Chronometer;->updateText(J)V

    .line 471
    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    .line 472
    iget-object v1, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/Chronometer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_51

    .line 475
    :cond_4c
    iget-object v1, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 477
    :goto_51
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mRunning:Z

    .line 479
    :cond_53
    return-void
.end method

.method private declared-synchronized updateText(J)V
    .registers 19
    .param p1, "now"    # J

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    monitor-enter p0

    .line 395
    :try_start_5
    iput-wide v2, v1, Landroid/widget/Chronometer;->mNow:J

    .line 396
    iget-boolean v0, v1, Landroid/widget/Chronometer;->mCountDown:Z

    if-eqz v0, :cond_f

    iget-wide v4, v1, Landroid/widget/Chronometer;->mBase:J

    sub-long/2addr v4, v2

    goto :goto_13

    .end local p0    # "this":Landroid/widget/Chronometer;
    :cond_f
    iget-wide v4, v1, Landroid/widget/Chronometer;->mBase:J

    sub-long v4, v2, v4

    .line 397
    .local v4, "seconds":J
    :goto_13
    const-wide/16 v6, 0x3e8

    div-long v8, v4, v6

    move-wide v4, v8

    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "negative":Z
    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-gez v10, :cond_24

    .line 400
    neg-long v4, v4

    .line 401
    const/4 v0, 0x1

    move-wide v10, v4

    move v4, v0

    goto :goto_26

    .line 399
    :cond_24
    move-wide v10, v4

    move v4, v0

    .line 403
    .end local v0    # "negative":Z
    .local v4, "negative":Z
    .local v10, "seconds":J
    :goto_26
    iget-object v0, v1, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    invoke-static {v0, v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "text":Ljava/lang/String;
    if-eqz v4, :cond_3f

    .line 405
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Chronometer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v12

    const v13, 0x1040840

    invoke-virtual {v5, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_40

    .line 404
    :cond_3f
    move-object v5, v0

    .line 408
    .end local v0    # "text":Ljava/lang/String;
    .local v5, "text":Ljava/lang/String;
    :goto_40
    iget-object v0, v1, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_9b

    .line 409
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    move-object v14, v0

    .line 410
    .local v14, "loc":Ljava/util/Locale;
    iget-object v0, v1, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    if-eqz v0, :cond_57

    iget-object v0, v1, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    invoke-virtual {v14, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 411
    :cond_57
    iput-object v14, v1, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    .line 412
    new-instance v0, Ljava/util/Formatter;

    iget-object v15, v1, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v15, v14}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, v1, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    .line 414
    :cond_62
    iget-object v0, v1, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 415
    iget-object v0, v1, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    aput-object v5, v0, v12
    :try_end_6b
    .catchall {:try_start_5 .. :try_end_6b} :catchall_d7

    .line 417
    :try_start_6b
    iget-object v15, v1, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    iget-object v12, v1, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    invoke-virtual {v15, v12, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 418
    iget-object v0, v1, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_78
    .catch Ljava/util/IllegalFormatException; {:try_start_6b .. :try_end_78} :catch_7a
    .catchall {:try_start_6b .. :try_end_78} :catchall_d7

    move-object v5, v0

    .line 424
    goto :goto_9b

    .line 419
    :catch_7a
    move-exception v0

    .line 420
    .local v0, "ex":Ljava/util/IllegalFormatException;
    :try_start_7b
    iget-boolean v12, v1, Landroid/widget/Chronometer;->mLogged:Z

    if-nez v12, :cond_9b

    .line 421
    const-string v12, "Chronometer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal format string: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iput-boolean v13, v1, Landroid/widget/Chronometer;->mLogged:Z

    .line 426
    .end local v0    # "ex":Ljava/util/IllegalFormatException;
    .end local v14    # "loc":Ljava/util/Locale;
    :cond_9b
    :goto_9b
    iget v0, v1, Landroid/widget/Chronometer;->mMode:I

    if-eq v0, v13, :cond_a3

    .line 427
    invoke-virtual {v1, v5}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a8

    .line 429
    :cond_a3
    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    .line 432
    :goto_a8
    iget v0, v1, Landroid/widget/Chronometer;->mMode:I

    if-eq v0, v13, :cond_af

    const/4 v8, 0x3

    if-ne v0, v8, :cond_d5

    .line 433
    :cond_af
    invoke-direct/range {p0 .. p0}, Landroid/widget/Chronometer;->getCircleProgressDrawable()Landroid/widget/Chronometer$CirCleProgressDrawable;

    move-result-object v0

    .line 434
    .local v0, "drawable":Landroid/widget/Chronometer$CirCleProgressDrawable;
    if-eqz v0, :cond_c1

    .line 435
    iget-wide v8, v1, Landroid/widget/Chronometer;->mWaringTime:J

    div-long/2addr v8, v6

    cmp-long v6, v10, v8

    if-gez v6, :cond_bd

    goto :goto_be

    :cond_bd
    const/4 v13, 0x0

    :goto_be
    invoke-virtual {v0, v13}, Landroid/widget/Chronometer$CirCleProgressDrawable;->setWarningMode(Z)V

    .line 437
    :cond_c1
    iget-boolean v6, v1, Landroid/widget/Chronometer;->mCountDown:Z

    if-eqz v6, :cond_d5

    const-wide/16 v6, 0x0

    cmp-long v6, v10, v6

    if-eqz v6, :cond_cd

    if-eqz v4, :cond_d5

    .line 438
    :cond_cd
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/widget/Chronometer;->mRunning:Z

    .line 439
    if-eqz v0, :cond_d5

    .line 440
    invoke-virtual {v0}, Landroid/widget/Chronometer$CirCleProgressDrawable;->cancelAnimator()V
    :try_end_d5
    .catchall {:try_start_7b .. :try_end_d5} :catchall_d7

    .line 444
    .end local v0    # "drawable":Landroid/widget/Chronometer$CirCleProgressDrawable;
    :cond_d5
    monitor-exit p0

    return-void

    .line 394
    .end local v4    # "negative":Z
    .end local v5    # "text":Ljava/lang/String;
    .end local v10    # "seconds":J
    .end local p1    # "now":J
    :catchall_d7
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method dispatchChronometerTick()V
    .registers 2

    .line 519
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    if-eqz v0, :cond_7

    .line 520
    invoke-interface {v0, p0}, Landroid/widget/Chronometer$OnChronometerTickListener;->onChronometerTick(Landroid/widget/Chronometer;)V

    .line 522
    :cond_7
    return-void
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 587
    iget-object v0, p0, Landroid/widget/Chronometer;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 588
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_28

    .line 591
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 592
    .local v1, "saveCount":I
    iget v2, p0, Landroid/widget/Chronometer;->mPaddingLeft:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/Chronometer;->mPaddingTop:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 594
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 595
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 597
    iget-boolean v2, p0, Landroid/widget/Chronometer;->mShouldStartAnimationDrawable:Z

    if-eqz v2, :cond_28

    instance-of v2, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_28

    .line 598
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->start()V

    .line 599
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/Chronometer;->mShouldStartAnimationDrawable:Z

    .line 602
    .end local v1    # "saveCount":I
    :cond_28
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 565
    const-class v0, Landroid/widget/Chronometer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBase()J
    .registers 3

    .line 268
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    return-wide v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 5

    .line 560
    iget-wide v0, p0, Landroid/widget/Chronometer;->mNow:J

    iget-wide v2, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/widget/Chronometer;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .line 295
    iget-object v0, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getOnChronometerTickListener()Landroid/widget/Chronometer$OnChronometerTickListener;
    .registers 2

    .line 312
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    return-object v0
.end method

.method public hidden_semSetMode(I)V
    .registers 3
    .param p1, "mode"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1098
    iget v0, p0, Landroid/widget/Chronometer;->mMode:I

    if-eq v0, p1, :cond_15

    .line 1099
    iput p1, p0, Landroid/widget/Chronometer;->mMode:I

    .line 1100
    packed-switch p1, :pswitch_data_16

    :pswitch_9
    goto :goto_12

    .line 1105
    :pswitch_a
    invoke-direct {p0}, Landroid/widget/Chronometer;->initializeRoundCicleMode()V

    .line 1106
    invoke-direct {p0}, Landroid/widget/Chronometer;->initCirCleStrokeWidth()V

    goto :goto_12

    .line 1102
    :pswitch_11
    nop

    .line 1109
    :goto_12
    invoke-virtual {p0}, Landroid/widget/Chronometer;->invalidate()V

    .line 1112
    :cond_15
    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_11
        :pswitch_a
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public hidden_semSetOriginalBase(J)V
    .registers 5
    .param p1, "originalBase"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1119
    iput-wide p1, p0, Landroid/widget/Chronometer;->mOriginalBase:J

    .line 1120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 1121
    .local v0, "seconds":J
    iput-wide v0, p0, Landroid/widget/Chronometer;->mFirstTimerSeconds:J

    .line 1122
    return-void
.end method

.method public hidden_semSetProgressBackgroundColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1129
    iput p1, p0, Landroid/widget/Chronometer;->mProgressBackgroundColor:I

    .line 1130
    return-void
.end method

.method public hidden_semSetProgressColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1137
    iput p1, p0, Landroid/widget/Chronometer;->mProgressColor:I

    .line 1138
    return-void
.end method

.method public hidden_semSetProgressWidth(I)V
    .registers 2
    .param p1, "size"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1145
    iput p1, p0, Landroid/widget/Chronometer;->mRoundStrokeWidth:I

    .line 1146
    return-void
.end method

.method public hidden_semSetWarningColor(I)V
    .registers 4
    .param p1, "warningColor"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1153
    iput p1, p0, Landroid/widget/Chronometer;->mProgressWarningColor:I

    .line 1154
    invoke-direct {p0}, Landroid/widget/Chronometer;->getCircleProgressDrawable()Landroid/widget/Chronometer$CirCleProgressDrawable;

    move-result-object v0

    .line 1155
    .local v0, "drawable":Landroid/widget/Chronometer$CirCleProgressDrawable;
    if-eqz v0, :cond_f

    .line 1156
    invoke-direct {p0, p1}, Landroid/widget/Chronometer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer$CirCleProgressDrawable;->setWarningColor(Landroid/content/res/ColorStateList;)V

    .line 1158
    :cond_f
    return-void
.end method

.method public hidden_semSetWarningTime(J)V
    .registers 3
    .param p1, "warningTime"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1165
    iput-wide p1, p0, Landroid/widget/Chronometer;->mWaringTime:J

    .line 1166
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 1072
    invoke-virtual {p0, p1}, Landroid/widget/Chronometer;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1073
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1074
    .local v0, "dirty":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 1075
    .local v1, "scrollX":I
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 1077
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/widget/Chronometer;->invalidate(IIII)V

    .line 1079
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    goto :goto_2f

    .line 1080
    :cond_2c
    invoke-super {p0, p1}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1082
    :goto_2f
    return-void
.end method

.method public isCountDown()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mCountDown:Z

    return v0
.end method

.method public isTheFinalCountDown()Z
    .registers 5

    .line 224
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://youtu.be/9jK-NcRmVcw"

    .line 225
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.BROWSABLE"

    .line 226
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 227
    const v2, 0x81000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    .line 229
    const/4 v0, 0x1

    return v0

    .line 230
    :catch_23
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method protected onAttachedToWindow()V
    .registers 8

    .line 787
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 788
    iget-object v0, p0, Landroid/widget/Chronometer;->mRefreshData:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    .line 789
    monitor-enter p0

    .line 790
    :try_start_9
    iget-object v0, p0, Landroid/widget/Chronometer;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 791
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v0, :cond_29

    .line 792
    iget-object v3, p0, Landroid/widget/Chronometer;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Chronometer$RefreshData;

    .line 793
    .local v3, "rd":Landroid/widget/Chronometer$RefreshData;
    iget v4, v3, Landroid/widget/Chronometer$RefreshData;->id:I

    iget v5, v3, Landroid/widget/Chronometer$RefreshData;->progress:I

    iget-boolean v6, v3, Landroid/widget/Chronometer$RefreshData;->animate:Z

    invoke-direct {p0, v4, v5, v1, v6}, Landroid/widget/Chronometer;->doRefreshProgress(IIZZ)V

    .line 794
    invoke-virtual {v3}, Landroid/widget/Chronometer$RefreshData;->recycle()V

    .line 791
    .end local v3    # "rd":Landroid/widget/Chronometer$RefreshData;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 796
    .end local v2    # "i":I
    :cond_29
    iget-object v2, p0, Landroid/widget/Chronometer;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 797
    .end local v0    # "count":I
    monitor-exit p0

    goto :goto_33

    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_30

    throw v0

    .line 799
    :cond_33
    :goto_33
    iput-boolean v1, p0, Landroid/widget/Chronometer;->mAttached:Z

    .line 800
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 367
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    .line 369
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 371
    iget-object v1, p0, Landroid/widget/Chronometer;->mRefreshProgressRunnable:Landroid/widget/Chronometer$RefreshProgressRunnable;

    if-eqz v1, :cond_12

    .line 372
    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 373
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mRefreshIsPosted:Z

    .line 377
    :cond_12
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 378
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mAttached:Z

    .line 379
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 580
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 581
    iget v0, p0, Landroid/widget/Chronometer;->mMode:I

    if-eqz v0, :cond_b

    .line 582
    invoke-virtual {p0, p1}, Landroid/widget/Chronometer;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 584
    .end local p0    # "this":Landroid/widget/Chronometer;
    :cond_b
    monitor-exit p0

    return-void

    .line 579
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    monitor-enter p0

    .line 808
    :try_start_1
    iget v0, p0, Landroid/widget/Chronometer;->mMode:I

    if-nez v0, :cond_9

    .line 809
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    goto :goto_57

    .line 811
    .end local p0    # "this":Landroid/widget/Chronometer;
    :cond_9
    const/4 v0, 0x0

    .line 812
    .local v0, "dw":I
    const/4 v1, 0x0

    .line 814
    .local v1, "dh":I
    iget-object v2, p0, Landroid/widget/Chronometer;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 815
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_31

    .line 816
    iget v3, p0, Landroid/widget/Chronometer;->mMinWidth:I

    iget v4, p0, Landroid/widget/Chronometer;->mMaxWidth:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    .line 817
    iget v3, p0, Landroid/widget/Chronometer;->mMinHeight:I

    iget v4, p0, Landroid/widget/Chronometer;->mMaxHeight:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v1, v3

    .line 820
    :cond_31
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateDrawableState()V

    .line 822
    iget v3, p0, Landroid/widget/Chronometer;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/Chronometer;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 823
    iget v3, p0, Landroid/widget/Chronometer;->mPaddingTop:I

    iget v4, p0, Landroid/widget/Chronometer;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 825
    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Landroid/widget/Chronometer;->resolveSizeAndState(III)I

    move-result v4

    .line 826
    .local v4, "measuredWidth":I
    invoke-static {v1, p2, v3}, Landroid/widget/Chronometer;->resolveSizeAndState(III)I

    move-result v3

    .line 828
    .local v3, "measuredHeight":I
    invoke-virtual {p0, v4, v3}, Landroid/widget/Chronometer;->setMeasuredDimension(II)V

    .line 829
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getMeasuredHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Landroid/widget/Chronometer;->updateDrawableBounds(II)V
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_59

    .line 831
    .end local v0    # "dw":I
    .end local v1    # "dh":I
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    :goto_57
    monitor-exit p0

    return-void

    .line 807
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    :catchall_59
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method onProgressRefresh(FI)V
    .registers 5
    .param p1, "scale"    # F
    .param p2, "progress"    # I

    .line 774
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_17

    .line 775
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 776
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 777
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 778
    invoke-virtual {p0, v0}, Landroid/widget/Chronometer;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 780
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_17
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 390
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 391
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 392
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3
    .param p1, "visibility"    # I

    .line 383
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 384
    if-nez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    .line 385
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 386
    return-void
.end method

.method public setBase(J)V
    .registers 9
    .param p1, "base"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 243
    iget v0, p0, Landroid/widget/Chronometer;->mMode:I

    if-eqz v0, :cond_39

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p1, v0

    iput-wide v0, p0, Landroid/widget/Chronometer;->mBaseTimerSeconds:J

    .line 245
    iget-wide v2, p0, Landroid/widget/Chronometer;->mFirstTimerSeconds:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 246
    iput-wide v2, p0, Landroid/widget/Chronometer;->mBaseTimerSeconds:J

    .line 249
    :cond_14
    iget-wide v0, p0, Landroid/widget/Chronometer;->mOriginalBase:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    iget-wide v4, p0, Landroid/widget/Chronometer;->mBaseTimerSeconds:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_24

    goto :goto_34

    .line 252
    :cond_24
    long-to-float v0, v4

    long-to-float v2, v2

    div-float/2addr v0, v2

    .line 253
    .local v0, "scale":F
    iget v2, p0, Landroid/widget/Chronometer;->mProgress:I

    .line 254
    .local v2, "oldProgress":I
    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/Chronometer;->mProgress:I

    .line 255
    invoke-direct {p0, v3, v1}, Landroid/widget/Chronometer;->setProgressInternal(IZ)V

    goto :goto_39

    .line 250
    .end local v0    # "scale":F
    .end local v2    # "oldProgress":I
    :cond_34
    :goto_34
    iget v0, p0, Landroid/widget/Chronometer;->mMax:I

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->setProgressInternal(IZ)V

    .line 259
    :cond_39
    :goto_39
    iput-wide p1, p0, Landroid/widget/Chronometer;->mBase:J

    .line 260
    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 262
    return-void
.end method

.method public setCountDown(Z)V
    .registers 4
    .param p1, "countDown"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 205
    iput-boolean p1, p0, Landroid/widget/Chronometer;->mCountDown:Z

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 207
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 284
    iput-object p1, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    .line 285
    if-eqz p1, :cond_15

    iget-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_15

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 288
    :cond_15
    return-void
.end method

.method public setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/Chronometer$OnChronometerTickListener;

    .line 304
    iput-object p1, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    .line 305
    return-void
.end method

.method public setStarted(Z)V
    .registers 4
    .param p1, "started"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 354
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBaseTimerSeconds:J

    long-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Chronometer;->mProgressAnimationDuration:I

    .line 356
    if-eqz p1, :cond_10

    .line 357
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Landroid/widget/Chronometer;->setProgressInternal(IZ)V

    .line 361
    :cond_10
    iput-boolean p1, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 362
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 363
    return-void
.end method

.method public start()V
    .registers 3

    .line 326
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBaseTimerSeconds:J

    long-to-int v0, v0

    iput v0, p0, Landroid/widget/Chronometer;->mProgressAnimationDuration:I

    .line 327
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->setProgressInternal(IZ)V

    .line 330
    iput-boolean v1, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 331
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 332
    return-void
.end method

.method public stop()V
    .registers 2

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 343
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 344
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 1088
    iget-object v0, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_d

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
