.class public final enum Landroid/graphics/BlendMode;
.super Ljava/lang/Enum;
.source "BlendMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/BlendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/BlendMode;

.field private static final BLEND_MODES:[Landroid/graphics/BlendMode;

.field public static final enum CLEAR:Landroid/graphics/BlendMode;

.field public static final enum COLOR:Landroid/graphics/BlendMode;

.field public static final enum COLOR_BURN:Landroid/graphics/BlendMode;

.field public static final enum COLOR_DODGE:Landroid/graphics/BlendMode;

.field public static final enum DARKEN:Landroid/graphics/BlendMode;

.field public static final enum DIFFERENCE:Landroid/graphics/BlendMode;

.field public static final enum DST:Landroid/graphics/BlendMode;

.field public static final enum DST_ATOP:Landroid/graphics/BlendMode;

.field public static final enum DST_IN:Landroid/graphics/BlendMode;

.field public static final enum DST_OUT:Landroid/graphics/BlendMode;

.field public static final enum DST_OVER:Landroid/graphics/BlendMode;

.field public static final enum EXCLUSION:Landroid/graphics/BlendMode;

.field public static final enum HARD_LIGHT:Landroid/graphics/BlendMode;

.field public static final enum HUE:Landroid/graphics/BlendMode;

.field public static final enum LIGHTEN:Landroid/graphics/BlendMode;

.field public static final enum LUMINOSITY:Landroid/graphics/BlendMode;

.field public static final enum MODULATE:Landroid/graphics/BlendMode;

.field public static final enum MULTIPLY:Landroid/graphics/BlendMode;

.field public static final enum OVERLAY:Landroid/graphics/BlendMode;

.field public static final enum PLUS:Landroid/graphics/BlendMode;

.field public static final enum SATURATION:Landroid/graphics/BlendMode;

.field public static final enum SCREEN:Landroid/graphics/BlendMode;

.field public static final enum SOFT_LIGHT:Landroid/graphics/BlendMode;

.field public static final enum SRC:Landroid/graphics/BlendMode;

.field public static final enum SRC_ATOP:Landroid/graphics/BlendMode;

.field public static final enum SRC_IN:Landroid/graphics/BlendMode;

.field public static final enum SRC_OUT:Landroid/graphics/BlendMode;

.field public static final enum SRC_OVER:Landroid/graphics/BlendMode;

.field public static final enum XOR:Landroid/graphics/BlendMode;


# instance fields
.field private final mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method private static synthetic $values()[Landroid/graphics/BlendMode;
    .registers 29

    .line 22
    sget-object v0, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    sget-object v1, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    sget-object v2, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    sget-object v3, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    sget-object v4, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    sget-object v5, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    sget-object v6, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    sget-object v7, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    sget-object v8, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    sget-object v9, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    sget-object v10, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    sget-object v11, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    sget-object v12, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    sget-object v13, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    sget-object v14, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    sget-object v15, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    sget-object v16, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    sget-object v17, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    sget-object v18, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    sget-object v19, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    sget-object v20, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    sget-object v21, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    sget-object v22, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    sget-object v23, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    sget-object v24, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    sget-object v25, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    sget-object v26, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    sget-object v27, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    sget-object v28, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    filled-new-array/range {v0 .. v28}, [Landroid/graphics/BlendMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 34
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "CLEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    .line 46
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "SRC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    .line 58
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "DST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    .line 70
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "SRC_OVER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    .line 82
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "DST_OVER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    .line 95
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "SRC_IN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    .line 108
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "DST_IN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    .line 122
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "SRC_OUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    .line 136
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "DST_OUT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    .line 149
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "SRC_ATOP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    .line 162
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "DST_ATOP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    .line 177
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "XOR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    .line 190
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "PLUS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    .line 203
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "MODULATE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    .line 218
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "SCREEN"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    .line 237
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "OVERLAY"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    .line 255
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "DARKEN"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    .line 271
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "LIGHTEN"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    .line 295
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "COLOR_DODGE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    .line 320
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "COLOR_BURN"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    .line 344
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "HARD_LIGHT"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    .line 392
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "SOFT_LIGHT"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    .line 413
    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v1, 0x16

    const/16 v2, 0x16

    const-string v3, "DIFFERENCE"

    invoke-direct {v0, v3, v1, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    .line 433
    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v1, 0x17

    const/16 v2, 0x17

    const-string v3, "EXCLUSION"

    invoke-direct {v0, v3, v1, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    .line 447
    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v1, 0x18

    const/16 v2, 0x18

    const-string v3, "MULTIPLY"

    invoke-direct {v0, v3, v1, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    .line 460
    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v1, 0x19

    const/16 v2, 0x19

    const-string v3, "HUE"

    invoke-direct {v0, v3, v1, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    .line 473
    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v1, 0x1a

    const/16 v2, 0x1a

    const-string v3, "SATURATION"

    invoke-direct {v0, v3, v1, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    .line 486
    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v1, 0x1b

    const/16 v2, 0x1b

    const-string v3, "COLOR"

    invoke-direct {v0, v3, v1, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    .line 499
    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v1, 0x1c

    const/16 v2, 0x1c

    const-string v3, "LUMINOSITY"

    invoke-direct {v0, v3, v1, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    .line 22
    invoke-static {}, Landroid/graphics/BlendMode;->$values()[Landroid/graphics/BlendMode;

    move-result-object v0

    sput-object v0, Landroid/graphics/BlendMode;->$VALUES:[Landroid/graphics/BlendMode;

    .line 501
    invoke-static {}, Landroid/graphics/BlendMode;->values()[Landroid/graphics/BlendMode;

    move-result-object v0

    sput-object v0, Landroid/graphics/BlendMode;->BLEND_MODES:[Landroid/graphics/BlendMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 576
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 577
    new-instance p1, Landroid/graphics/Xfermode;

    invoke-direct {p1}, Landroid/graphics/Xfermode;-><init>()V

    iput-object p1, p0, Landroid/graphics/BlendMode;->mXfermode:Landroid/graphics/Xfermode;

    .line 578
    iput p3, p1, Landroid/graphics/Xfermode;->porterDuffMode:I

    .line 579
    return-void
.end method

.method public static blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;
    .registers 4
    .param p0, "mode"    # Landroid/graphics/BlendMode;

    .line 526
    const/4 v0, 0x0

    if-eqz p0, :cond_45

    .line 527
    sget-object v1, Landroid/graphics/BlendMode$1;->$SwitchMap$android$graphics$BlendMode:[I

    invoke-virtual {p0}, Landroid/graphics/BlendMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_46

    .line 566
    return-object v0

    .line 564
    :pswitch_f
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 562
    :pswitch_12
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 560
    :pswitch_15
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 558
    :pswitch_18
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 555
    :pswitch_1b
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 553
    :pswitch_1e
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 551
    :pswitch_21
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 549
    :pswitch_24
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 547
    :pswitch_27
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 545
    :pswitch_2a
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 543
    :pswitch_2d
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 541
    :pswitch_30
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 539
    :pswitch_33
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 537
    :pswitch_36
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 535
    :pswitch_39
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 533
    :pswitch_3c
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 531
    :pswitch_3f
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 529
    :pswitch_42
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 569
    :cond_45
    return-object v0

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method public static fromValue(I)Landroid/graphics/BlendMode;
    .registers 6
    .param p0, "value"    # I

    .line 507
    sget-object v0, Landroid/graphics/BlendMode;->BLEND_MODES:[Landroid/graphics/BlendMode;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 508
    .local v3, "mode":Landroid/graphics/BlendMode;
    iget-object v4, v3, Landroid/graphics/BlendMode;->mXfermode:Landroid/graphics/Xfermode;

    iget v4, v4, Landroid/graphics/Xfermode;->porterDuffMode:I

    if-ne v4, p0, :cond_f

    .line 509
    return-object v3

    .line 507
    .end local v3    # "mode":Landroid/graphics/BlendMode;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 512
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toValue(Landroid/graphics/BlendMode;)I
    .registers 2
    .param p0, "mode"    # Landroid/graphics/BlendMode;

    .line 519
    invoke-virtual {p0}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Xfermode;->porterDuffMode:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/BlendMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Landroid/graphics/BlendMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public static values()[Landroid/graphics/BlendMode;
    .registers 1

    .line 22
    sget-object v0, Landroid/graphics/BlendMode;->$VALUES:[Landroid/graphics/BlendMode;

    invoke-virtual {v0}, [Landroid/graphics/BlendMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/BlendMode;

    return-object v0
.end method


# virtual methods
.method public getXfermode()Landroid/graphics/Xfermode;
    .registers 2

    .line 586
    iget-object v0, p0, Landroid/graphics/BlendMode;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method
