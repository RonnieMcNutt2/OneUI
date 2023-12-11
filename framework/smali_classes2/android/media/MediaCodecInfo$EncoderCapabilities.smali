.class public final Landroid/media/MediaCodecInfo$EncoderCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EncoderCapabilities"
.end annotation


# static fields
.field public static final BITRATE_MODE_CBR:I = 0x2

.field public static final BITRATE_MODE_CBR_FD:I = 0x3

.field public static final BITRATE_MODE_CQ:I = 0x0

.field public static final BITRATE_MODE_VBR:I = 0x1

.field private static final bitrates:[Landroid/media/MediaCodecInfo$Feature;


# instance fields
.field private mBitControl:I

.field private mComplexityRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultComplexity:Ljava/lang/Integer;

.field private mDefaultQuality:Ljava/lang/Integer;

.field private mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private mQualityRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQualityScale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 3661
    new-instance v0, Landroid/media/MediaCodecInfo$Feature;

    const-string v1, "VBR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "CBR"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    new-instance v2, Landroid/media/MediaCodecInfo$Feature;

    const-string v3, "CQ"

    invoke-direct {v2, v3, v4, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    new-instance v3, Landroid/media/MediaCodecInfo$Feature;

    const-string v5, "CBR-FD"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    filled-new-array {v0, v1, v2, v3}, [Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    sput-object v0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyLevelLimits()V
    .registers 4

    .line 3716
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 3717
    .local v0, "mime":Ljava/lang/String;
    const-string v1, "audio/flac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3718
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    .line 3719
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    goto :goto_4e

    .line 3720
    :cond_23
    const-string v1, "audio/3gpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 3721
    const-string v1, "audio/amr-wb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 3722
    const-string v1, "audio/g711-alaw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 3723
    const-string v1, "audio/g711-mlaw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 3724
    const-string v1, "audio/gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 3725
    :cond_4b
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    .line 3727
    :cond_4e
    :goto_4e
    return-void
.end method

.method public static create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$EncoderCapabilities;
    .registers 3
    .param p0, "info"    # Landroid/media/MediaFormat;
    .param p1, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 3699
    new-instance v0, Landroid/media/MediaCodecInfo$EncoderCapabilities;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;-><init>()V

    .line 3700
    .local v0, "caps":Landroid/media/MediaCodecInfo$EncoderCapabilities;
    invoke-direct {v0, p0, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 3701
    return-object v0
.end method

.method private init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .registers 5
    .param p1, "info"    # Landroid/media/MediaFormat;
    .param p2, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 3706
    iput-object p2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 3707
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    .line 3708
    invoke-static {v0, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    .line 3709
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    .line 3711
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->applyLevelLimits()V

    .line 3712
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    .line 3713
    return-void
.end method

.method private static parseBitrateMode(Ljava/lang/String;)I
    .registers 7
    .param p0, "mode"    # Ljava/lang/String;

    .line 3669
    sget-object v0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_17

    aget-object v4, v0, v3

    .line 3670
    .local v4, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget-object v5, v4, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 3671
    iget v0, v4, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    return v0

    .line 3669
    .end local v4    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 3674
    :cond_17
    return v2
.end method

.method private parseFromInfo(Landroid/media/MediaFormat;)V
    .registers 10
    .param p1, "info"    # Landroid/media/MediaFormat;

    .line 3735
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 3737
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "complexity-range"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3738
    nop

    .line 3739
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    invoke-static {v1, v2}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    .line 3742
    :cond_19
    const-string v1, "quality-range"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 3743
    nop

    .line 3744
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    invoke-static {v1, v2}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    .line 3746
    :cond_2e
    const-string v1, "feature-bitrate-modes"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 3747
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    .line 3748
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    :goto_44
    if-ge v2, v3, :cond_57

    aget-object v4, v1, v2

    .line 3749
    .local v4, "mode":Ljava/lang/String;
    iget v5, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    invoke-static {v4}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->parseBitrateMode(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    shl-int v6, v7, v6

    or-int/2addr v5, v6

    iput v5, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    .line 3748
    .end local v4    # "mode":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 3754
    :cond_57
    :try_start_57
    const-string v1, "complexity-default"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultComplexity:Ljava/lang/Integer;
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_69} :catch_6a

    goto :goto_6b

    .line 3755
    :catch_6a
    move-exception v1

    :goto_6b
    nop

    .line 3758
    :try_start_6c
    const-string v1, "quality-default"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultQuality:Ljava/lang/Integer;
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_7e} :catch_7f

    goto :goto_80

    .line 3759
    :catch_7f
    move-exception v1

    :goto_80
    nop

    .line 3761
    const-string v1, "quality-scale"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityScale:Ljava/lang/String;

    .line 3762
    return-void
.end method

.method private supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 12
    .param p1, "complexity"    # Ljava/lang/Integer;
    .param p2, "quality"    # Ljava/lang/Integer;
    .param p3, "profile"    # Ljava/lang/Integer;

    .line 3766
    const/4 v0, 0x1

    .line 3767
    .local v0, "ok":Z
    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 3768
    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    invoke-virtual {v1, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    .line 3770
    :cond_b
    if-eqz v0, :cond_15

    if-eqz p2, :cond_15

    .line 3771
    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    invoke-virtual {v1, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    .line 3773
    :cond_15
    if-eqz v0, :cond_35

    if-eqz p3, :cond_35

    .line 3774
    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v1, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_20
    if-ge v4, v2, :cond_31

    aget-object v5, v1, v4

    .line 3775
    .local v5, "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v6, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_2e

    .line 3776
    const/4 p3, 0x0

    .line 3777
    goto :goto_31

    .line 3774
    .end local v5    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 3780
    :cond_31
    :goto_31
    if-nez p3, :cond_34

    const/4 v3, 0x1

    :cond_34
    move v0, v3

    .line 3782
    :cond_35
    return v0
.end method


# virtual methods
.method public getComplexityRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3649
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    return-object v0
.end method

.method public getDefaultFormat(Landroid/media/MediaFormat;)V
    .registers 9
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 3788
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultQuality:Ljava/lang/Integer;

    if-eqz v0, :cond_21

    .line 3790
    const-string v1, "quality"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3792
    :cond_21
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultComplexity:Ljava/lang/Integer;

    if-eqz v0, :cond_42

    .line 3794
    const-string v1, "complexity"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3797
    :cond_42
    sget-object v0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_46
    if-ge v2, v1, :cond_5f

    aget-object v3, v0, v2

    .line 3798
    .local v3, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget v4, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    iget v5, v3, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    const/4 v6, 0x1

    shl-int v5, v6, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_5c

    .line 3799
    const-string v0, "bitrate-mode"

    iget v1, v3, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3800
    goto :goto_5f

    .line 3797
    .end local v3    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 3803
    :cond_5f
    :goto_5f
    return-void
.end method

.method public getQualityRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3637
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    return-object v0
.end method

.method public isBitrateModeSupported(I)Z
    .registers 8
    .param p1, "mode"    # I

    .line 3681
    sget-object v0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_1a

    aget-object v4, v0, v3

    .line 3682
    .local v4, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget v5, v4, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    if-ne p1, v5, :cond_17

    .line 3683
    iget v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    const/4 v1, 0x1

    shl-int v3, v1, p1

    and-int/2addr v0, v3

    if-eqz v0, :cond_16

    move v2, v1

    :cond_16
    return v2

    .line 3681
    .end local v4    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 3686
    :cond_1a
    return v2
.end method

.method public supportsFormat(Landroid/media/MediaFormat;)Z
    .registers 10
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 3807
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 3808
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 3810
    .local v1, "mime":Ljava/lang/String;
    const-string v2, "bitrate-mode"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3811
    .local v2, "mode":Ljava/lang/Integer;
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v3

    if-nez v3, :cond_20

    .line 3812
    const/4 v3, 0x0

    return v3

    .line 3815
    :cond_20
    const-string v3, "complexity"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3816
    .local v3, "complexity":Ljava/lang/Integer;
    const-string v4, "audio/flac"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 3817
    nop

    .line 3818
    const-string v4, "flac-compression-level"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 3819
    .local v4, "flacComplexity":Ljava/lang/Integer;
    if-nez v3, :cond_3d

    .line 3820
    move-object v3, v4

    goto :goto_4e

    .line 3821
    :cond_3d
    if-eqz v4, :cond_4e

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    goto :goto_4e

    .line 3822
    :cond_46
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "conflicting values for complexity and flac-compression-level"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3829
    .end local v4    # "flacComplexity":Ljava/lang/Integer;
    :cond_4e
    :goto_4e
    const-string v4, "profile"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 3830
    .local v4, "profile":Ljava/lang/Integer;
    const-string v5, "audio/mp4a-latm"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 3831
    const-string v5, "aac-profile"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 3832
    .local v5, "aacProfile":Ljava/lang/Integer;
    if-nez v4, :cond_6a

    .line 3833
    move-object v4, v5

    goto :goto_7b

    .line 3834
    :cond_6a
    if-eqz v5, :cond_7b

    invoke-virtual {v5, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    goto :goto_7b

    .line 3835
    :cond_73
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "conflicting values for profile and aac-profile"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3840
    .end local v5    # "aacProfile":Ljava/lang/Integer;
    :cond_7b
    :goto_7b
    const-string v5, "quality"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 3842
    .local v5, "quality":Ljava/lang/Integer;
    invoke-direct {p0, v3, v5, v4}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v6

    return v6
.end method
