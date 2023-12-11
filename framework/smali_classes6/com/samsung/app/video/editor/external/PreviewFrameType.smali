.class public final enum Lcom/samsung/app/video/editor/external/PreviewFrameType;
.super Ljava/lang/Enum;
.source "PreviewFrameType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/PreviewFrameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/PreviewFrameType;

.field public static final enum DETAILED_FRAME:Lcom/samsung/app/video/editor/external/PreviewFrameType;

.field public static final enum DETAILED_PATCH:Lcom/samsung/app/video/editor/external/PreviewFrameType;

.field public static final enum IFRAME_ONLY:Lcom/samsung/app/video/editor/external/PreviewFrameType;

.field public static final enum IFRAME_PATCH:Lcom/samsung/app/video/editor/external/PreviewFrameType;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 7
    new-instance v0, Lcom/samsung/app/video/editor/external/PreviewFrameType;

    const-string v1, "DETAILED_FRAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/PreviewFrameType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/PreviewFrameType;->DETAILED_FRAME:Lcom/samsung/app/video/editor/external/PreviewFrameType;

    .line 8
    new-instance v1, Lcom/samsung/app/video/editor/external/PreviewFrameType;

    const-string v2, "IFRAME_ONLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/app/video/editor/external/PreviewFrameType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/PreviewFrameType;->IFRAME_ONLY:Lcom/samsung/app/video/editor/external/PreviewFrameType;

    .line 9
    new-instance v2, Lcom/samsung/app/video/editor/external/PreviewFrameType;

    const/4 v3, 0x2

    const/4 v4, 0x4

    const-string v5, "DETAILED_PATCH"

    invoke-direct {v2, v5, v3, v4}, Lcom/samsung/app/video/editor/external/PreviewFrameType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/PreviewFrameType;->DETAILED_PATCH:Lcom/samsung/app/video/editor/external/PreviewFrameType;

    .line 10
    new-instance v3, Lcom/samsung/app/video/editor/external/PreviewFrameType;

    const/4 v4, 0x3

    const/4 v5, 0x5

    const-string v6, "IFRAME_PATCH"

    invoke-direct {v3, v6, v4, v5}, Lcom/samsung/app/video/editor/external/PreviewFrameType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/PreviewFrameType;->IFRAME_PATCH:Lcom/samsung/app/video/editor/external/PreviewFrameType;

    .line 6
    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/app/video/editor/external/PreviewFrameType;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/PreviewFrameType;->$VALUES:[Lcom/samsung/app/video/editor/external/PreviewFrameType;

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

    .line 16
    iput p3, p0, Lcom/samsung/app/video/editor/external/PreviewFrameType;->value:I

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/PreviewFrameType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/PreviewFrameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/PreviewFrameType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/PreviewFrameType;
    .registers 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/PreviewFrameType;->$VALUES:[Lcom/samsung/app/video/editor/external/PreviewFrameType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/PreviewFrameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/PreviewFrameType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/samsung/app/video/editor/external/PreviewFrameType;->value:I

    return v0
.end method
