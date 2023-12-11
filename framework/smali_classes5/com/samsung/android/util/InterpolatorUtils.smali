.class public Lcom/samsung/android/util/InterpolatorUtils;
.super Ljava/lang/Object;
.source "InterpolatorUtils.java"


# static fields
.field public static final LINEAR:Landroid/animation/TimeInterpolator;

.field public static final ONE_EASING:Landroid/view/animation/PathInterpolator;

.field public static final SINE_IN_OUT_10:Landroid/view/animation/PathInterpolator;

.field public static final SINE_IN_OUT_60:Landroid/view/animation/PathInterpolator;

.field public static final SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

.field public static final SINE_OUT_33:Landroid/view/animation/PathInterpolator;

.field public static final SINE_OUT_60:Landroid/view/animation/PathInterpolator;

.field public static final SINE_OUT_70:Landroid/view/animation/PathInterpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 48
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    .line 50
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3db851ec    # 0.09f

    const v2, 0x3f2b851f    # 0.67f

    const v5, 0x3e2e147b    # 0.17f

    invoke-direct {v0, v5, v1, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_33:Landroid/view/animation/PathInterpolator;

    .line 51
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v5, v5, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 52
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v5, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_70:Landroid/view/animation/PathInterpolator;

    .line 54
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f666666    # 0.9f

    const v5, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v5, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_10:Landroid/view/animation/PathInterpolator;

    .line 55
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v3, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 56
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v5, v3, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

    .line 58
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/util/InterpolatorUtils;->LINEAR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
