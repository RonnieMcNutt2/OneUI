.class public final enum Lcom/samsung/app/video/editor/external/EditSubType;
.super Ljava/lang/Enum;
.source "EditSubType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/EditSubType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum AUDIO_TRANSITION_FADE_IN_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum AUDIO_TRANSITION_FADE_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum LUT_DOWNLOAD:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum LUT_MYFILTER:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum LUT_PRELOAD:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum NONE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_EFFECT_BLACK_AND_WHITE_NEW:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_EFFECT_BLACK_VIGNETTE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_EFFECT_BURST_SHOT:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_EFFECT_CARTOON_NEW:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_EFFECT_FADEDCOLOR:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_EFFECT_FADE_IN_BLACK:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_EFFECT_FADE_IN_OUT_WHITE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_EFFECT_FADE_IN_WHITE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_EFFECT_FADE_OUT_BLACK:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_EFFECT_FADE_OUT_WHITE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_EFFECT_LINEAR_DODGE_BLEND_TEXTURE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_EFFECT_NONE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_EFFECT_PASTEL_SKETCH:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_EFFECT_PORTRAIT_BLUR:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_EFFECT_SEPIA_NEW:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_EFFECT_TINT:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_EFFECT_TURQUOISE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_EFFECT_VINTAGE_NEW:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_EFFECT_ZOOM:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_TRANSITION_2_DIVISION_SLIDE_HORIZONTAL_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_TRANSITION_BLEND_MULTIPLE_TEXTURE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_TRANSITION_FADE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_TRANSITION_FADE_IN_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_TRANSITION_FADE_IN_ZOOM_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum VIDEO_TRANSITION_WIPE_RIGHT:Lcom/samsung/app/video/editor/external/EditSubType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 35

    .line 9
    new-instance v1, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object v0, v1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 10
    new-instance v2, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object v1, v2

    const-string v3, "VIDEO_TRANSITION_FADE"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_FADE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 11
    new-instance v3, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object v2, v3

    const-string v4, "VIDEO_TRANSITION_WIPE_RIGHT"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_WIPE_RIGHT:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 12
    new-instance v4, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object v3, v4

    const-string v5, "AUDIO_TRANSITION_FADE_OUT"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v6}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/EditSubType;->AUDIO_TRANSITION_FADE_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 13
    new-instance v5, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object v4, v5

    const-string v6, "AUDIO_TRANSITION_FADE_IN_OUT"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v7}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/app/video/editor/external/EditSubType;->AUDIO_TRANSITION_FADE_IN_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 14
    new-instance v6, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object v5, v6

    const-string v7, "VIDEO_EFFECT_NONE"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v8}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 15
    new-instance v7, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object v6, v7

    const-string v8, "VIDEO_EFFECT_ZOOM"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v9}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_ZOOM:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 16
    new-instance v8, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object v7, v8

    const-string v9, "VIDEO_EFFECT_FADE_IN_BLACK"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v10}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADE_IN_BLACK:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 17
    new-instance v9, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object v8, v9

    const-string v10, "VIDEO_EFFECT_FADE_IN_WHITE"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v11}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADE_IN_WHITE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 18
    new-instance v10, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object v9, v10

    const-string v11, "VIDEO_EFFECT_FADE_OUT_BLACK"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12, v12}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADE_OUT_BLACK:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 19
    new-instance v11, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object v10, v11

    const-string v12, "VIDEO_EFFECT_FADE_OUT_WHITE"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13, v13}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADE_OUT_WHITE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 20
    new-instance v12, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object v11, v12

    const-string v13, "VIDEO_EFFECT_FADE_IN_OUT_WHITE"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14, v14}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADE_IN_OUT_WHITE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 21
    new-instance v13, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object v12, v13

    const-string v14, "VIDEO_TRANSITION_BLEND_MULTIPLE_TEXTURE"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v15}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_BLEND_MULTIPLE_TEXTURE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 22
    new-instance v14, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object v13, v14

    const-string v15, "VIDEO_EFFECT_BLACK_AND_WHITE_NEW"

    move-object/from16 v31, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0, v0}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_BLACK_AND_WHITE_NEW:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 23
    new-instance v0, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object v14, v0

    const-string v15, "VIDEO_EFFECT_SEPIA_NEW"

    move-object/from16 v32, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1, v1}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_SEPIA_NEW:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 24
    new-instance v0, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object v15, v0

    const-string v1, "VIDEO_EFFECT_CARTOON_NEW"

    move-object/from16 v33, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_CARTOON_NEW:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 25
    new-instance v0, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v16, v0

    const-string v1, "VIDEO_EFFECT_VINTAGE_NEW"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_VINTAGE_NEW:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 26
    new-instance v0, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v17, v0

    const-string v1, "VIDEO_EFFECT_FADEDCOLOR"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADEDCOLOR:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 27
    new-instance v0, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v18, v0

    const-string v1, "VIDEO_EFFECT_LINEAR_DODGE_BLEND_TEXTURE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_LINEAR_DODGE_BLEND_TEXTURE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 28
    new-instance v0, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v19, v0

    const-string v1, "VIDEO_TRANSITION_FADE_IN_OUT"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_FADE_IN_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 29
    new-instance v0, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v20, v0

    const-string v1, "VIDEO_EFFECT_BLACK_VIGNETTE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_BLACK_VIGNETTE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 30
    new-instance v0, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v21, v0

    const-string v1, "VIDEO_EFFECT_PASTEL_SKETCH"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_PASTEL_SKETCH:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 31
    new-instance v0, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const/16 v2, 0x16

    move-object/from16 v34, v3

    const-string v3, "VIDEO_EFFECT_TINT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_TINT:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 32
    new-instance v0, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const/16 v2, 0x17

    const-string v3, "VIDEO_EFFECT_TURQUOISE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_TURQUOISE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 38
    new-instance v0, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const/16 v2, 0x18

    const-string v3, "VIDEO_TRANSITION_2_DIVISION_SLIDE_HORIZONTAL_OUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_2_DIVISION_SLIDE_HORIZONTAL_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 39
    new-instance v0, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const/16 v2, 0x19

    const-string v3, "VIDEO_EFFECT_BURST_SHOT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_BURST_SHOT:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 40
    new-instance v0, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v26, v0

    const/16 v1, 0x1a

    const/16 v2, 0x1a

    const-string v3, "VIDEO_EFFECT_PORTRAIT_BLUR"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_PORTRAIT_BLUR:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 41
    new-instance v0, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v27, v0

    const/16 v1, 0x1b

    const/16 v2, 0x1b

    const-string v3, "LUT_PRELOAD"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->LUT_PRELOAD:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 42
    new-instance v0, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v28, v0

    const/16 v1, 0x1c

    const/16 v2, 0x1c

    const-string v3, "LUT_DOWNLOAD"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->LUT_DOWNLOAD:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 43
    new-instance v0, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v29, v0

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    const-string v3, "LUT_MYFILTER"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->LUT_MYFILTER:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 44
    new-instance v0, Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v30, v0

    const/16 v1, 0x1e

    const/16 v2, 0x1e

    const-string v3, "VIDEO_TRANSITION_FADE_IN_ZOOM_OUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_FADE_IN_ZOOM_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 6
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    filled-new-array/range {v0 .. v30}, [Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->$VALUES:[Lcom/samsung/app/video/editor/external/EditSubType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/samsung/app/video/editor/external/EditSubType;->value:I

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/EditSubType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/EditSubType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/EditSubType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/EditSubType;
    .registers 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->$VALUES:[Lcom/samsung/app/video/editor/external/EditSubType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/EditSubType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/EditSubType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/samsung/app/video/editor/external/EditSubType;->value:I

    return v0
.end method
