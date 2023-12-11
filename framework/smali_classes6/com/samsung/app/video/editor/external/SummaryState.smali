.class public final enum Lcom/samsung/app/video/editor/external/SummaryState;
.super Ljava/lang/Enum;
.source "SummaryState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/SummaryState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/SummaryState;

.field public static final enum CREATED:Lcom/samsung/app/video/editor/external/SummaryState;

.field public static final enum CREATING:Lcom/samsung/app/video/editor/external/SummaryState;

.field public static final enum DEFAULT:Lcom/samsung/app/video/editor/external/SummaryState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 4
    new-instance v0, Lcom/samsung/app/video/editor/external/SummaryState;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/app/video/editor/external/SummaryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/video/editor/external/SummaryState;->DEFAULT:Lcom/samsung/app/video/editor/external/SummaryState;

    new-instance v1, Lcom/samsung/app/video/editor/external/SummaryState;

    const-string v2, "CREATING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/app/video/editor/external/SummaryState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/app/video/editor/external/SummaryState;->CREATING:Lcom/samsung/app/video/editor/external/SummaryState;

    new-instance v2, Lcom/samsung/app/video/editor/external/SummaryState;

    const-string v3, "CREATED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/samsung/app/video/editor/external/SummaryState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/app/video/editor/external/SummaryState;->CREATED:Lcom/samsung/app/video/editor/external/SummaryState;

    .line 3
    filled-new-array {v0, v1, v2}, [Lcom/samsung/app/video/editor/external/SummaryState;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/SummaryState;->$VALUES:[Lcom/samsung/app/video/editor/external/SummaryState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/SummaryState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/samsung/app/video/editor/external/SummaryState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/SummaryState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/SummaryState;
    .registers 1

    .line 3
    sget-object v0, Lcom/samsung/app/video/editor/external/SummaryState;->$VALUES:[Lcom/samsung/app/video/editor/external/SummaryState;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/SummaryState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/SummaryState;

    return-object v0
.end method
