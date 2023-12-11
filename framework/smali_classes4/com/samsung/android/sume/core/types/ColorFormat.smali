.class public final enum Lcom/samsung/android/sume/core/types/ColorFormat;
.super Ljava/lang/Enum;
.source "ColorFormat.java"

# interfaces
.implements Lcom/samsung/android/sume/core/types/NumericEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/core/types/ColorFormat;",
        ">;",
        "Lcom/samsung/android/sume/core/types/NumericEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sume/core/types/ColorFormat;

.field public static final enum ABGR:Lcom/samsung/android/sume/core/types/ColorFormat;

.field public static final enum ARGB:Lcom/samsung/android/sume/core/types/ColorFormat;

.field public static final enum BGR:Lcom/samsung/android/sume/core/types/ColorFormat;

.field public static final enum BGRA:Lcom/samsung/android/sume/core/types/ColorFormat;

.field public static final enum GRAY:Lcom/samsung/android/sume/core/types/ColorFormat;

.field public static final enum NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

.field public static final enum NV12:Lcom/samsung/android/sume/core/types/ColorFormat;

.field public static final enum NV21:Lcom/samsung/android/sume/core/types/ColorFormat;

.field public static final enum OPAQUE:Lcom/samsung/android/sume/core/types/ColorFormat;

.field public static final enum P010:Lcom/samsung/android/sume/core/types/ColorFormat;

.field public static final enum P010_ZIPPED:Lcom/samsung/android/sume/core/types/ColorFormat;

.field public static final enum RGB:Lcom/samsung/android/sume/core/types/ColorFormat;

.field public static final enum RGBA:Lcom/samsung/android/sume/core/types/ColorFormat;

