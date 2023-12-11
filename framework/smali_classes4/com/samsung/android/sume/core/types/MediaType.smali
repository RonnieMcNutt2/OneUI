.class public final enum Lcom/samsung/android/sume/core/types/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"

# interfaces
.implements Lcom/samsung/android/sume/core/types/NumericEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/types/MediaType$Flag;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/core/types/MediaType;",
        ">;",
        "Lcom/samsung/android/sume/core/types/NumericEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum COMPRESSED_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final FLAG_COMPRESSED:I = 0x1

.field public static final enum IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum META:Lcom/samsung/android/sume/core/types/MediaType;

.field private static final MT_FLAG_SHIFT:I = 0x4

.field private static final MT_RANK_MASK:I = 0xf

.field private static final MT_RANK_MAX:I = 0x10

.field public static final enum NONE:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum RAW_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum RAW_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum SCALA:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum _MAX_RANK_:Lcom/samsung/android/sume/core/types/MediaType;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sume/core/types/MediaType;
    .registers 13

    .line 14
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->NONE:Lcom/samsung/android/sume/core/types/MediaType;

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    sget-object v2, Lcom/samsung/android/sume/core/types/MediaType;->AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    sget-object v3, Lcom/samsung/android/sume/core/types/MediaType;->VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    sget-object v4, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    sget-object v5, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    sget-object v6, Lcom/samsung/android/sume/core/types/MediaType;->_MAX_RANK_:Lcom/samsung/android/sume/core/types/MediaType;

    sget-object v7, Lcom/samsung/android/sume/core/types/MediaType;->RAW_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    sget-object v8, Lcom/samsung/android/sume/core/types/MediaType;->RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    sget-object v9, Lcom/samsung/android/sume/core/types/MediaType;->RAW_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    sget-object v10, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    sget-object v11, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    sget-object v12, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    filled-new-array/range {v0 .. v12}, [Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 9

    .line 15
    new-instance v0, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/MediaType;->NONE:Lcom/samsung/android/sume/core/types/MediaType;

    .line 16
    new-instance v0, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v1, "IMAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/MediaType;->IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    .line 17
    new-instance v1, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v4, "AUDIO"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v5, v5}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sume/core/types/MediaType;->AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 18
    new-instance v4, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v5, "VIDEO"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v6}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sume/core/types/MediaType;->VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 19
    new-instance v5, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v6, "META"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v7}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    .line 20
    new-instance v5, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v6, "SCALA"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    .line 21
    new-instance v5, Lcom/samsung/android/sume/core/types/MediaType;

    const/4 v6, 0x6

    const/16 v7, 0x10

    const-string v8, "_MAX_RANK_"

    invoke-direct {v5, v8, v6, v7}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sume/core/types/MediaType;->_MAX_RANK_:Lcom/samsung/android/sume/core/types/MediaType;

    .line 23
    new-instance v5, Lcom/samsung/android/sume/core/types/MediaType;

    const/4 v6, 0x7

    invoke-static {v0, v2}, Lcom/samsung/android/sume/core/types/MediaType;->typeValueOf(Lcom/samsung/android/sume/core/types/MediaType;I)I

    move-result v7

    const-string v8, "RAW_IMAGE"

    invoke-direct {v5, v8, v6, v7}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sume/core/types/MediaType;->RAW_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    .line 24
    new-instance v5, Lcom/samsung/android/sume/core/types/MediaType;

    const/16 v6, 0x8

    invoke-static {v1, v2}, Lcom/samsung/android/sume/core/types/MediaType;->typeValueOf(Lcom/samsung/android/sume/core/types/MediaType;I)I

    move-result v7

    const-string v8, "RAW_AUDIO"

    invoke-direct {v5, v8, v6, v7}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sume/core/types/MediaType;->RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 25
    new-instance v5, Lcom/samsung/android/sume/core/types/MediaType;

    const/16 v6, 0x9

    invoke-static {v4, v2}, Lcom/samsung/android/sume/core/types/MediaType;->typeValueOf(Lcom/samsung/android/sume/core/types/MediaType;I)I

    move-result v2

    const-string v7, "RAW_VIDEO"

    invoke-direct {v5, v7, v6, v2}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sume/core/types/MediaType;->RAW_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 26
    new-instance v2, Lcom/samsung/android/sume/core/types/MediaType;

    const/16 v5, 0xa

    invoke-static {v0, v3}, Lcom/samsung/android/sume/core/types/MediaType;->typeValueOf(Lcom/samsung/android/sume/core/types/MediaType;I)I

    move-result v0

    const-string v6, "COMPRESSED_IMAGE"

    invoke-direct {v2, v6, v5, v0}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    .line 27
    new-instance v0, Lcom/samsung/android/sume/core/types/MediaType;

    const/16 v2, 0xb

    invoke-static {v1, v3}, Lcom/samsung/android/sume/core/types/MediaType;->typeValueOf(Lcom/samsung/android/sume/core/types/MediaType;I)I

    move-result v1

    const-string v5, "COMPRESSED_AUDIO"

    invoke-direct {v0, v5, v2, v1}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 28
    new-instance v0, Lcom/samsung/android/sume/core/types/MediaType;

    const/16 v1, 0xc

    invoke-static {v4, v3}, Lcom/samsung/android/sume/core/types/MediaType;->typeValueOf(Lcom/samsung/android/sume/core/types/MediaType;I)I

    move-result v2

    const-string v3, "COMPRESSED_VIDEO"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 14
    invoke-static {}, Lcom/samsung/android/sume/core/types/MediaType;->$values()[Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/types/MediaType;->$VALUES:[Lcom/samsung/android/sume/core/types/MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/samsung/android/sume/core/types/MediaType;->value:I

    .line 39
    return-void
.end method

.method static synthetic lambda$of$0(ILcom/samsung/android/sume/core/types/MediaType;)Z
    .registers 3
    .param p0, "value"    # I
    .param p1, "e"    # Lcom/samsung/android/sume/core/types/MediaType;

    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/MediaType;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$of$1(I)Ljava/security/InvalidParameterException;
    .registers 4
    .param p0, "value"    # I

    .line 77
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid MediaType value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static of(I)Lcom/samsung/android/sume/core/types/MediaType;
    .registers 3
    .param p0, "value"    # I

    .line 74
    invoke-static {}, Lcom/samsung/android/sume/core/types/MediaType;->values()[Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/types/MediaType$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/types/MediaType$$ExternalSyntheticLambda0;-><init>(I)V

    .line 75
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/types/MediaType$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/types/MediaType$$ExternalSyntheticLambda1;-><init>(I)V

    .line 77
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/MediaType;

    .line 74
    return-object v0
.end method

.method public static of(Lcom/samsung/android/sume/core/types/MediaType;I)Lcom/samsung/android/sume/core/types/MediaType;
    .registers 3
    .param p0, "rank"    # Lcom/samsung/android/sume/core/types/MediaType;
    .param p1, "flag"    # I

    .line 81
    invoke-static {p0, p1}, Lcom/samsung/android/sume/core/types/MediaType;->typeValueOf(Lcom/samsung/android/sume/core/types/MediaType;I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/types/MediaType;->of(I)Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    return-object v0
.end method

.method private static typeValueOf(Lcom/samsung/android/sume/core/types/MediaType;I)I
    .registers 6
    .param p0, "rank"    # Lcom/samsung/android/sume/core/types/MediaType;
    .param p1, "flag"    # I

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->getValue()I

    move-result v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->_MAX_RANK_:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/MediaType;->getValue()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1st argument is not depth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->getValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 68
    invoke-static {v0, v1, v2}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->getValue()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/types/MediaType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/MediaType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sume/core/types/MediaType;
    .registers 1

    .line 14
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->$VALUES:[Lcom/samsung/android/sume/core/types/MediaType;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/types/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/types/MediaType;

    return-object v0
.end method


# virtual methods
.method public flag()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/samsung/android/sume/core/types/MediaType;->value:I

    shr-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getValue()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/samsung/android/sume/core/types/MediaType;->value:I

    return v0
.end method

.method public isAudio()Z
    .registers 3

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->rank()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isCompressed()Z
    .registers 3

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->flag()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public isImage()Z
    .registers 3

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->rank()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isMetaData()Z
    .registers 3

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->rank()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isRaw()Z
    .registers 3

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->flag()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public isScala()Z
    .registers 3

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->rank()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isVideo()Z
    .registers 3

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->rank()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public rank()Lcom/samsung/android/sume/core/types/MediaType;
    .registers 2

    .line 54
    iget v0, p0, Lcom/samsung/android/sume/core/types/MediaType;->value:I

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Lcom/samsung/android/sume/core/types/MediaType;->of(I)Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public stringfy()Ljava/lang/String;
    .registers 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/core/types/MediaType;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
