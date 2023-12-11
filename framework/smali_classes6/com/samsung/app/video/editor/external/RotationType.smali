.class public final enum Lcom/samsung/app/video/editor/external/RotationType;
.super Ljava/lang/Enum;
.source "RotationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/RotationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/RotationType;

.field public static final enum NINETY_DEGREE:Lcom/samsung/app/video/editor/external/RotationType;

.field public static final enum POINT_ONE_DEGREE:Lcom/samsung/app/video/editor/external/RotationType;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 4
    new-instance v0, Lcom/samsung/app/video/editor/external/RotationType;

    const-string v1, "NINETY_DEGREE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/RotationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/RotationType;->NINETY_DEGREE:Lcom/samsung/app/video/editor/external/RotationType;

    .line 5
    new-instance v1, Lcom/samsung/app/video/editor/external/RotationType;

    const-string v2, "POINT_ONE_DEGREE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/app/video/editor/external/RotationType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/RotationType;->POINT_ONE_DEGREE:Lcom/samsung/app/video/editor/external/RotationType;

    .line 3
    filled-new-array {v0, v1}, [Lcom/samsung/app/video/editor/external/RotationType;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/RotationType;->$VALUES:[Lcom/samsung/app/video/editor/external/RotationType;

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

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lcom/samsung/app/video/editor/external/RotationType;->value:I

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/RotationType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/samsung/app/video/editor/external/RotationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/RotationType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/RotationType;
    .registers 1

    .line 3
    sget-object v0, Lcom/samsung/app/video/editor/external/RotationType;->$VALUES:[Lcom/samsung/app/video/editor/external/RotationType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/RotationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/RotationType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/samsung/app/video/editor/external/RotationType;->value:I

    return v0
.end method
