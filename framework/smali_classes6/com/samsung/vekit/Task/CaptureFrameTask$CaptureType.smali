.class final enum Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
.super Ljava/lang/Enum;
.source "CaptureFrameTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vekit/Task/CaptureFrameTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CaptureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

.field public static final enum ORIGINAL_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

.field public static final enum RENDERED_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 9
    new-instance v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    const-string v1, "ORIGINAL_FRAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->ORIGINAL_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    .line 10
    new-instance v1, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    const-string v2, "RENDERED_FRAME"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->RENDERED_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    .line 8
    filled-new-array {v0, v1}, [Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->$VALUES:[Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .registers 1

    .line 8
    sget-object v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->$VALUES:[Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    return-object v0
.end method
