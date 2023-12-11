.class public final enum Lcom/samsung/app/video/editor/external/ExportRecordingMode;
.super Ljava/lang/Enum;
.source "ExportRecordingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/ExportRecordingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/ExportRecordingMode;

.field public static final enum FAST_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

.field public static final enum HDR10:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

.field public static final enum HDR10_PLUS:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

.field public static final enum HYPERLAPSE_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

.field public static final enum NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

.field public static final enum SLOW_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

.field public static final enum SUPERSLOW_MULTI_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

.field public static final enum SUPERSLOW_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

.field public static final enum UNSUPPORT:Lcom/samsung/app/video/editor/external/ExportRecordingMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 22
    new-instance v0, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    const/4 v1, -0x1

    const-string v2, "UNSUPPORT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/app/video/editor/external/ExportRecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->UNSUPPORT:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    .line 23
    new-instance v1, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    const-string v2, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/samsung/app/video/editor/external/ExportRecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    .line 24
    new-instance v2, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    const/4 v3, 0x2

    const/16 v4, 0xb

    const-string v5, "HDR10"

    invoke-direct {v2, v5, v3, v4}, Lcom/samsung/app/video/editor/external/ExportRecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->HDR10:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    .line 25
    new-instance v3, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    const/4 v4, 0x3

    const/16 v5, 0xa

    const-string v6, "HDR10_PLUS"

    invoke-direct {v3, v6, v4, v5}, Lcom/samsung/app/video/editor/external/ExportRecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->HDR10_PLUS:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    .line 26
    new-instance v4, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    const/4 v5, 0x4

    const/16 v6, 0x65

    const-string v7, "SLOW_NORMAL"

    invoke-direct {v4, v7, v5, v6}, Lcom/samsung/app/video/editor/external/ExportRecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->SLOW_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    .line 27
    new-instance v5, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    const/4 v6, 0x5

    const/16 v7, 0x6f

    const-string v8, "SUPERSLOW_NORMAL"

    invoke-direct {v5, v8, v6, v7}, Lcom/samsung/app/video/editor/external/ExportRecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->SUPERSLOW_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    .line 28
    new-instance v6, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    const/4 v7, 0x6

    const/16 v8, 0x7a

    const-string v9, "HYPERLAPSE_NORMAL"

    invoke-direct {v6, v9, v7, v8}, Lcom/samsung/app/video/editor/external/ExportRecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->HYPERLAPSE_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    .line 29
    new-instance v7, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    const/4 v8, 0x7

    const/16 v9, 0x70

    const-string v10, "SUPERSLOW_MULTI_NORMAL"

    invoke-direct {v7, v10, v8, v9}, Lcom/samsung/app/video/editor/external/ExportRecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->SUPERSLOW_MULTI_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    .line 30
    new-instance v8, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    const/16 v9, 0x8

    const/16 v10, 0x79

    const-string v11, "FAST_NORMAL"

    invoke-direct {v8, v11, v9, v10}, Lcom/samsung/app/video/editor/external/ExportRecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->FAST_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    .line 21
    filled-new-array/range {v0 .. v8}, [Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->$VALUES:[Lcom/samsung/app/video/editor/external/ExportRecordingMode;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->value:I

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/ExportRecordingMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/ExportRecordingMode;
    .registers 1

    .line 21
    sget-object v0, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->$VALUES:[Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/ExportRecordingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->value:I

    return v0
.end method
