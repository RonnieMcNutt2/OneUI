.class public final enum Lcom/samsung/app/video/editor/external/BeautyProperty;
.super Ljava/lang/Enum;
.source "BeautyProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/BeautyProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/BeautyProperty;

.field public static final enum BEAUTY_BRIGHTEN:Lcom/samsung/app/video/editor/external/BeautyProperty;

.field public static final enum BEAUTY_EYE:Lcom/samsung/app/video/editor/external/BeautyProperty;

.field public static final enum BEAUTY_FACECOLOR:Lcom/samsung/app/video/editor/external/BeautyProperty;

.field public static final enum BEAUTY_SLIMFACE:Lcom/samsung/app/video/editor/external/BeautyProperty;

.field public static final enum BEAUTY_SOFTEN:Lcom/samsung/app/video/editor/external/BeautyProperty;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 7
    new-instance v0, Lcom/samsung/app/video/editor/external/BeautyProperty;

    const-string v1, "BEAUTY_SOFTEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/BeautyProperty;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/BeautyProperty;->BEAUTY_SOFTEN:Lcom/samsung/app/video/editor/external/BeautyProperty;

    .line 8
    new-instance v1, Lcom/samsung/app/video/editor/external/BeautyProperty;

    const-string v2, "BEAUTY_BRIGHTEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/app/video/editor/external/BeautyProperty;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/BeautyProperty;->BEAUTY_BRIGHTEN:Lcom/samsung/app/video/editor/external/BeautyProperty;

    .line 9
    new-instance v2, Lcom/samsung/app/video/editor/external/BeautyProperty;

    const-string v3, "BEAUTY_EYE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/samsung/app/video/editor/external/BeautyProperty;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/BeautyProperty;->BEAUTY_EYE:Lcom/samsung/app/video/editor/external/BeautyProperty;

    .line 10
    new-instance v3, Lcom/samsung/app/video/editor/external/BeautyProperty;

    const-string v4, "BEAUTY_SLIMFACE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/samsung/app/video/editor/external/BeautyProperty;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/BeautyProperty;->BEAUTY_SLIMFACE:Lcom/samsung/app/video/editor/external/BeautyProperty;

    .line 11
    new-instance v4, Lcom/samsung/app/video/editor/external/BeautyProperty;

    const-string v5, "BEAUTY_FACECOLOR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/samsung/app/video/editor/external/BeautyProperty;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/BeautyProperty;->BEAUTY_FACECOLOR:Lcom/samsung/app/video/editor/external/BeautyProperty;

    .line 6
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/app/video/editor/external/BeautyProperty;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/BeautyProperty;->$VALUES:[Lcom/samsung/app/video/editor/external/BeautyProperty;

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
    iput p3, p0, Lcom/samsung/app/video/editor/external/BeautyProperty;->value:I

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/BeautyProperty;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/BeautyProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/BeautyProperty;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/BeautyProperty;
    .registers 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/BeautyProperty;->$VALUES:[Lcom/samsung/app/video/editor/external/BeautyProperty;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/BeautyProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/BeautyProperty;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/samsung/app/video/editor/external/BeautyProperty;->value:I

    return v0
.end method
