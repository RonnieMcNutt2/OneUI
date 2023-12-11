.class final enum Lcom/samsung/app/video/editor/external/VEState;
.super Ljava/lang/Enum;
.source "VEState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/VEState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/VEState;

.field public static final enum EXPORT:Lcom/samsung/app/video/editor/external/VEState;

.field public static final enum INIT:Lcom/samsung/app/video/editor/external/VEState;

.field public static final enum LAUNCH:Lcom/samsung/app/video/editor/external/VEState;

.field public static final enum PAUSE:Lcom/samsung/app/video/editor/external/VEState;

.field public static final enum PAUSE_EXPORT:Lcom/samsung/app/video/editor/external/VEState;

.field public static final enum PLAY:Lcom/samsung/app/video/editor/external/VEState;

.field public static final enum TERMINATE:Lcom/samsung/app/video/editor/external/VEState;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 7
    new-instance v0, Lcom/samsung/app/video/editor/external/VEState;

    const-string v1, "LAUNCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/app/video/editor/external/VEState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/video/editor/external/VEState;->LAUNCH:Lcom/samsung/app/video/editor/external/VEState;

    new-instance v1, Lcom/samsung/app/video/editor/external/VEState;

    const-string v2, "INIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/app/video/editor/external/VEState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    new-instance v2, Lcom/samsung/app/video/editor/external/VEState;

    const-string v3, "PLAY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/samsung/app/video/editor/external/VEState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    new-instance v3, Lcom/samsung/app/video/editor/external/VEState;

    const-string v4, "PAUSE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/samsung/app/video/editor/external/VEState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    new-instance v4, Lcom/samsung/app/video/editor/external/VEState;

    const-string v5, "EXPORT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/samsung/app/video/editor/external/VEState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/app/video/editor/external/VEState;->EXPORT:Lcom/samsung/app/video/editor/external/VEState;

    new-instance v5, Lcom/samsung/app/video/editor/external/VEState;

    const-string v6, "PAUSE_EXPORT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/samsung/app/video/editor/external/VEState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/app/video/editor/external/VEState;->PAUSE_EXPORT:Lcom/samsung/app/video/editor/external/VEState;

    new-instance v6, Lcom/samsung/app/video/editor/external/VEState;

    const-string v7, "TERMINATE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/samsung/app/video/editor/external/VEState;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/app/video/editor/external/VEState;->TERMINATE:Lcom/samsung/app/video/editor/external/VEState;

    .line 6
    filled-new-array/range {v0 .. v6}, [Lcom/samsung/app/video/editor/external/VEState;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/VEState;->$VALUES:[Lcom/samsung/app/video/editor/external/VEState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/VEState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/VEState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/VEState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/VEState;
    .registers 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/VEState;->$VALUES:[Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/VEState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/VEState;

    return-object v0
.end method
