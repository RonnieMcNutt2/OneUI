.class public final Landroid/media/VolumeShaper$Configuration$Builder;
.super Ljava/lang/Object;
.source "VolumeShaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDurationMs:D

.field private mId:I

.field private mInterpolatorType:I

.field private mOptionFlags:I

.field private mTimes:[F

.field private mType:I

.field private mVolumes:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    .line 869
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    .line 870
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 871
    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 872
    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 873
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 874
    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 880
    return-void
.end method

.method public constructor <init>(Landroid/media/VolumeShaper$Configuration;)V
    .registers 4
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    .line 869
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    .line 870
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 871
    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 872
    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 873
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 874
    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 889
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getType()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    .line 890
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getId()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    .line 891
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getAllOptionFlags()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 892
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getInterpolatorType()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 893
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getDuration()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 894
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getTimes()[F

    move-result-object v0

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 895
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getVolumes()[F

    move-result-object v0

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 896
    return-void
.end method


# virtual methods
.method public build()Landroid/media/VolumeShaper$Configuration;
    .registers 15

    .line 1145
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1146
    .local v0, "log":Z
    :goto_9
    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v2, v3, v0, v1}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V

    .line 1147
    new-instance v1, Landroid/media/VolumeShaper$Configuration;

    iget v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    iget v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    iget v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    iget-wide v8, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    iget v10, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    iget-object v11, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v12, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    const/4 v13, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[FLandroid/media/VolumeShaper$Configuration-IA;)V

    return-object v1
.end method

.method public invertVolumes()Landroid/media/VolumeShaper$Configuration$Builder;
    .registers 8

    .line 1052
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 1053
    .local v0, "log":Z
    :goto_a
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v3, v4, v0, v1}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V

    .line 1054
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v3, v1, v2

    .line 1055
    .local v3, "min":F
    aget v1, v1, v2

    .line 1056
    .local v1, "max":F
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_18
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v4

    if-ge v2, v5, :cond_2f

    .line 1057
    aget v5, v4, v2

    cmpg-float v6, v5, v3

    if-gez v6, :cond_26

    .line 1058
    aget v3, v4, v2

    goto :goto_2c

    .line 1059
    :cond_26
    cmpl-float v5, v5, v1

    if-lez v5, :cond_2c

    .line 1060
    aget v1, v4, v2

    .line 1056
    :cond_2c
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1064
    .end local v2    # "i":I
    :cond_2f
    add-float v2, v1, v3

    .line 1065
    .local v2, "maxmin":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_32
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v6, v5

    if-ge v4, v6, :cond_40

    .line 1066
    aget v6, v5, v4

    sub-float v6, v2, v6

    aput v6, v5, v4

    .line 1065
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 1068
    .end local v4    # "i":I
    :cond_40
    return-object p0
.end method

.method public reflectTimes()Landroid/media/VolumeShaper$Configuration$Builder;
    .registers 8

    .line 1027
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1028
    .local v0, "log":Z
    :goto_9
    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v2, v3, v0, v1}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V

    .line 1030
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v4, v3

    div-int/lit8 v4, v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v2, v4, :cond_3e

    .line 1031
    aget v4, v3, v2

    .line 1032
    .local v4, "temp":F
    array-length v6, v3

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    aget v6, v3, v6

    sub-float v6, v5, v6

    aput v6, v3, v2

    .line 1033
    array-length v6, v3

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    sub-float/2addr v5, v4

    aput v5, v3, v6

    .line 1034
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v4, v3, v2

    .line 1035
    array-length v5, v3

    sub-int/2addr v5, v1

    sub-int/2addr v5, v2

    aget v5, v3, v5

    aput v5, v3, v2

    .line 1036
    array-length v5, v3

    sub-int/2addr v5, v1

    sub-int/2addr v5, v2

    aput v4, v3, v5

    .line 1030
    .end local v4    # "temp":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1038
    :cond_3e
    array-length v4, v3

    and-int/2addr v1, v4

    if-eqz v1, :cond_47

    .line 1039
    aget v1, v3, v2

    sub-float/2addr v5, v1

    aput v5, v3, v2

    .line 1041
    :cond_47
    return-object p0
.end method

