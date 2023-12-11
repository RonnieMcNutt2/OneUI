.class public final enum Lcom/samsung/app/video/editor/external/EffectSubType;
.super Ljava/lang/Enum;
.source "EffectSubType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/EffectSubType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/EffectSubType;

.field public static final enum KERNBURN_PORTRAIT_DIM:Lcom/samsung/app/video/editor/external/EffectSubType;

.field public static final enum NONE:Lcom/samsung/app/video/editor/external/EffectSubType;

.field public static final enum PARTIAL_KENBURNS:Lcom/samsung/app/video/editor/external/EffectSubType;

.field public static final enum PORTRAIT_DIM:Lcom/samsung/app/video/editor/external/EffectSubType;

.field public static final enum SEQUENTIAL_KENBURNS:Lcom/samsung/app/video/editor/external/EffectSubType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 8
    new-instance v0, Lcom/samsung/app/video/editor/external/EffectSubType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/EffectSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EffectSubType;->NONE:Lcom/samsung/app/video/editor/external/EffectSubType;

    .line 9
    new-instance v1, Lcom/samsung/app/video/editor/external/EffectSubType;

    const-string v2, "PARTIAL_KENBURNS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/app/video/editor/external/EffectSubType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/EffectSubType;->PARTIAL_KENBURNS:Lcom/samsung/app/video/editor/external/EffectSubType;

    .line 10
    new-instance v2, Lcom/samsung/app/video/editor/external/EffectSubType;

    const-string v3, "SEQUENTIAL_KENBURNS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/samsung/app/video/editor/external/EffectSubType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/EffectSubType;->SEQUENTIAL_KENBURNS:Lcom/samsung/app/video/editor/external/EffectSubType;

    .line 11
    new-instance v3, Lcom/samsung/app/video/editor/external/EffectSubType;

    const-string v4, "PORTRAIT_DIM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/samsung/app/video/editor/external/EffectSubType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/EffectSubType;->PORTRAIT_DIM:Lcom/samsung/app/video/editor/external/EffectSubType;

    .line 12
    new-instance v4, Lcom/samsung/app/video/editor/external/EffectSubType;

    const-string v5, "KERNBURN_PORTRAIT_DIM"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/samsung/app/video/editor/external/EffectSubType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/EffectSubType;->KERNBURN_PORTRAIT_DIM:Lcom/samsung/app/video/editor/external/EffectSubType;

    .line 6
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/app/video/editor/external/EffectSubType;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/EffectSubType;->$VALUES:[Lcom/samsung/app/video/editor/external/EffectSubType;

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
    iput p3, p0, Lcom/samsung/app/video/editor/external/EffectSubType;->value:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/EffectSubType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/EffectSubType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/EffectSubType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/EffectSubType;
    .registers 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/EffectSubType;->$VALUES:[Lcom/samsung/app/video/editor/external/EffectSubType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/EffectSubType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/EffectSubType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/samsung/app/video/editor/external/EffectSubType;->value:I

    return v0
.end method
