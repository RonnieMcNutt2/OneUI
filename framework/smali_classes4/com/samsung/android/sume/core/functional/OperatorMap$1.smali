.class Lcom/samsung/android/sume/core/functional/OperatorMap$1;
.super Ljava/util/HashMap;
.source "OperatorMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/functional/OperatorMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/sume/core/types/ImgpType;",
        "Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 26
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->RESIZE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->DECODE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ENCODE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_COLOR:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_DATA:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ROTATE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CROP:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->SPLIT:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->MERGE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method static synthetic lambda$new$0(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/String;)Lcom/samsung/android/sume/core/types/SplitType;
    .registers 3
    .param p0, "output"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p1, "e"    # Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/samsung/android/sume/core/types/SplitType;->NONE:Lcom/samsung/android/sume/core/types/SplitType;

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/SplitType;

    return-object v0
.end method

.method static synthetic lambda$new$1(Lcom/samsung/android/sume/core/types/SplitType;)Z
    .registers 2
    .param p0, "e"    # Lcom/samsung/android/sume/core/types/SplitType;

    .line 29
    sget-object v0, Lcom/samsung/android/sume/core/types/SplitType;->TILE:Lcom/samsung/android/sume/core/types/SplitType;

    if-eq p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic lambda$new$10(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .registers 4
    .param p0, "input"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .param p1, "output"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p2, "priorityCompute"    # Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

    .line 106
    const-string/jumbo v0, "merge-type"

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 107
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_b
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic lambda$new$2(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .registers 11
    .param p0, "input"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .param p1, "output"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p2, "priorityCompute"    # Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

    .line 27
    const-string/jumbo v0, "split-type"

    const-string/jumbo v1, "merge-type"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    .line 28
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda10;-><init>()V

    .line 29
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 31
    .local v0, "isNotTiled":Z
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2e

    move v1, v2

    goto :goto_2f

    :cond_2e
    move v1, v5

    .line 32
    .local v1, "inShapeIsGiven":Z
    :goto_2f
    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->size()J

    move-result-wide v6

    cmp-long v3, v6, v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v2, v5

    .line 34
    .local v2, "outShapeIsGiven":Z
    :goto_39
    if-eqz v0, :cond_60

    if-eqz v1, :cond_60

    if-eqz v2, :cond_60

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getCols()I

    move-result v3

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v4

    if-ne v3, v4, :cond_53

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getRows()I

    move-result v3

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v4

    if-eq v3, v4, :cond_60

    .line 35
    :cond_53
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v3

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/samsung/android/sume/core/functional/OpPriorityCompute;->compute(Lcom/samsung/android/sume/core/format/Shape;Lcom/samsung/android/sume/core/format/Shape;)F

    move-result v3

    return v3

    .line 37
    :cond_60
    const/high16 v3, -0x40800000    # -1.0f

    return v3
.end method

.method static synthetic lambda$new$3(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .registers 5
    .param p0, "input"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .param p1, "output"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p2, "priorityCompute"    # Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

    .line 42
    const-string v0, "file-descriptor"

    invoke-interface {p0, v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "input-file"

    invoke-interface {p0, v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 43
    :cond_10
    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq v0, v1, :cond_1a

    .line 44
    const/4 v0, 0x0

    return v0

    .line 46
    :cond_1a
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic lambda$new$4(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .registers 5
    .param p0, "input"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .param p1, "output"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p2, "priorityCompute"    # Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

    .line 51
    const-string v0, "file-descriptor"

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "output-file"

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 52
    :cond_11
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq v0, v1, :cond_1d

    .line 53
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    .line 55
    :cond_1d
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic lambda$new$5(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .registers 5
    .param p0, "input"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .param p1, "output"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p2, "priorityCompute"    # Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

    .line 60
    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq v0, v1, :cond_1f

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    if-eq v0, v1, :cond_1f

    .line 61
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/sume/core/functional/OpPriorityCompute;->compute(Lcom/samsung/android/sume/core/types/ColorFormat;Lcom/samsung/android/sume/core/types/ColorFormat;)F

    move-result v0

    return v0

    .line 63
    :cond_1f
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic lambda$new$6(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .registers 5
    .param p0, "input"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .param p1, "output"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p2, "priorityCompute"    # Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

    .line 68
    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->NONE:Lcom/samsung/android/sume/core/types/DataType;

    if-eq v0, v1, :cond_1f

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    if-eq v0, v1, :cond_1f

    .line 69
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/sume/core/functional/OpPriorityCompute;->compute(Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/types/DataType;)F

    move-result v0

    return v0

    .line 71
    :cond_1f
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic lambda$new$7(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .registers 7
    .param p0, "input"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .param p1, "output"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p2, "priorityCompute"    # Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

    .line 76
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 78
    .local v0, "inShapeIsGiven":Z
    :goto_d
    if-eqz v0, :cond_25

    const-string/jumbo v1, "rotation-degrees"

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 79
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/samsung/android/sume/core/functional/OpPriorityCompute;->compute(Lcom/samsung/android/sume/core/format/Shape;Lcom/samsung/android/sume/core/format/Shape;)F

    move-result v1

    return v1

    .line 81
    :cond_25
    const/high16 v1, -0x40800000    # -1.0f

    return v1
.end method

.method static synthetic lambda$new$8(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .registers 5
    .param p0, "input"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .param p1, "output"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p2, "priorityCompute"    # Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

    .line 86
    const-string v0, "crop"

    const-string v1, "center-crop"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->containsAnyOf([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 90
    const/4 v0, 0x1

    return v0

    .line 93
    :cond_10
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic lambda$new$9(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .registers 4
    .param p0, "input"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .param p1, "output"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p2, "priorityCompute"    # Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

    .line 98
    const-string/jumbo v0, "split-type"

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 99
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    .line 101
    :cond_d
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method
