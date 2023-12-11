.class public final enum Lcom/samsung/app/video/editor/external/PenType;
.super Ljava/lang/Enum;
.source "PenType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/PenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/PenType;

.field public static final enum PEN_AUTO:Lcom/samsung/app/video/editor/external/PenType;

.field public static final enum PEN_CALLIGRAPHY:Lcom/samsung/app/video/editor/external/PenType;

.field public static final enum PEN_ERASOR:Lcom/samsung/app/video/editor/external/PenType;

.field public static final enum PEN_GLOW:Lcom/samsung/app/video/editor/external/PenType;

.field public static final enum PEN_HIGHLIGHT:Lcom/samsung/app/video/editor/external/PenType;

.field public static final enum PEN_MOSAIC:Lcom/samsung/app/video/editor/external/PenType;

.field public static final enum PEN_NORMAL:Lcom/samsung/app/video/editor/external/PenType;

.field public static final enum PEN_PATTERN:Lcom/samsung/app/video/editor/external/PenType;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 4
    new-instance v0, Lcom/samsung/app/video/editor/external/PenType;

    const-string v1, "PEN_NORMAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/app/video/editor/external/PenType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/PenType;->PEN_NORMAL:Lcom/samsung/app/video/editor/external/PenType;

    .line 5
    new-instance v1, Lcom/samsung/app/video/editor/external/PenType;

    const-string v2, "PEN_CALLIGRAPHY"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/app/video/editor/external/PenType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/PenType;->PEN_CALLIGRAPHY:Lcom/samsung/app/video/editor/external/PenType;

    .line 6
    new-instance v2, Lcom/samsung/app/video/editor/external/PenType;

    const-string v3, "PEN_GLOW"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/app/video/editor/external/PenType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/PenType;->PEN_GLOW:Lcom/samsung/app/video/editor/external/PenType;

    .line 7
    new-instance v3, Lcom/samsung/app/video/editor/external/PenType;

    const-string v4, "PEN_HIGHLIGHT"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/app/video/editor/external/PenType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/PenType;->PEN_HIGHLIGHT:Lcom/samsung/app/video/editor/external/PenType;

    .line 8
    new-instance v4, Lcom/samsung/app/video/editor/external/PenType;

    const-string v5, "PEN_ERASOR"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/app/video/editor/external/PenType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/PenType;->PEN_ERASOR:Lcom/samsung/app/video/editor/external/PenType;

    .line 9
    new-instance v5, Lcom/samsung/app/video/editor/external/PenType;

    const-string v6, "PEN_PATTERN"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/app/video/editor/external/PenType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/app/video/editor/external/PenType;->PEN_PATTERN:Lcom/samsung/app/video/editor/external/PenType;

    .line 10
    new-instance v6, Lcom/samsung/app/video/editor/external/PenType;

    const-string v7, "PEN_AUTO"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/app/video/editor/external/PenType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/app/video/editor/external/PenType;->PEN_AUTO:Lcom/samsung/app/video/editor/external/PenType;

    .line 11
    new-instance v7, Lcom/samsung/app/video/editor/external/PenType;

    const-string v8, "PEN_MOSAIC"

    const/16 v10, 0x8

    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/app/video/editor/external/PenType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/app/video/editor/external/PenType;->PEN_MOSAIC:Lcom/samsung/app/video/editor/external/PenType;

    .line 3
    filled-new-array/range {v0 .. v7}, [Lcom/samsung/app/video/editor/external/PenType;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/PenType;->$VALUES:[Lcom/samsung/app/video/editor/external/PenType;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/samsung/app/video/editor/external/PenType;->value:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/PenType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/samsung/app/video/editor/external/PenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/PenType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/PenType;
    .registers 1

    .line 3
    sget-object v0, Lcom/samsung/app/video/editor/external/PenType;->$VALUES:[Lcom/samsung/app/video/editor/external/PenType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/PenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/PenType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/samsung/app/video/editor/external/PenType;->value:I

    return v0
.end method
