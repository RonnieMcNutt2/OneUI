.class public final enum Lcom/samsung/android/sume/core/types/ColorSpace;
.super Ljava/lang/Enum;
.source "ColorSpace.java"

# interfaces
.implements Lcom/samsung/android/sume/core/types/NumericEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/core/types/ColorSpace;",
        ">;",
        "Lcom/samsung/android/sume/core/types/NumericEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sume/core/types/ColorSpace;

.field public static final enum BT2020:Lcom/samsung/android/sume/core/types/ColorSpace;

.field public static final enum BT2020_FR:Lcom/samsung/android/sume/core/types/ColorSpace;

.field public static final enum BT2020_LR:Lcom/samsung/android/sume/core/types/ColorSpace;

.field public static final enum BT601:Lcom/samsung/android/sume/core/types/ColorSpace;

.field public static final enum BT601_FR:Lcom/samsung/android/sume/core/types/ColorSpace;

.field public static final enum BT601_LR:Lcom/samsung/android/sume/core/types/ColorSpace;

.field public static final enum BT709:Lcom/samsung/android/sume/core/types/ColorSpace;

.field public static final enum BT709_FR:Lcom/samsung/android/sume/core/types/ColorSpace;

.field public static final enum BT709_LR:Lcom/samsung/android/sume/core/types/ColorSpace;

.field static final CS_RANGE_SHIFT:I = 0x4

.field static final CS_SET_MASK:I = 0xf

.field private static final CS_SET_MAX:I = 0x10

.field public static final enum DISPLAY_P3:Lcom/samsung/android/sume/core/types/ColorSpace;

.field public static final enum NONE:Lcom/samsung/android/sume/core/types/ColorSpace;

