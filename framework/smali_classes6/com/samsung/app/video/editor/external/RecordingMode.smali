.class public final enum Lcom/samsung/app/video/editor/external/RecordingMode;
.super Ljava/lang/Enum;
.source "RecordingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/RecordingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum FAST:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum HYPERLAPSE:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum NORMAL:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum SLOW:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum SLOW_V2:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum SLOW_V2_120:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum SLOW_V2_120_NONE_SVC:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum SLOW_V2_240_NONE_SVC:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum SLOW_V2_HEVC:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum SUPERSLOW_HEVC:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum SUPERSLOW_MULTI:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum SUPERSLOW_NONE_SVC:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum SUPERSLOW_SINGLE_960:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum SUPERSLOW_SINGLE_FRC_DEFLICKER:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum UNSUPPORT:Lcom/samsung/app/video/editor/external/RecordingMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 7
    new-instance v0, Lcom/samsung/app/video/editor/external/RecordingMode;

    const/4 v1, -0x1

    const-string v2, "UNSUPPORT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/RecordingMode;->UNSUPPORT:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 8
    new-instance v1, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v2, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/RecordingMode;->NORMAL:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 9
    new-instance v2, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v3, "SLOW"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 10
    new-instance v3, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v4, "FAST"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/RecordingMode;->FAST:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 11
    new-instance v4, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v5, "HYPERLAPSE"

    const/4 v6, 0x4

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/RecordingMode;->HYPERLAPSE:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 12
    new-instance v5, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v6, "SUPERSLOW_SINGLE_960"

    const/4 v8, 0x7

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/app/video/editor/external/RecordingMode;->SUPERSLOW_SINGLE_960:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 13
    new-instance v6, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v7, "SUPERSLOW_MULTI"

    const/4 v9, 0x6

    const/16 v10, 0x8

    invoke-direct {v6, v7, v9, v10}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/app/video/editor/external/RecordingMode;->SUPERSLOW_MULTI:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 14
    new-instance v7, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v9, "SUPERSLOW_SINGLE_FRC_DEFLICKER"

    const/16 v11, 0x9

    invoke-direct {v7, v9, v8, v11}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/app/video/editor/external/RecordingMode;->SUPERSLOW_SINGLE_FRC_DEFLICKER:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 15
    new-instance v8, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v9, "SLOW_V2"

    const/16 v12, 0xc

    invoke-direct {v8, v9, v10, v12}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 16
    new-instance v9, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v10, "SLOW_V2_120"

    const/16 v13, 0xd

    invoke-direct {v9, v10, v11, v13}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2_120:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 17
    new-instance v10, Lcom/samsung/app/video/editor/external/RecordingMode;

    const/16 v11, 0xa

    const/16 v14, 0xf

    const-string v15, "SLOW_V2_120_NONE_SVC"

    invoke-direct {v10, v15, v11, v14}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2_120_NONE_SVC:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 18
    new-instance v11, Lcom/samsung/app/video/editor/external/RecordingMode;

    const/16 v14, 0xb

    const/16 v15, 0x12

    const-string v13, "SUPERSLOW_NONE_SVC"

    invoke-direct {v11, v13, v14, v15}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/app/video/editor/external/RecordingMode;->SUPERSLOW_NONE_SVC:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 19
    new-instance v13, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v14, "SLOW_V2_240_NONE_SVC"

    const/16 v15, 0x13

    invoke-direct {v13, v14, v12, v15}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2_240_NONE_SVC:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 20
    new-instance v14, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v12, "SLOW_V2_HEVC"

    const/16 v15, 0x15

    move-object/from16 v17, v13

    const/16 v13, 0xd

    invoke-direct {v14, v12, v13, v15}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2_HEVC:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 21
    new-instance v15, Lcom/samsung/app/video/editor/external/RecordingMode;

    const/16 v12, 0xe

    const/16 v13, 0x16

    move-object/from16 v16, v14

    const-string v14, "SUPERSLOW_HEVC"

    invoke-direct {v15, v14, v12, v13}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/samsung/app/video/editor/external/RecordingMode;->SUPERSLOW_HEVC:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 6
    move-object/from16 v12, v17

    move-object/from16 v13, v16

    move-object v14, v15

    filled-new-array/range {v0 .. v14}, [Lcom/samsung/app/video/editor/external/RecordingMode;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/RecordingMode;->$VALUES:[Lcom/samsung/app/video/editor/external/RecordingMode;

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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/samsung/app/video/editor/external/RecordingMode;->value:I

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/RecordingMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/RecordingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/RecordingMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/RecordingMode;
    .registers 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/RecordingMode;->$VALUES:[Lcom/samsung/app/video/editor/external/RecordingMode;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/RecordingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/RecordingMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/samsung/app/video/editor/external/RecordingMode;->value:I

    return v0
.end method
