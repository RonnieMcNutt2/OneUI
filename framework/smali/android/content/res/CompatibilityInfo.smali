.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field private static final HAS_OVERRIDE_SCALING:I = 0x20

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_COMPAT_RES:I = 0x10

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1

.field private static sOverrideInvertedScale:F


# instance fields
.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 116
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    .line 754
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 296
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1, v1}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    .line 299
    return-void
.end method

.method private constructor <init>(IIFF)V
    .registers 5
    .param p1, "compFlags"    # I
    .param p2, "dens"    # I
    .param p3, "scale"    # F
    .param p4, "invertedScale"    # F

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 289
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 290
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 291
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 292
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .registers 11
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "screenLayout"    # I
    .param p3, "sw"    # I
    .param p4, "forceCompat"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZF)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZF)V
    .registers 15
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "screenLayout"    # I
    .param p3, "sw"    # I
    .param p4, "forceCompat"    # Z
    .param p5, "overrideScale"    # F

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, "compatFlags":I
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_c

    .line 130
    or-int/lit8 v0, v0, 0x10

    .line 132
    :cond_c
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p5, v1

    if-eqz v2, :cond_26

    .line 133
    iput p5, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 134
    div-float/2addr v1, p5

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 135
    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 137
    const/16 v1, 0x24

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 139
    return-void

    .line 141
    :cond_26
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez v2, :cond_bb

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v2, :cond_bb

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v2, :cond_34

    goto/16 :goto_bb

    .line 190
    :cond_34
    const/4 v2, 0x2

    .line 196
    .local v2, "EXPANDABLE":I
    const/16 v3, 0x8

    .line 202
    .local v3, "LARGE_SCREENS":I
    const/16 v4, 0x20

    .line 204
    .local v4, "XLARGE_SCREENS":I
    const/4 v5, 0x0

    .line 208
    .local v5, "sizeInfo":I
    const/4 v6, 0x0

    .line 210
    .local v6, "anyResizeable":Z
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_48

    .line 211
    or-int/lit8 v5, v5, 0x8

    .line 212
    const/4 v6, 0x1

    .line 213
    if-nez p4, :cond_48

    .line 217
    or-int/lit8 v5, v5, 0x22

    .line 220
    :cond_48
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_54

    .line 221
    const/4 v6, 0x1

    .line 222
    if-nez p4, :cond_54

    .line 223
    or-int/lit8 v5, v5, 0x22

    .line 226
    :cond_54
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_5d

    .line 227
    const/4 v6, 0x1

    .line 228
    or-int/lit8 v5, v5, 0x2

    .line 231
    :cond_5d
    if-eqz p4, :cond_61

    .line 236
    and-int/lit8 v5, v5, -0x3

    .line 239
    :cond_61
    or-int/lit8 v0, v0, 0x8

    .line 240
    and-int/lit8 v7, p2, 0xf

    packed-switch v7, :pswitch_data_fa

    goto :goto_85

    .line 242
    :pswitch_69
    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_6f

    .line 243
    and-int/lit8 v0, v0, -0x9

    .line 245
    :cond_6f
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_85

    .line 246
    or-int/lit8 v0, v0, 0x4

    goto :goto_85

    .line 250
    :pswitch_77
    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_7d

    .line 251
    and-int/lit8 v0, v0, -0x9

    .line 253
    :cond_7d
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_85

    .line 254
    or-int/lit8 v0, v0, 0x4

    .line 259
    :cond_85
    :goto_85
    const/high16 v7, 0x10000000

    and-int/2addr v7, p2

    if-eqz v7, :cond_96

    .line 260
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_91

    .line 261
    and-int/lit8 v0, v0, -0x9

    goto :goto_9a

    .line 262
    :cond_91
    if-nez v6, :cond_9a

    .line 263
    or-int/lit8 v0, v0, 0x2

    goto :goto_9a

    .line 266
    :cond_96
    and-int/lit8 v0, v0, -0x9

    .line 267
    or-int/lit8 v0, v0, 0x4

    .line 270
    :cond_9a
    :goto_9a
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_a9

    .line 271
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 272
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 273
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto :goto_f6

    .line 275
    :cond_a9
    const/16 v7, 0xa0

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 276
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v7, v7

    const/high16 v8, 0x43200000    # 160.0f

    div-float/2addr v7, v8

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 278
    div-float/2addr v1, v7

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 279
    or-int/lit8 v0, v0, 0x1

    goto :goto_f6

    .line 144
    .end local v2    # "EXPANDABLE":I
    .end local v3    # "LARGE_SCREENS":I
    .end local v4    # "XLARGE_SCREENS":I
    .end local v5    # "sizeInfo":I
    .end local v6    # "anyResizeable":Z
    :cond_bb
    :goto_bb
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v2, :cond_c2

    .line 145
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    goto :goto_c4

    .line 146
    :cond_c2
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    :goto_c4
    nop

    .line 147
    .local v2, "required":I
    if-nez v2, :cond_c9

    .line 148
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 150
    :cond_c9
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v3, :cond_d0

    .line 151
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_d1

    :cond_d0
    move v3, v2

    .line 152
    .local v3, "compat":I
    :goto_d1
    if-ge v3, v2, :cond_d4

    .line 153
    move v3, v2

    .line 155
    :cond_d4
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 157
    .local v4, "largest":I
    const/16 v5, 0x140

    if-le v2, v5, :cond_dd

    .line 164
    or-int/lit8 v0, v0, 0x4

    goto :goto_ed

    .line 165
    :cond_dd
    if-eqz v4, :cond_e4

    if-le p3, v4, :cond_e4

    .line 169
    or-int/lit8 v0, v0, 0xa

    goto :goto_ed

    .line 170
    :cond_e4
    if-lt v3, p3, :cond_e9

    .line 173
    or-int/lit8 v0, v0, 0x4

    goto :goto_ed

    .line 174
    :cond_e9
    if-eqz p4, :cond_ed

    .line 177
    or-int/lit8 v0, v0, 0x8

    .line 181
    :cond_ed
    :goto_ed
    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v5, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 182
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 183
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 185
    .end local v2    # "required":I
    .end local v3    # "compat":I
    .end local v4    # "largest":I
    nop

    .line 283
    :goto_f6
    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 284
    return-void

    nop

    :pswitch_data_fa
    .packed-switch 0x3
        :pswitch_77
        :pswitch_69
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 769
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 770
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 771
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 772
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static applyOverrideScaleIfNeeded(Landroid/content/res/Configuration;)V
    .registers 2
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 609
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 610
    :cond_7
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    invoke-static {v0, p0}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FLandroid/content/res/Configuration;)V

    .line 611
    return-void
