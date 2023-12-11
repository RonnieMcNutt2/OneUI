.class Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;
.super Ljava/lang/Object;
.source "StapleMutableMediaFormat.java"

# interfaces
.implements Lcom/samsung/android/sume/core/format/MutableMediaFormat;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

.field private colorSpace:Lcom/samsung/android/sume/core/types/ColorSpace;

.field protected dataType:Lcom/samsung/android/sume/core/types/DataType;

.field protected mediaType:Lcom/samsung/android/sume/core/types/MediaType;

.field protected shape:Lcom/samsung/android/sume/core/format/MutableShape;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 33
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorSpace;->NONE:Lcom/samsung/android/sume/core/types/ColorSpace;

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorSpace:Lcom/samsung/android/sume/core/types/ColorSpace;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    .line 36
    return-void
.end method

.method public varargs constructor <init>(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "mediaType"    # Lcom/samsung/android/sume/core/types/MediaType;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 33
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorSpace;->NONE:Lcom/samsung/android/sume/core/types/ColorSpace;

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorSpace:Lcom/samsung/android/sume/core/types/ColorSpace;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    .line 39
    iput-object p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->mediaType:Lcom/samsung/android/sume/core/types/MediaType;

    .line 40
    sget-object v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$1;->$SwitchMap$com$samsung$android$sume$core$types$MediaType:[I

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/MediaType;->rank()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    goto :goto_3d

    .line 54
    :pswitch_24
    sget-object v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/MediaType;->stringfy()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0, p2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->config([Ljava/lang/Object;)Ljava/util/List;

    goto :goto_3d

    .line 50
    :pswitch_31
    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->configVideo([Ljava/lang/Object;)V

    .line 51
    goto :goto_3d

    .line 46
    :pswitch_35
    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->configAudio([Ljava/lang/Object;)V

    .line 47
    goto :goto_3d

    .line 42
    :pswitch_39
    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->configImage([Ljava/lang/Object;)V

    .line 43
    nop

    .line 61
    :goto_3d
    return-void

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method

.method private varargs configAudio([Ljava/lang/Object;)V
    .registers 6
    .param p1, "args"    # [Ljava/lang/Object;

    .line 112
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->config([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 113
    .local v1, "arg":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_2b

    .line 114
    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->U8C1:Lcom/samsung/android/sume/core/types/DataType;

    invoke-virtual {p0, v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 115
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2, v3, v3}, Lcom/samsung/android/sume/core/format/Shape;->of(IIII)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 119
    .end local v1    # "arg":Ljava/lang/Object;
    goto :goto_8

    .line 117
    .restart local v1    # "arg":Ljava/lang/Object;
    :cond_2b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not supported argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    .end local v1    # "arg":Ljava/lang/Object;
    :cond_45
    return-void
.end method

.method private varargs configImage([Ljava/lang/Object;)V
    .registers 8
    .param p1, "args"    # [Ljava/lang/Object;

    .line 92
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->config([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 93
    .local v1, "arg":Ljava/lang/Object;
    instance-of v2, v1, Landroid/graphics/Rect;

    if-eqz v2, :cond_39

    .line 94
    move-object v2, v1

    check-cast v2, Landroid/graphics/Rect;

    .line 95
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    if-nez v3, :cond_26

    .line 96
    new-instance v3, Lcom/samsung/android/sume/core/format/StapleMutableShape;

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5, v5, v5}, Lcom/samsung/android/sume/core/format/StapleMutableShape;-><init>(IIII)V

    iput-object v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 97
    :cond_26
    iget-object v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/sume/core/format/MutableShape;->setCols(I)Lcom/samsung/android/sume/core/format/MutableShape;

    .line 98
    iget-object v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/sume/core/format/MutableShape;->setRows(I)Lcom/samsung/android/sume/core/format/MutableShape;

    .line 99
    .end local v2    # "rect":Landroid/graphics/Rect;
    goto :goto_4c

    :cond_39
    instance-of v2, v1, Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eqz v2, :cond_43

    .line 100
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/sume/core/types/ColorFormat;

    iput-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    goto :goto_4c

    .line 101
    :cond_43
    instance-of v2, v1, Lcom/samsung/android/sume/core/types/ColorSpace;

    if-eqz v2, :cond_4d

    .line 102
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/sume/core/types/ColorSpace;

    iput-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorSpace:Lcom/samsung/android/sume/core/types/ColorSpace;

    .line 106
    .end local v1    # "arg":Ljava/lang/Object;
    :goto_4c
    goto :goto_8

    .line 104
    .restart local v1    # "arg":Ljava/lang/Object;
    :cond_4d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not support for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    .end local v1    # "arg":Ljava/lang/Object;
    :cond_67
    const-class v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-class v1, Lcom/samsung/android/sume/core/types/DataType;

    const-class v2, Lcom/samsung/android/sume/core/format/Shape;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 109
    return-void
.end method

.method private varargs configVideo([Ljava/lang/Object;)V
    .registers 2
    .param p1, "args"    # [Ljava/lang/Object;

    .line 124
    return-void
.end method

.method private getColorString()Ljava/lang/String;
    .registers 3

    .line 463
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v0

    .line 464
    :catch_18
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v1, ""

    return-object v1
.end method

.method static synthetic lambda$adjustChannels$9(Ljava/lang/Integer;)Z
    .registers 2
    .param p0, "it"    # Ljava/lang/Integer;

    .line 406
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$bytePerPixel$4(Lcom/samsung/android/sume/core/types/ColorFormat;)Ljava/lang/Float;
    .registers 2
    .param p0, "e"    # Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->isPlanar()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->bytePerPixel()F

    move-result v0

    goto :goto_d

    :cond_b
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_d
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$bytePerPixel$5(Lcom/samsung/android/sume/core/types/DataType;)Ljava/lang/Float;
    .registers 2
    .param p0, "e"    # Lcom/samsung/android/sume/core/types/DataType;

    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/DataType;->size()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$bytePerSample$2(Lcom/samsung/android/sume/core/types/ColorFormat;)Ljava/lang/Float;
    .registers 2
    .param p0, "e"    # Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->isPlanar()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->bytePerPixel()F

    move-result v0

    goto :goto_d

    :cond_b
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_d
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$bytePerSample$3(Lcom/samsung/android/sume/core/types/DataType;)Ljava/lang/Float;
    .registers 3
    .param p0, "e"    # Lcom/samsung/android/sume/core/types/DataType;

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/DataType;->size()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/DataType;->channels()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$config$0(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "it"    # Ljava/lang/Object;

    .line 66
    instance-of v0, p0, Lcom/samsung/android/sume/core/types/DataType;

    if-nez v0, :cond_b

    instance-of v0, p0, Lcom/samsung/android/sume/core/format/Shape;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method static synthetic lambda$getPlanesFormat$1(Ljava/util/List;Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/format/Shape;I)V
    .registers 5
    .param p0, "planes"    # Ljava/util/List;
    .param p1, "depth"    # Lcom/samsung/android/sume/core/types/DataType;
    .param p2, "chromaShape"    # Lcom/samsung/android/sume/core/format/Shape;
    .param p3, "it"    # I

    .line 150
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public varargs adjustChannels([Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 392
    .local p1, "channelSuppliers":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda16;-><init>(Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda17;-><init>()V

    .line 406
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 408
    .local v0, "channel":I
    if-eq v0, v1, :cond_50

    .line 409
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/DataType;->channels()I

    move-result v2

    if-eq v0, v2, :cond_41

    .line 410
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/DataType;->depth()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/android/sume/core/types/DataType;->of(Lcom/samsung/android/sume/core/types/DataType;I)Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    .line 411
    :cond_41
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    if-eqz v2, :cond_50

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableShape;->getChannels()I

    move-result v2

    if-eq v0, v2, :cond_50

    .line 412
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-interface {v2, v0}, Lcom/samsung/android/sume/core/format/MutableShape;->setChannels(I)Lcom/samsung/android/sume/core/format/MutableShape;

    .line 414
    :cond_50
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    if-eqz v2, :cond_60

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableShape;->getBatch()I

    move-result v2

    if-ne v2, v1, :cond_60

    .line 415
    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableShape;->setBatch(I)Lcom/samsung/android/sume/core/format/MutableShape;

    .line 416
    :cond_60
    return-void
.end method

.method public bytePerPixel()F
    .registers 4

    .line 259
    const-string v0, "color-format"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda11;-><init>()V

    .line 260
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 261
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 262
    .local v0, "bppOfColor":F
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda12;-><init>()V

    .line 263
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 264
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 265
    .local v1, "dataTypeSize":F
    mul-float v2, v0, v1

    return v2
.end method

.method public bytePerSample()F
    .registers 4

    .line 248
    const-string v0, "color-format"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda7;-><init>()V

    .line 249
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 250
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 251
    .local v0, "bppOfColor":F
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda8;-><init>()V

    .line 252
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 253
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 254
    .local v1, "bppOfDataType":F
    mul-float v2, v0, v1

    return v2
.end method

.method public checkTypeOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 290
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method protected varargs config([Ljava/lang/Object;)Ljava/util/List;
    .registers 7
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda1;-><init>()V

    .line 66
    invoke-static {v1}, Ljava/util/stream/Collectors;->partitioningBy(Ljava/util/function/Predicate;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 68
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Boolean;Ljava/util/List<Ljava/lang/Object;>;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 69
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 70
    .local v3, "arg":Ljava/lang/Object;
    instance-of v4, v3, Lcom/samsung/android/sume/core/types/DataType;

    if-eqz v4, :cond_3c

    .line 71
    move-object v4, v3

    check-cast v4, Lcom/samsung/android/sume/core/types/DataType;

    iput-object v4, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    goto :goto_82

    .line 72
    :cond_3c
    instance-of v4, v3, Lcom/samsung/android/sume/core/format/Shape;

    if-eqz v4, :cond_4a

    .line 73
    move-object v4, v3

    check-cast v4, Lcom/samsung/android/sume/core/format/Shape;

    invoke-interface {v4}, Lcom/samsung/android/sume/core/format/Shape;->toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    goto :goto_82

    .line 74
    :cond_4a
    instance-of v4, v3, Lcom/samsung/android/sume/core/format/MediaFormat$MetadataKey;

    if-eqz v4, :cond_82

    .line 75
    move-object v2, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_9e

    goto :goto_68

    .line 77
    :pswitch_59
    const-string v2, "exif"

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 79
    :pswitch_5e
    const-string v2, "icc"

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 81
    :pswitch_63
    const-string v2, "gain-map"

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 83
    :goto_68
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not support for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    .end local v3    # "arg":Ljava/lang/Object;
    :cond_82
    :goto_82
    goto :goto_28

    .line 88
    :cond_83
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_59
        :pswitch_5e
        :pswitch_63
    .end packed-switch
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public varargs containsAllOf([Ljava/lang/String;)Z
    .registers 4
    .param p1, "keys"    # [Ljava/lang/String;

    .line 285
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public varargs containsAnyOf([Ljava/lang/String;)Z
    .registers 4
    .param p1, "keys"    # [Ljava/lang/String;

    .line 280
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public contentToString()Ljava/lang/String;
    .registers 2

    .line 452
    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sume/core/Def;->taglnOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mediaType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->mediaType:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 474
    invoke-direct {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getColorString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shape="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorspace="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorSpace:Lcom/samsung/android/sume/core/types/ColorSpace;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 471
    invoke-static {v1}, Lcom/samsung/android/sume/core/Def;->contentToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nattributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    .line 477
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    return-object v0
.end method

.method public copy()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 3

    .line 484
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 485
    :catch_7
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 487
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic copy()Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->copy()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 4

    .line 494
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->copy()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    .line 495
    .local v0, "copied":Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;
    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    if-eqz v1, :cond_12

    .line 496
    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableShape;->deepCopy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/format/MutableShape;

    iput-object v1, v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 497
    :cond_12
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    .line 498
    return-object v0
.end method

.method public bridge synthetic deepCopy()Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->deepCopy()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 420
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    :cond_7
    goto :goto_12

    :pswitch_8
    const-string v0, "color-format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_13

    :goto_12
    const/4 v0, -0x1

    :goto_13
    packed-switch v0, :pswitch_data_26

    .line 422
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 421
    :pswitch_1d
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    return-object v0

    :pswitch_data_20
    .packed-switch 0x24a2ada1
        :pswitch_8
    .end packed-switch

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 429
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    :cond_7
    goto :goto_12

    :pswitch_8
    const-string v0, "color-format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_13

    :goto_12
    const/4 v0, -0x1

    :goto_13
    packed-switch v0, :pswitch_data_26

    .line 431
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 430
    :pswitch_1d
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    return-object v0

    :pswitch_data_20
    .packed-switch 0x24a2ada1
        :pswitch_8
    .end packed-switch

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method

.method public getBatch()I
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getChannels()I
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCodecType()Lcom/samsung/android/sume/core/types/CodecType;
    .registers 3

    .line 220
    const-string v0, "codec-type"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/CodecType;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/CodecType;->NONE:Lcom/samsung/android/sume/core/types/CodecType;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/CodecType;

    return-object v0
.end method

.method public getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    return-object v0
.end method

.method public getColorSpace()Lcom/samsung/android/sume/core/types/ColorSpace;
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorSpace:Lcom/samsung/android/sume/core/types/ColorSpace;

    return-object v0
.end method

.method public getCols()I
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .registers 3

    .line 205
    const-string v0, "crop-rect"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDataType()Lcom/samsung/android/sume/core/types/DataType;
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->NONE:Lcom/samsung/android/sume/core/types/DataType;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/DataType;

    return-object v0
.end method

.method public getFlipType()Lcom/samsung/android/sume/core/types/FlipType;
    .registers 3

    .line 215
    const-string v0, "flip-type"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/FlipType;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/FlipType;->NONE:Lcom/samsung/android/sume/core/types/FlipType;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/FlipType;

    return-object v0
.end method

.method public getMediaType()Lcom/samsung/android/sume/core/types/MediaType;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->mediaType:Lcom/samsung/android/sume/core/types/MediaType;

    return-object v0
.end method

.method public getPlanesFormat()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->mediaType:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/MediaType;->isImage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_93

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->NONE:Lcom/samsung/android/sume/core/types/DataType;

    if-ne v0, v2, :cond_12

    .line 132
    return-object v1

    .line 134
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "planes":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/format/MutableMediaFormat;>;"
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/ColorFormat;->isPlanar()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/ColorFormat;->isYuv()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/DataType;->depth()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    .line 138
    .local v1, "depth":Lcom/samsung/android/sume/core/types/DataType;
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    .line 139
    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/Shape;->toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v2

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getRows()I

    move-result v3

    const/4 v4, 0x1

    shr-int/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/format/MutableShape;->setRows(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v2

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getCols()I

    move-result v3

    shr-int/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/format/MutableShape;->setCols(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v2

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/types/ColorFormat;->numberOfChromaChannels()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/format/MutableShape;->setChannels(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v2

    .line 143
    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableShape;->toShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    .line 146
    .local v2, "chromaShape":Lcom/samsung/android/sume/core/format/Shape;
    invoke-static {v1, v4}, Lcom/samsung/android/sume/core/types/DataType;->of(Lcom/samsung/android/sume/core/types/DataType;I)Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/types/ColorFormat;->numberOfPlanes()I

    move-result v3

    invoke-static {v4, v3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0, v1, v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/format/Shape;)V

    .line 150
    invoke-interface {v3, v4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 151
    .end local v1    # "depth":Lcom/samsung/android/sume/core/types/DataType;
    .end local v2    # "chromaShape":Lcom/samsung/android/sume/core/format/Shape;
    goto :goto_92

    .line 152
    :cond_86
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "not support yet for planar except yuv format"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_8f
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :goto_92
    return-object v0

    .line 159
    .end local v0    # "planes":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/format/MutableMediaFormat;>;"
    :cond_93
    return-object v1
.end method

.method public getRotation()I
    .registers 3

    .line 200
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "rotation"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRows()I
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getShape()Lcom/samsung/android/sume/core/format/Shape;
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/Shape;

    return-object v0
.end method

.method public getSplitType()Lcom/samsung/android/sume/core/types/SplitType;
    .registers 3

    .line 210
    const-string/jumbo v0, "split-type"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/SplitType;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/SplitType;->NONE:Lcom/samsung/android/sume/core/types/SplitType;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/SplitType;

    return-object v0
.end method

.method synthetic lambda$adjustChannels$8$com-samsung-android-sume-core-format-StapleMutableMediaFormat(Ljava/lang/Class;)Ljava/lang/Integer;
    .registers 5
    .param p1, "it"    # Ljava/lang/Class;

    .line 393
    const-class v0, Lcom/samsung/android/sume/core/format/MutableShape;

    const/4 v1, -0x1

    .line 394
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 393
    if-eq p1, v0, :cond_60

    const-class v0, Lcom/samsung/android/sume/core/format/Shape;

    if-ne p1, v0, :cond_e

    goto :goto_60

    .line 395
    :cond_e
    const-class v0, Lcom/samsung/android/sume/core/types/DataType;

    if-ne p1, v0, :cond_28

    .line 396
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 397
    :cond_28
    const-class v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    if-ne p1, v0, :cond_46

    .line 399
    :try_start_2c
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda15;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_43
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2c .. :try_end_43} :catch_44

    return-object v0

    .line 400
    :catch_44
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    return-object v1

    .line 404
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not support channel supplier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_60
    :goto_60
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method synthetic lambda$containsAllOf$7$com-samsung-android-sume-core-format-StapleMutableMediaFormat(Ljava/lang/String;)Z
    .registers 4
    .param p1, "e"    # Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$containsAnyOf$6$com-samsung-android-sume-core-format-StapleMutableMediaFormat(Ljava/lang/String;)Z
    .registers 4
    .param p1, "e"    # Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 7
    .param p1, "option"    # Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 503
    const/4 v0, 0x2

    sget-object v1, Lcom/samsung/android/sume/core/types/SplitType;->NONE:Lcom/samsung/android/sume/core/types/SplitType;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/SplitType;

    .line 504
    .local v0, "splitType":Lcom/samsung/android/sume/core/types/SplitType;
    sget-object v1, Lcom/samsung/android/sume/core/types/SplitType;->NONE:Lcom/samsung/android/sume/core/types/SplitType;

    const/16 v2, 0x8

    if-eq v0, v1, :cond_2e

    .line 505
    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 506
    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    const-string/jumbo v3, "split-type"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 507
    :cond_1e
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 508
    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    const-string/jumbo v3, "merge-type"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_2e
    :goto_2e
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 512
    .local v1, "pad":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_51

    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 513
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    const-string/jumbo v3, "pad-type"

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    const-string/jumbo v3, "pad-size"

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :cond_51
    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 437
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    :cond_7
    goto :goto_12

    :pswitch_8
    const-string v0, "color-format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_13

    :goto_12
    const/4 v0, -0x1

    :goto_13
    packed-switch v0, :pswitch_data_2a

    .line 444
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 439
    :pswitch_1c
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 441
    nop

    .line 447
    :goto_22
    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x24a2ada1
        :pswitch_8
    .end packed-switch

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1c
    .end packed-switch
.end method

.method public setChannels(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 5
    .param p1, "channels"    # I

    .line 354
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda0;-><init>()V

    .line 355
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableShape;

    .line 356
    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MutableShape;->setChannels(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 357
    const-class v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-class v1, Lcom/samsung/android/sume/core/format/Shape;

    const-class v2, Lcom/samsung/android/sume/core/types/DataType;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 358
    return-object p0
.end method

.method public setCodecType(Lcom/samsung/android/sume/core/types/CodecType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 3
    .param p1, "codecType"    # Lcom/samsung/android/sume/core/types/CodecType;

    .line 387
    const-string v0, "codec-type"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 388
    return-object p0
.end method

.method public setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 3
    .param p1, "colorFormat"    # Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 230
    iput-object p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 231
    const-class v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 232
    return-object p0
.end method

.method public setColorSpace(Lcom/samsung/android/sume/core/types/ColorSpace;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 2
    .param p1, "colorSpace"    # Lcom/samsung/android/sume/core/types/ColorSpace;

    .line 242
    iput-object p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->colorSpace:Lcom/samsung/android/sume/core/types/ColorSpace;

    .line 243
    return-object p0
.end method

.method public setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 5
    .param p1, "cols"    # I

    .line 345
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda0;-><init>()V

    .line 346
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableShape;

    .line 347
    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MutableShape;->setCols(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 348
    const-class v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-class v1, Lcom/samsung/android/sume/core/format/Shape;

    const-class v2, Lcom/samsung/android/sume/core/types/DataType;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 349
    return-object p0
.end method

.method public setCropRect(Landroid/graphics/Rect;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 369
    const-string v0, "crop-rect"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 370
    return-object p0
.end method

.method public setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 5
    .param p1, "dataType"    # Lcom/samsung/android/sume/core/types/DataType;

    .line 320
    iput-object p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    .line 321
    const-class v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-class v1, Lcom/samsung/android/sume/core/types/DataType;

    const-class v2, Lcom/samsung/android/sume/core/format/Shape;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 322
    return-object p0
.end method

.method public setFlipType(Lcom/samsung/android/sume/core/types/FlipType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 3
    .param p1, "flipType"    # Lcom/samsung/android/sume/core/types/FlipType;

    .line 381
    const-string v0, "flip-type"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 382
    return-object p0
.end method

.method public setMediaType(Lcom/samsung/android/sume/core/types/MediaType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 3
    .param p1, "mediaType"    # Lcom/samsung/android/sume/core/types/MediaType;

    .line 312
    iput-object p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->mediaType:Lcom/samsung/android/sume/core/types/MediaType;

    .line 313
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne p1, v0, :cond_d

    .line 314
    const/4 v0, 0x1

    invoke-static {v0, v0, v0, v0}, Lcom/samsung/android/sume/core/format/Shape;->mutableOf(IIII)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 315
    :cond_d
    return-object p0
.end method

.method public setRotation(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 4
    .param p1, "rotation"    # I

    .line 363
    const-string/jumbo v0, "rotation"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 364
    return-object p0
.end method

.method public setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 5
    .param p1, "rows"    # I

    .line 336
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 337
    invoke-static {}, Lcom/samsung/android/sume/core/format/Shape;->mutableOf()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableShape;

    .line 338
    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MutableShape;->setRows(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 339
    const-class v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-class v1, Lcom/samsung/android/sume/core/format/Shape;

    const-class v2, Lcom/samsung/android/sume/core/types/DataType;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 340
    return-object p0
.end method

.method public setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 5
    .param p1, "shape"    # Lcom/samsung/android/sume/core/format/Shape;

    .line 329
    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/Shape;->toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 330
    const-class v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-class v1, Lcom/samsung/android/sume/core/format/Shape;

    const-class v2, Lcom/samsung/android/sume/core/types/DataType;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 331
    return-object p0
.end method

.method public setSplitType(Lcom/samsung/android/sume/core/types/SplitType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 3
    .param p1, "splitType"    # Lcom/samsung/android/sume/core/types/SplitType;

    .line 375
    const-string/jumbo v0, "split-type"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 376
    return-object p0
.end method

.method public size()J
    .registers 4

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->bytePerSample()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;
    .registers 2

    .line 301
    new-instance v0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/format/StapleMediaFormat;-><init>(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)V

    return-object v0
.end method

.method public toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 1

    .line 307
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 458
    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
