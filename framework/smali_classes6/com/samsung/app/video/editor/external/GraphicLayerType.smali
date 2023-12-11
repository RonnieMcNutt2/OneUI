.class public final enum Lcom/samsung/app/video/editor/external/GraphicLayerType;
.super Ljava/lang/Enum;
.source "GraphicLayerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/GraphicLayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/GraphicLayerType;

.field public static final enum LAYERTYPE_CAPTION:Lcom/samsung/app/video/editor/external/GraphicLayerType;

.field public static final enum LAYERTYPE_DECORATOR:Lcom/samsung/app/video/editor/external/GraphicLayerType;

.field public static final enum LAYERTYPE_DOODLE:Lcom/samsung/app/video/editor/external/GraphicLayerType;

.field public static final enum LAYERTYPE_MEDIA:Lcom/samsung/app/video/editor/external/GraphicLayerType;

.field public static final enum LAYERTYPE_NONE:Lcom/samsung/app/video/editor/external/GraphicLayerType;

.field public static final enum LAYERTYPE_ROOT:Lcom/samsung/app/video/editor/external/GraphicLayerType;

.field public static final enum MAX:Lcom/samsung/app/video/editor/external/GraphicLayerType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 8
    new-instance v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;

    const/4 v1, -0x1

    const-string v2, "LAYERTYPE_NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/app/video/editor/external/GraphicLayerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_NONE:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    .line 9
    new-instance v1, Lcom/samsung/app/video/editor/external/GraphicLayerType;

    const-string v2, "LAYERTYPE_ROOT"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/samsung/app/video/editor/external/GraphicLayerType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_ROOT:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    .line 10
    new-instance v2, Lcom/samsung/app/video/editor/external/GraphicLayerType;

    const-string v3, "LAYERTYPE_MEDIA"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/samsung/app/video/editor/external/GraphicLayerType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_MEDIA:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    .line 11
    new-instance v3, Lcom/samsung/app/video/editor/external/GraphicLayerType;

    const-string v4, "LAYERTYPE_CAPTION"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lcom/samsung/app/video/editor/external/GraphicLayerType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_CAPTION:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    .line 12
    new-instance v4, Lcom/samsung/app/video/editor/external/GraphicLayerType;

    const-string v5, "LAYERTYPE_DOODLE"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lcom/samsung/app/video/editor/external/GraphicLayerType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_DOODLE:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    .line 13
    new-instance v5, Lcom/samsung/app/video/editor/external/GraphicLayerType;

    const-string v6, "LAYERTYPE_DECORATOR"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lcom/samsung/app/video/editor/external/GraphicLayerType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_DECORATOR:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    .line 14
    new-instance v6, Lcom/samsung/app/video/editor/external/GraphicLayerType;

    const-string v7, "MAX"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v9, v8}, Lcom/samsung/app/video/editor/external/GraphicLayerType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/app/video/editor/external/GraphicLayerType;->MAX:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    .line 7
    filled-new-array/range {v0 .. v6}, [Lcom/samsung/app/video/editor/external/GraphicLayerType;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->$VALUES:[Lcom/samsung/app/video/editor/external/GraphicLayerType;

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

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->value:I

    .line 19
    return-void
.end method

.method public static getType(I)Lcom/samsung/app/video/editor/external/GraphicLayerType;
    .registers 2
    .param p0, "val"    # I

    .line 26
    packed-switch p0, :pswitch_data_16

    .line 38
    sget-object v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->MAX:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    return-object v0

    .line 36
    :pswitch_6
    sget-object v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_DOODLE:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    return-object v0

    .line 34
    :pswitch_9
    sget-object v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_CAPTION:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    return-object v0

    .line 32
    :pswitch_c
    sget-object v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_MEDIA:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    return-object v0

    .line 30
    :pswitch_f
    sget-object v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_ROOT:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    return-object v0

    .line 28
    :pswitch_12
    sget-object v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_NONE:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch -0x1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/GraphicLayerType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/GraphicLayerType;
    .registers 1

    .line 7
    sget-object v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->$VALUES:[Lcom/samsung/app/video/editor/external/GraphicLayerType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/GraphicLayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/GraphicLayerType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->value:I

    return v0
.end method