.end method

.method public static applyOverrideScaleIfNeeded(Landroid/util/MergedConfiguration;)V
    .registers 3
    .param p0, "mergedConfig"    # Landroid/util/MergedConfiguration;

    .line 615
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 616
    :cond_7
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FLandroid/content/res/Configuration;)V

    .line 617
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FLandroid/content/res/Configuration;)V

    .line 618
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FLandroid/content/res/Configuration;)V

    .line 619
    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .registers 15
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "outDm"    # Landroid/util/DisplayMetrics;

    .line 645
    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 646
    .local v0, "width":I
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 648
    .local v1, "height":I
    if-ge v0, v1, :cond_9

    .line 649
    move v2, v0

    .line 650
    .local v2, "shortSize":I
    move v3, v1

    .local v3, "longSize":I
    goto :goto_b

    .line 652
    .end local v2    # "shortSize":I
    .end local v3    # "longSize":I
    :cond_9
    move v2, v1

    .line 653
    .restart local v2    # "shortSize":I
    move v3, v0

    .line 655
    .restart local v3    # "longSize":I
    :goto_b
    const/high16 v4, 0x43a00000    # 320.0f

    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v5, v4

    float-to-int v5, v5

    .line 656
    .local v5, "newShortSize":I
    int-to-float v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    .line 657
    .local v6, "aspect":F
    const v7, 0x3fe3bbbc

    cmpl-float v7, v6, v7

    if-lez v7, :cond_21

    .line 658
    const v6, 0x3fe3bbbc

    .line 660
    :cond_21
    int-to-float v7, v5

    mul-float/2addr v7, v6

    add-float/2addr v7, v4

    float-to-int v4, v7

    .line 662
    .local v4, "newLongSize":I
    if-ge v0, v1, :cond_2a

    .line 663
    move v7, v5

    .line 664
    .local v7, "newWidth":I
    move v8, v4

    .local v8, "newHeight":I
    goto :goto_2c

    .line 666
    .end local v7    # "newWidth":I
    .end local v8    # "newHeight":I
    :cond_2a
    move v7, v4

    .line 667
    .restart local v7    # "newWidth":I
    move v8, v5

    .line 670
    .restart local v8    # "newHeight":I
    :goto_2c
    int-to-float v9, v0

    int-to-float v10, v7

    div-float/2addr v9, v10

    .line 671
    .local v9, "sw":F
    int-to-float v10, v1

    int-to-float v11, v8

    div-float/2addr v10, v11

    .line 672
    .local v10, "sh":F
    cmpg-float v11, v9, v10

    if-gez v11, :cond_38

    move v11, v9

    goto :goto_39

    :cond_38
    move v11, v10

    .line 673
    .local v11, "scale":F
    :goto_39
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v11, v12

    if-gez v12, :cond_41

    .line 674
    const/high16 v11, 0x3f800000    # 1.0f

    .line 677
    :cond_41
    if-eqz p1, :cond_47

    .line 678
    iput v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 679
    iput v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 682
    :cond_47
    return v11
