.class public final enum Lcom/samsung/app/video/editor/external/Orientation;
.super Ljava/lang/Enum;
.source "Orientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/Orientation;

.field public static final enum BACK_CAMERA_NINETY:Lcom/samsung/app/video/editor/external/Orientation;

.field public static final enum BACK_CAMERA_ONE_EIGHTY:Lcom/samsung/app/video/editor/external/Orientation;

.field public static final enum BACK_CAMERA_TWO_SEVENTY:Lcom/samsung/app/video/editor/external/Orientation;

.field public static final enum BACK_CAMERA_ZERO:Lcom/samsung/app/video/editor/external/Orientation;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 7
    new-instance v0, Lcom/samsung/app/video/editor/external/Orientation;

    const-string v1, "BACK_CAMERA_ZERO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/Orientation;->BACK_CAMERA_ZERO:Lcom/samsung/app/video/editor/external/Orientation;

    .line 8
    new-instance v1, Lcom/samsung/app/video/editor/external/Orientation;

    const/4 v2, 0x1

    const/16 v3, 0x5a

    const-string v4, "BACK_CAMERA_NINETY"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/app/video/editor/external/Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/Orientation;->BACK_CAMERA_NINETY:Lcom/samsung/app/video/editor/external/Orientation;

    .line 9
    new-instance v2, Lcom/samsung/app/video/editor/external/Orientation;

    const/4 v3, 0x2

    const/16 v4, 0xb4

    const-string v5, "BACK_CAMERA_ONE_EIGHTY"

    invoke-direct {v2, v5, v3, v4}, Lcom/samsung/app/video/editor/external/Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/Orientation;->BACK_CAMERA_ONE_EIGHTY:Lcom/samsung/app/video/editor/external/Orientation;

    .line 10
    new-instance v3, Lcom/samsung/app/video/editor/external/Orientation;

    const/4 v4, 0x3

    const/16 v5, 0x10e

    const-string v6, "BACK_CAMERA_TWO_SEVENTY"

    invoke-direct {v3, v6, v4, v5}, Lcom/samsung/app/video/editor/external/Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/Orientation;->BACK_CAMERA_TWO_SEVENTY:Lcom/samsung/app/video/editor/external/Orientation;

    .line 6
    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/app/video/editor/external/Orientation;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/Orientation;->$VALUES:[Lcom/samsung/app/video/editor/external/Orientation;

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/samsung/app/video/editor/external/Orientation;->value:I

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/Orientation;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Orientation;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/Orientation;
    .registers 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/Orientation;->$VALUES:[Lcom/samsung/app/video/editor/external/Orientation;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/Orientation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/samsung/app/video/editor/external/Orientation;->value:I

    return v0
.end method