.method public scaleToEndVolume(F)Landroid/media/VolumeShaper$Configuration$Builder;
    .registers 10
    .param p1, "volume"    # F

    .line 1083
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 1084
    .local v0, "log":Z
    :goto_a
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v3, v4, v0, v1}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V

    .line 1085
    invoke-static {p1, v0}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckValidVolumeAndThrowException(FZ)V

    .line 1086
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v2, v3, v2

    .line 1087
    .local v2, "startVolume":F
    array-length v4, v3

    sub-int/2addr v4, v1

    aget v1, v3, v4

    .line 1088
    .local v1, "endVolume":F
    cmpl-float v3, v1, v2

    if-nez v3, :cond_36

    .line 1090
    sub-float v3, p1, v2

    .line 1091
    .local v3, "offset":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v6, v5

    if-ge v4, v6, :cond_35

    .line 1092
    aget v6, v5, v4

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v7, v7, v4

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    aput v6, v5, v4

    .line 1091
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 1094
    .end local v3    # "offset":F
    .end local v4    # "i":I
    :cond_35
    goto :goto_4b

    .line 1096
    :cond_36
    sub-float v3, p1, v2

    sub-float v4, v1, v2

    div-float/2addr v3, v4

    .line 1097
    .local v3, "scale":F
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3c
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v6, v5

    if-ge v4, v6, :cond_4b

    .line 1098
    aget v6, v5, v4

    sub-float/2addr v6, v2

    mul-float/2addr v6, v3

    add-float/2addr v6, v2

    aput v6, v5, v4

    .line 1097
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 1101
    .end local v3    # "scale":F
    .end local v4    # "i":I
    :cond_4b
    :goto_4b
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v3, v0}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smclampVolume([FZ)V

    .line 1102
    return-object p0
.end method

.method public scaleToStartVolume(F)Landroid/media/VolumeShaper$Configuration$Builder;
    .registers 11
    .param p1, "volume"    # F

    .line 1117
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 1118
    .local v0, "log":Z
    :goto_a
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v3, v4, v0, v1}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V

    .line 1119
    invoke-static {p1, v0}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckValidVolumeAndThrowException(FZ)V

    .line 1120
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v2, v3, v2

    .line 1121
    .local v2, "startVolume":F
    array-length v4, v3

    sub-int/2addr v4, v1

    aget v1, v3, v4

    .line 1122
    .local v1, "endVolume":F
    cmpl-float v3, v1, v2

    if-nez v3, :cond_39

    .line 1124
    sub-float v3, p1, v2

    .line 1125
    .local v3, "offset":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v6, v5

    if-ge v4, v6, :cond_38

    .line 1126
    aget v6, v5, v4

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v7, v7, v4

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v7

    mul-float/2addr v8, v3

    add-float/2addr v6, v8

    aput v6, v5, v4

    .line 1125
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 1128
    .end local v3    # "offset":F
    .end local v4    # "i":I
    :cond_38
    goto :goto_4e

    .line 1129
    :cond_39
    sub-float v3, p1, v1

    sub-float v4, v2, v1

    div-float/2addr v3, v4

    .line 1130
    .local v3, "scale":F
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3f
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v6, v5

    if-ge v4, v6, :cond_4e

    .line 1131
    aget v6, v5, v4

    sub-float/2addr v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v6, v1

    aput v6, v5, v4

    .line 1130
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 1134
    .end local v3    # "scale":F
    .end local v4    # "i":I
    :cond_4e
    :goto_4e
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v3, v0}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smclampVolume([FZ)V

    .line 1135
    return-object p0
.end method

.method public setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;
    .registers 6
    .param p1, "times"    # [F
    .param p2, "volumes"    # [F

    .line 1011
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    goto :goto_9

    :cond_8
    move v1, v2

    :goto_9
    move v0, v1

    .line 1012
    .local v0, "log":Z
    invoke-static {p1, p2, v0, v2}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V

    .line 1013
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 1014
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 1015
    return-object p0
.end method

.method public setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;
    .registers 6
    .param p1, "durationMillis"    # J

    .line 974
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_a

    .line 978
    long-to-double v0, p1

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 979
    return-object p0

    .line 975
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setId(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .registers 5
    .param p1, "id"    # I

    .line 907
    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    .line 910
    iput p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    .line 911
    return-object p0

    .line 908
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .registers 5
    .param p1, "interpolatorType"    # I

    .line 928
    packed-switch p1, :pswitch_data_20

    .line 936
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid interpolatorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :pswitch_1c
    iput p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 934
    nop

    .line 939
    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .registers 5
    .param p1, "optionFlags"    # I

    .line 956
    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_c

    .line 959
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    and-int/lit8 v0, v0, -0x4

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 960
    return-object p0

    .line 957
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid bits in flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