.end method

.method public static getOverrideInvertedScale()F
    .registers 1

    .line 633
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    return v0
.end method

.method private static hasOverrideScale()Z
    .registers 2

    .line 623
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static scaleConfiguration(FLandroid/content/res/Configuration;)V
    .registers 4
    .param p0, "invertedRatio"    # F
    .param p1, "inoutConfig"    # Landroid/content/res/Configuration;

    .line 603
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 604
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p0}, Landroid/app/WindowConfiguration;->scale(F)V

    .line 605
    return-void
.end method

.method private static scaleDisplayMetrics(FLandroid/util/DisplayMetrics;Z)V
    .registers 5
    .param p0, "invertedRatio"    # F
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;
    .param p2, "applyToSize"    # Z

    .line 558
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v0, p0

    iput v0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 559
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 573
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v0, p0

    iput v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 574
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v0, p0

    iput v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 575
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v0, p0

    iput v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 576
    if-eqz p2, :cond_30

    .line 577
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 578
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 580
    :cond_30
    return-void
.end method

.method public static setOverrideInvertedScale(F)V
    .registers 1
    .param p0, "invertedRatio"    # F

    .line 628
    sput p0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    .line 629
    return-void
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .registers 2

    .line 324
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public applyDisplayMetricsIfNeeded(Landroid/util/DisplayMetrics;Z)V
    .registers 4
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;
    .param p2, "applyToSize"    # Z

    .line 530
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 531
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    invoke-static {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->scaleDisplayMetrics(FLandroid/util/DisplayMetrics;Z)V

    .line 532
    return-void

    .line 534
    :cond_c
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 535
    invoke-virtual {p0, p1}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 537
    :cond_17
    return-void
.end method

.method public applyToConfiguration(ILandroid/content/res/Configuration;)V
    .registers 4
    .param p1, "displayDensity"    # I
    .param p2, "inoutConfig"    # Landroid/content/res/Configuration;

    .line 583
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 584
    :cond_7
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_21

    .line 588
    iget v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 591
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 592
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 593
    iget v0, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 595
    :cond_21
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 596
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 597
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v0, p2}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FLandroid/content/res/Configuration;)V

    .line 599
    :cond_2e
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .registers 4
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;

    .line 540
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 541
    :cond_7
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 544
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    goto :goto_19

    .line 546
    :cond_11
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 547
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 550
    :goto_19
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 551
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/content/res/CompatibilityInfo;->scaleDisplayMetrics(FLandroid/util/DisplayMetrics;Z)V

    .line 553
    :cond_25
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 742
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 687
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 688
    return v0

    .line 691
    :cond_4
    const/4 v1, 0x0

    :try_start_5
    move-object v2, p1

    check-cast v2, Landroid/content/res/CompatibilityInfo;

    .line 692
    .local v2, "oc":Landroid/content/res/CompatibilityInfo;
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v3, v4, :cond_f

    return v1

    .line 693
    :cond_f
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-eq v3, v4, :cond_16

    return v1

    .line 694
    :cond_16
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1f

    return v1

    .line 695
    :cond_1f
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_23
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_23} :catch_29

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_28

    return v1

    .line 696
    :cond_28
    return v0

    .line 697
    .end local v2    # "oc":Landroid/content/res/CompatibilityInfo;
    :catch_29
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/ClassCastException;
    return v1
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .registers 2

    .line 337
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public hasOverrideScaling()Z
    .registers 2

    .line 311
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 732
    const/16 v0, 0x11

    .line 733
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/2addr v1, v2

    .line 734
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int/2addr v0, v2

    .line 735
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 736
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 737
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isScalingRequired()Z
    .registers 3

    .line 306
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public needsCompatResources()Z
    .registers 2

    .line 328
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public neverSupportsScreen()Z
    .registers 2

    .line 320
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public supportsScreen()Z
    .registers 2

    .line 316
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 705
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 707
    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 709
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 711
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    :cond_2d
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->hasOverrideScaling()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 714
    const-string v1, " overrideInvScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 717
    :cond_3d
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_48

    .line 718
    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    :cond_48
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 721
    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    :cond_53
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 724
    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    :cond_5e
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 747
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 750
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 751
    return-void
.end method
