.class public final enum Lcom/samsung/app/video/editor/external/Speed;
.super Ljava/lang/Enum;
.source "Speed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/Speed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/Speed;

.field public static final enum EIGHT_TIMES:Lcom/samsung/app/video/editor/external/Speed;

.field public static final enum FOUR_TIMES:Lcom/samsung/app/video/editor/external/Speed;

.field public static final enum HALF:Lcom/samsung/app/video/editor/external/Speed;

.field public static final enum NORMAL:Lcom/samsung/app/video/editor/external/Speed;

.field public static final enum ONE_EIGHTH:Lcom/samsung/app/video/editor/external/Speed;

.field public static final enum ONE_FOURTH:Lcom/samsung/app/video/editor/external/Speed;

.field public static final enum SIXTEEN_TIMES:Lcom/samsung/app/video/editor/external/Speed;

.field public static final enum THIRTY_TWO_TIMES:Lcom/samsung/app/video/editor/external/Speed;

.field public static final enum TWO_TIMES:Lcom/samsung/app/video/editor/external/Speed;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 7
    new-instance v0, Lcom/samsung/app/video/editor/external/Speed;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/app/video/editor/external/Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/Speed;->NORMAL:Lcom/samsung/app/video/editor/external/Speed;

    .line 8
    new-instance v1, Lcom/samsung/app/video/editor/external/Speed;

    const-string v2, "HALF"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/app/video/editor/external/Speed;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/Speed;->HALF:Lcom/samsung/app/video/editor/external/Speed;

    .line 9
    new-instance v2, Lcom/samsung/app/video/editor/external/Speed;

    const-string v3, "ONE_FOURTH"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/app/video/editor/external/Speed;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/Speed;->ONE_FOURTH:Lcom/samsung/app/video/editor/external/Speed;

    .line 10
    new-instance v3, Lcom/samsung/app/video/editor/external/Speed;

    const-string v4, "ONE_EIGHTH"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/app/video/editor/external/Speed;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/Speed;->ONE_EIGHTH:Lcom/samsung/app/video/editor/external/Speed;

    .line 11
    new-instance v4, Lcom/samsung/app/video/editor/external/Speed;

    const-string v5, "TWO_TIMES"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/app/video/editor/external/Speed;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/Speed;->TWO_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    .line 12
    new-instance v5, Lcom/samsung/app/video/editor/external/Speed;

    const-string v6, "FOUR_TIMES"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/app/video/editor/external/Speed;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/app/video/editor/external/Speed;->FOUR_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    .line 13
    new-instance v6, Lcom/samsung/app/video/editor/external/Speed;

    const-string v7, "EIGHT_TIMES"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/app/video/editor/external/Speed;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/app/video/editor/external/Speed;->EIGHT_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    .line 14
    new-instance v7, Lcom/samsung/app/video/editor/external/Speed;

    const-string v8, "SIXTEEN_TIMES"

    const/16 v10, 0x8

    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/app/video/editor/external/Speed;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/app/video/editor/external/Speed;->SIXTEEN_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    .line 15
    new-instance v8, Lcom/samsung/app/video/editor/external/Speed;

    const-string v9, "THIRTY_TWO_TIMES"

    const/16 v11, 0x9

    invoke-direct {v8, v9, v10, v11}, Lcom/samsung/app/video/editor/external/Speed;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/app/video/editor/external/Speed;->THIRTY_TWO_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    .line 6
    filled-new-array/range {v0 .. v8}, [Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/Speed;->$VALUES:[Lcom/samsung/app/video/editor/external/Speed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "va"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/samsung/app/video/editor/external/Speed;->value:I

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/Speed;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/Speed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Speed;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/Speed;
    .registers 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->$VALUES:[Lcom/samsung/app/video/editor/external/Speed;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/Speed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/Speed;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/samsung/app/video/editor/external/Speed;->value:I

    return v0
.end method
