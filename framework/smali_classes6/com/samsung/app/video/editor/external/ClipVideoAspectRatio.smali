.class public final enum Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;
.super Ljava/lang/Enum;
.source "ClipVideoAspectRatio.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

.field public static final enum FOUR_BY_THREE:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

.field public static final enum FREE_FORM:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

.field public static final enum FULL_LANDSCAPE:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

.field public static final enum FULL_PORTRAIT:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

.field public static final enum NINE_BY_SIXTEEN:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

.field public static final enum ONE_BY_ONE:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

.field public static final enum ONE_BY_TWO:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

.field public static final enum SIXTEEN_BY_NINE:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

.field public static final enum THREE_BY_FOUR:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

.field public static final enum TWO_BY_ONE:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 7
    new-instance v0, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    const-string v1, "ONE_BY_ONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;->ONE_BY_ONE:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    .line 8
    new-instance v1, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    const-string v2, "FOUR_BY_THREE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;->FOUR_BY_THREE:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    .line 9
    new-instance v2, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    const-string v3, "THREE_BY_FOUR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;->THREE_BY_FOUR:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    .line 10
    new-instance v3, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    const-string v4, "SIXTEEN_BY_NINE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;->SIXTEEN_BY_NINE:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    .line 11
    new-instance v4, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    const-string v5, "NINE_BY_SIXTEEN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;->NINE_BY_SIXTEEN:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    .line 12
    new-instance v5, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    const-string v6, "TWO_BY_ONE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;->TWO_BY_ONE:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    .line 13
    new-instance v6, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    const-string v7, "ONE_BY_TWO"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;->ONE_BY_TWO:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    .line 14
    new-instance v7, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    const-string v8, "FULL_PORTRAIT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;->FULL_PORTRAIT:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    .line 15
    new-instance v8, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    const-string v9, "FULL_LANDSCAPE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;->FULL_LANDSCAPE:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    .line 16
    new-instance v9, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    const-string v10, "FREE_FORM"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;->FREE_FORM:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    .line 6
    filled-new-array/range {v0 .. v9}, [Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;->$VALUES:[Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

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

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;->value:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;
    .registers 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;->$VALUES:[Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;->value:I

    return v0
.end method