.field public static final enum YUV420:Lcom/samsung/android/sume/core/types/ColorFormat;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sume/core/types/ColorFormat;
    .registers 14

    .line 7
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    sget-object v1, Lcom/samsung/android/sume/core/types/ColorFormat;->OPAQUE:Lcom/samsung/android/sume/core/types/ColorFormat;

    sget-object v2, Lcom/samsung/android/sume/core/types/ColorFormat;->GRAY:Lcom/samsung/android/sume/core/types/ColorFormat;

    sget-object v3, Lcom/samsung/android/sume/core/types/ColorFormat;->NV12:Lcom/samsung/android/sume/core/types/ColorFormat;

    sget-object v4, Lcom/samsung/android/sume/core/types/ColorFormat;->NV21:Lcom/samsung/android/sume/core/types/ColorFormat;

    sget-object v5, Lcom/samsung/android/sume/core/types/ColorFormat;->YUV420:Lcom/samsung/android/sume/core/types/ColorFormat;

    sget-object v6, Lcom/samsung/android/sume/core/types/ColorFormat;->P010:Lcom/samsung/android/sume/core/types/ColorFormat;

    sget-object v7, Lcom/samsung/android/sume/core/types/ColorFormat;->P010_ZIPPED:Lcom/samsung/android/sume/core/types/ColorFormat;

    sget-object v8, Lcom/samsung/android/sume/core/types/ColorFormat;->RGB:Lcom/samsung/android/sume/core/types/ColorFormat;

    sget-object v9, Lcom/samsung/android/sume/core/types/ColorFormat;->RGBA:Lcom/samsung/android/sume/core/types/ColorFormat;

    sget-object v10, Lcom/samsung/android/sume/core/types/ColorFormat;->ARGB:Lcom/samsung/android/sume/core/types/ColorFormat;

    sget-object v11, Lcom/samsung/android/sume/core/types/ColorFormat;->BGR:Lcom/samsung/android/sume/core/types/ColorFormat;

    sget-object v12, Lcom/samsung/android/sume/core/types/ColorFormat;->BGRA:Lcom/samsung/android/sume/core/types/ColorFormat;

    sget-object v13, Lcom/samsung/android/sume/core/types/ColorFormat;->ABGR:Lcom/samsung/android/sume/core/types/ColorFormat;

    filled-new-array/range {v0 .. v13}, [Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 8
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 9
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-string v1, "OPAQUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->OPAQUE:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 10
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-string v1, "GRAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->GRAY:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 11
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-string v1, "NV12"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->NV12:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 12
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-string v1, "NV21"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->NV21:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 13
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-string v1, "YUV420"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->YUV420:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 14
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-string v1, "P010"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->P010:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 15
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-string v1, "P010_ZIPPED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->P010_ZIPPED:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 16
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-string v1, "RGB"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->RGB:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 17
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-string v1, "RGBA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->RGBA:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 18
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-string v1, "ARGB"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->ARGB:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 19
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-string v1, "BGR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->BGR:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 20
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-string v1, "BGRA"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->BGRA:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 21
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    const-string v1, "ABGR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->ABGR:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 7
    invoke-static {}, Lcom/samsung/android/sume/core/types/ColorFormat;->$values()[Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->$VALUES:[Lcom/samsung/android/sume/core/types/ColorFormat;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sume/core/types/ColorFormat;->value:I

    return-void
.end method

.method public static bytePerPixel(Lcom/samsung/android/sume/core/types/ColorFormat;)F
    .registers 2
    .param p0, "format"    # Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->bytePerPixel()F

    move-result v0

    return v0
.end method

.method public static from(I)Lcom/samsung/android/sume/core/types/ColorFormat;
    .registers 2
    .param p0, "value"    # I

    .line 57
    const-class v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/types/NumericEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/types/ColorFormat;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sume/core/types/ColorFormat;
    .registers 1

    .line 7
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->$VALUES:[Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/types/ColorFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/types/ColorFormat;

    return-object v0
.end method


# virtual methods
.method public bytePerPixel()F
    .registers 3

    .line 35
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat$1;->$SwitchMap$com$samsung$android$sume$core$types$ColorFormat:[I

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :pswitch_14
    const/high16 v0, 0x40800000    # 4.0f

    return v0

    .line 38
    :pswitch_17
    const/high16 v0, 0x40400000    # 3.0f

    return v0

    .line 37
    :pswitch_1a
    const/high16 v0, 0x3fc00000    # 1.5f

    return v0

    .line 36
    :pswitch_1d
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1d
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_17
        :pswitch_17
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public getChannels()I
    .registers 3

    .line 93
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat$1;->$SwitchMap$com$samsung$android$sume$core$types$ColorFormat:[I

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 97
    const/4 v0, 0x0

    return v0

    .line 96
    :pswitch_d
    const/4 v0, 0x4

    return v0

    .line 95
    :pswitch_f
    const/4 v0, 0x3

    return v0

    .line 94
    :pswitch_11
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_f
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_f
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method public getOpaque()Lcom/samsung/android/sume/core/types/ColorFormat;
    .registers 2

    .line 84
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->RGBA:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq p0, v0, :cond_16

    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->ARGB:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-ne p0, v0, :cond_9

    goto :goto_16

    .line 86
    :cond_9
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->BGRA:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq p0, v0, :cond_13

    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->ABGR:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-ne p0, v0, :cond_12

    goto :goto_13

    .line 89
    :cond_12
    return-object p0

    .line 87
    :cond_13
    :goto_13
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->BGR:Lcom/samsung/android/sume/core/types/ColorFormat;

    return-object v0

    .line 85
    :cond_16
    :goto_16
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->RGB:Lcom/samsung/android/sume/core/types/ColorFormat;

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/samsung/android/sume/core/types/ColorFormat;->value:I

    return v0
.end method

.method public hasAlpha()Z
    .registers 2

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->hasFrontAlpha()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->RGBA:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq p0, v0, :cond_11

    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->BGRA:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public hasFrontAlpha()Z
    .registers 2

    .line 80
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->ARGB:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->ABGR:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-ne p0, v0, :cond_9

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

.method public isPlanar()Z
    .registers 2

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->isYuv()Z

    move-result v0

    return v0
.end method

.method public isYuv()Z
    .registers 2

    .line 49
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->NV12:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq p0, v0, :cond_17

    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->NV21:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq p0, v0, :cond_17

    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->YUV420:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq p0, v0, :cond_17

    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->P010:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq p0, v0, :cond_17

    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->P010_ZIPPED:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public numberOfChromaChannels()I
    .registers 3

    .line 69
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat$1;->$SwitchMap$com$samsung$android$sume$core$types$ColorFormat:[I

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 71
    const/4 v0, 0x1

    return v0

    .line 70
    :pswitch_d
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x3
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public numberOfPlanes()I
    .registers 3

    .line 61
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat$1;->$SwitchMap$com$samsung$android$sume$core$types$ColorFormat:[I

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_12

    .line 64
    const/4 v0, 0x1

    return v0

    .line 63
    :sswitch_d
    const/4 v0, 0x3

    return v0

    .line 62
    :sswitch_f
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_12
    .sparse-switch
        0x3 -> :sswitch_f
        0x4 -> :sswitch_f
        0x5 -> :sswitch_d
        0xb -> :sswitch_d
        0xc -> :sswitch_d
    .end sparse-switch
.end method

.method public stringfy()Ljava/lang/String;
    .registers 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/core/types/ColorFormat;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
