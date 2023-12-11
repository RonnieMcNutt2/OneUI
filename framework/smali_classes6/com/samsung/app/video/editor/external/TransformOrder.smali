.class public final enum Lcom/samsung/app/video/editor/external/TransformOrder;
.super Ljava/lang/Enum;
.source "TransformOrder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/TransformOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/TransformOrder;

.field public static final enum TRANSFORMORDER_POST:Lcom/samsung/app/video/editor/external/TransformOrder;

.field public static final enum TRANSFORMORDER_PRE:Lcom/samsung/app/video/editor/external/TransformOrder;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 8
    new-instance v0, Lcom/samsung/app/video/editor/external/TransformOrder;

    const-string v1, "TRANSFORMORDER_PRE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/TransformOrder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/TransformOrder;->TRANSFORMORDER_PRE:Lcom/samsung/app/video/editor/external/TransformOrder;

    .line 9
    new-instance v1, Lcom/samsung/app/video/editor/external/TransformOrder;

    const-string v2, "TRANSFORMORDER_POST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/app/video/editor/external/TransformOrder;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/TransformOrder;->TRANSFORMORDER_POST:Lcom/samsung/app/video/editor/external/TransformOrder;

    .line 7
    filled-new-array {v0, v1}, [Lcom/samsung/app/video/editor/external/TransformOrder;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/TransformOrder;->$VALUES:[Lcom/samsung/app/video/editor/external/TransformOrder;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/samsung/app/video/editor/external/TransformOrder;->value:I

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TransformOrder;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/samsung/app/video/editor/external/TransformOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TransformOrder;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/TransformOrder;
    .registers 1

    .line 7
    sget-object v0, Lcom/samsung/app/video/editor/external/TransformOrder;->$VALUES:[Lcom/samsung/app/video/editor/external/TransformOrder;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/TransformOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/TransformOrder;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/samsung/app/video/editor/external/TransformOrder;->value:I

    return v0
.end method