.field public static final enum SRGB:Lcom/samsung/android/sume/core/types/ColorSpace;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sume/core/types/ColorSpace;
    .registers 12

    .line 9
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorSpace;->NONE:Lcom/samsung/android/sume/core/types/ColorSpace;

    sget-object v1, Lcom/samsung/android/sume/core/types/ColorSpace;->BT601:Lcom/samsung/android/sume/core/types/ColorSpace;

    sget-object v2, Lcom/samsung/android/sume/core/types/ColorSpace;->BT709:Lcom/samsung/android/sume/core/types/ColorSpace;

    sget-object v3, Lcom/samsung/android/sume/core/types/ColorSpace;->BT2020:Lcom/samsung/android/sume/core/types/ColorSpace;

    sget-object v4, Lcom/samsung/android/sume/core/types/ColorSpace;->SRGB:Lcom/samsung/android/sume/core/types/ColorSpace;

    sget-object v5, Lcom/samsung/android/sume/core/types/ColorSpace;->DISPLAY_P3:Lcom/samsung/android/sume/core/types/ColorSpace;

    sget-object v6, Lcom/samsung/android/sume/core/types/ColorSpace;->BT601_LR:Lcom/samsung/android/sume/core/types/ColorSpace;

    sget-object v7, Lcom/samsung/android/sume/core/types/ColorSpace;->BT601_FR:Lcom/samsung/android/sume/core/types/ColorSpace;

    sget-object v8, Lcom/samsung/android/sume/core/types/ColorSpace;->BT709_LR:Lcom/samsung/android/sume/core/types/ColorSpace;

    sget-object v9, Lcom/samsung/android/sume/core/types/ColorSpace;->BT709_FR:Lcom/samsung/android/sume/core/types/ColorSpace;

    sget-object v10, Lcom/samsung/android/sume/core/types/ColorSpace;->BT2020_LR:Lcom/samsung/android/sume/core/types/ColorSpace;

    sget-object v11, Lcom/samsung/android/sume/core/types/ColorSpace;->BT2020_FR:Lcom/samsung/android/sume/core/types/ColorSpace;

    filled-new-array/range {v0 .. v11}, [Lcom/samsung/android/sume/core/types/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 10
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorSpace;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ColorSpace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorSpace;->NONE:Lcom/samsung/android/sume/core/types/ColorSpace;

    .line 11
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorSpace;

    const-string v1, "BT601"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ColorSpace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorSpace;->BT601:Lcom/samsung/android/sume/core/types/ColorSpace;

    .line 12
    new-instance v1, Lcom/samsung/android/sume/core/types/ColorSpace;

    const-string v2, "BT709"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/android/sume/core/types/ColorSpace;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sume/core/types/ColorSpace;->BT709:Lcom/samsung/android/sume/core/types/ColorSpace;

    .line 13
    new-instance v2, Lcom/samsung/android/sume/core/types/ColorSpace;

    const-string v3, "BT2020"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4, v4}, Lcom/samsung/android/sume/core/types/ColorSpace;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sume/core/types/ColorSpace;->BT2020:Lcom/samsung/android/sume/core/types/ColorSpace;

    .line 14
    new-instance v3, Lcom/samsung/android/sume/core/types/ColorSpace;

    const-string v4, "SRGB"

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5, v5}, Lcom/samsung/android/sume/core/types/ColorSpace;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sume/core/types/ColorSpace;->SRGB:Lcom/samsung/android/sume/core/types/ColorSpace;

    .line 15
    new-instance v3, Lcom/samsung/android/sume/core/types/ColorSpace;

    const-string v4, "DISPLAY_P3"

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5, v5}, Lcom/samsung/android/sume/core/types/ColorSpace;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sume/core/types/ColorSpace;->DISPLAY_P3:Lcom/samsung/android/sume/core/types/ColorSpace;

    .line 17
    new-instance v3, Lcom/samsung/android/sume/core/types/ColorSpace;

    sget-object v4, Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;->LIMITED:Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;

    invoke-static {v0, v4}, Lcom/samsung/android/sume/core/types/ColorSpace;->makeColorSpace(Lcom/samsung/android/sume/core/types/ColorSpace;Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;)I

    move-result v4

    const-string v5, "BT601_LR"

    const/4 v6, 0x6

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/sume/core/types/ColorSpace;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sume/core/types/ColorSpace;->BT601_LR:Lcom/samsung/android/sume/core/types/ColorSpace;

    .line 18
    new-instance v3, Lcom/samsung/android/sume/core/types/ColorSpace;

    sget-object v4, Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;->FULL:Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;

    invoke-static {v0, v4}, Lcom/samsung/android/sume/core/types/ColorSpace;->makeColorSpace(Lcom/samsung/android/sume/core/types/ColorSpace;Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;)I

    move-result v0

    const-string v4, "BT601_FR"

    const/4 v5, 0x7

    invoke-direct {v3, v4, v5, v0}, Lcom/samsung/android/sume/core/types/ColorSpace;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sume/core/types/ColorSpace;->BT601_FR:Lcom/samsung/android/sume/core/types/ColorSpace;

    .line 20
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorSpace;

    sget-object v3, Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;->LIMITED:Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;

    invoke-static {v1, v3}, Lcom/samsung/android/sume/core/types/ColorSpace;->makeColorSpace(Lcom/samsung/android/sume/core/types/ColorSpace;Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;)I

    move-result v3

    const-string v4, "BT709_LR"

    const/16 v5, 0x8

    invoke-direct {v0, v4, v5, v3}, Lcom/samsung/android/sume/core/types/ColorSpace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorSpace;->BT709_LR:Lcom/samsung/android/sume/core/types/ColorSpace;

    .line 21
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorSpace;

    sget-object v3, Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;->FULL:Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;

    invoke-static {v1, v3}, Lcom/samsung/android/sume/core/types/ColorSpace;->makeColorSpace(Lcom/samsung/android/sume/core/types/ColorSpace;Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;)I

    move-result v1

    const-string v3, "BT709_FR"

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/android/sume/core/types/ColorSpace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorSpace;->BT709_FR:Lcom/samsung/android/sume/core/types/ColorSpace;

    .line 23
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorSpace;

    sget-object v1, Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;->LIMITED:Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;

    invoke-static {v2, v1}, Lcom/samsung/android/sume/core/types/ColorSpace;->makeColorSpace(Lcom/samsung/android/sume/core/types/ColorSpace;Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;)I

    move-result v1

    const-string v3, "BT2020_LR"

    const/16 v4, 0xa

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/android/sume/core/types/ColorSpace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorSpace;->BT2020_LR:Lcom/samsung/android/sume/core/types/ColorSpace;

    .line 24
    new-instance v0, Lcom/samsung/android/sume/core/types/ColorSpace;

    sget-object v1, Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;->FULL:Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;

    invoke-static {v2, v1}, Lcom/samsung/android/sume/core/types/ColorSpace;->makeColorSpace(Lcom/samsung/android/sume/core/types/ColorSpace;Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;)I

    move-result v1

    const-string v2, "BT2020_FR"

    const/16 v3, 0xb

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sume/core/types/ColorSpace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorSpace;->BT2020_FR:Lcom/samsung/android/sume/core/types/ColorSpace;

    .line 9
    invoke-static {}, Lcom/samsung/android/sume/core/types/ColorSpace;->$values()[Lcom/samsung/android/sume/core/types/ColorSpace;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/types/ColorSpace;->$VALUES:[Lcom/samsung/android/sume/core/types/ColorSpace;

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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sume/core/types/ColorSpace;->value:I

    return-void
.end method

.method private static makeColorSpace(Lcom/samsung/android/sume/core/types/ColorSpace;Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;)I
    .registers 5
    .param p0, "colorSpace"    # Lcom/samsung/android/sume/core/types/ColorSpace;
    .param p1, "range"    # Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;

    .line 47
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorSpace;->NONE:Lcom/samsung/android/sume/core/types/ColorSpace;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;->NONE:Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;

    if-eq p1, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    const-string v2, "color-space is none"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorSpace;->getValue()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;->getValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public static of(Landroid/graphics/Bitmap;)Lcom/samsung/android/sume/core/types/ColorSpace;
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 82
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 83
    .local v0, "colorSpace":Landroid/graphics/ColorSpace;
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_1a

    .line 88
    sget-object v1, Lcom/samsung/android/sume/core/types/ColorSpace;->NONE:Lcom/samsung/android/sume/core/types/ColorSpace;

    return-object v1

    .line 87
    :sswitch_e
    sget-object v1, Lcom/samsung/android/sume/core/types/ColorSpace;->DISPLAY_P3:Lcom/samsung/android/sume/core/types/ColorSpace;

    return-object v1

    .line 86
    :sswitch_11
    sget-object v1, Lcom/samsung/android/sume/core/types/ColorSpace;->BT2020:Lcom/samsung/android/sume/core/types/ColorSpace;

    return-object v1

    .line 85
    :sswitch_14
    sget-object v1, Lcom/samsung/android/sume/core/types/ColorSpace;->BT709:Lcom/samsung/android/sume/core/types/ColorSpace;

    return-object v1

    .line 84
    :sswitch_17
    sget-object v1, Lcom/samsung/android/sume/core/types/ColorSpace;->SRGB:Lcom/samsung/android/sume/core/types/ColorSpace;

    return-object v1

    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_17
        0x4 -> :sswitch_14
        0x5 -> :sswitch_11
        0x7 -> :sswitch_e
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/types/ColorSpace;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 9
    const-class v0, Lcom/samsung/android/sume/core/types/ColorSpace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/ColorSpace;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sume/core/types/ColorSpace;
    .registers 1

    .line 9
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorSpace;->$VALUES:[Lcom/samsung/android/sume/core/types/ColorSpace;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/types/ColorSpace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/types/ColorSpace;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/samsung/android/sume/core/types/ColorSpace;->value:I

    return v0
.end method

.method public isFullRange()Z
    .registers 3

    .line 57
    iget v0, p0, Lcom/samsung/android/sume/core/types/ColorSpace;->value:I

    shr-int/lit8 v0, v0, 0x4

    sget-object v1, Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;->FULL:Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;

    # getter for: Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;->value:I
    invoke-static {v1}, Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;->access$000(Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;)I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isLimitedRange()Z
    .registers 3

    .line 53
    iget v0, p0, Lcom/samsung/android/sume/core/types/ColorSpace;->value:I

    shr-int/lit8 v0, v0, 0x4

    sget-object v1, Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;->LIMITED:Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;

    # getter for: Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;->value:I
    invoke-static {v1}, Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;->access$000(Lcom/samsung/android/sume/core/types/ColorSpace$ColorSpaceRange;)I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public stringfy()Ljava/lang/String;
    .registers 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorSpace;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/core/types/ColorSpace;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
