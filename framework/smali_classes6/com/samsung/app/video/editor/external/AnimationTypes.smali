.class public final enum Lcom/samsung/app/video/editor/external/AnimationTypes;
.super Ljava/lang/Enum;
.source "AnimationTypes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/AnimationTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/AnimationTypes;

.field public static final enum COMICS_SUBTITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;

.field public static final enum COMICS_TITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;

.field public static final enum FADE:Lcom/samsung/app/video/editor/external/AnimationTypes;

.field public static final enum HAPPY_SUBTITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;

.field public static final enum HAPPY_TITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;

.field public static final enum LOUNGE_SUBTITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;

.field public static final enum LOUNGE_TITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;

.field public static final enum MAX:Lcom/samsung/app/video/editor/external/AnimationTypes;

.field public static final enum NONE:Lcom/samsung/app/video/editor/external/AnimationTypes;

.field public static final enum RELAX_SUBTITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;

.field public static final enum RELAX_TITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;

.field public static final enum UPBEAT_SUBTITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;

.field public static final enum UPBEAT_TITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 7
    new-instance v0, Lcom/samsung/app/video/editor/external/AnimationTypes;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/AnimationTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/AnimationTypes;->NONE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    .line 8
    new-instance v1, Lcom/samsung/app/video/editor/external/AnimationTypes;

    const-string v2, "FADE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/app/video/editor/external/AnimationTypes;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/AnimationTypes;->FADE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    .line 9
    new-instance v2, Lcom/samsung/app/video/editor/external/AnimationTypes;

    const-string v3, "LOUNGE_TITLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/samsung/app/video/editor/external/AnimationTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/AnimationTypes;->LOUNGE_TITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    .line 10
    new-instance v3, Lcom/samsung/app/video/editor/external/AnimationTypes;

    const-string v4, "LOUNGE_SUBTITLE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/samsung/app/video/editor/external/AnimationTypes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/AnimationTypes;->LOUNGE_SUBTITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    .line 11
    new-instance v4, Lcom/samsung/app/video/editor/external/AnimationTypes;

    const-string v5, "RELAX_TITLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/samsung/app/video/editor/external/AnimationTypes;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/AnimationTypes;->RELAX_TITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    .line 12
    new-instance v5, Lcom/samsung/app/video/editor/external/AnimationTypes;

    const-string v6, "RELAX_SUBTITLE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/samsung/app/video/editor/external/AnimationTypes;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/app/video/editor/external/AnimationTypes;->RELAX_SUBTITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    .line 13
    new-instance v6, Lcom/samsung/app/video/editor/external/AnimationTypes;

    const-string v7, "UPBEAT_TITLE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/samsung/app/video/editor/external/AnimationTypes;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/app/video/editor/external/AnimationTypes;->UPBEAT_TITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    .line 14
    new-instance v7, Lcom/samsung/app/video/editor/external/AnimationTypes;

    const-string v8, "UPBEAT_SUBTITLE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/samsung/app/video/editor/external/AnimationTypes;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/app/video/editor/external/AnimationTypes;->UPBEAT_SUBTITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    .line 15
    new-instance v8, Lcom/samsung/app/video/editor/external/AnimationTypes;

    const-string v9, "COMICS_TITLE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/samsung/app/video/editor/external/AnimationTypes;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/app/video/editor/external/AnimationTypes;->COMICS_TITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    .line 16
    new-instance v9, Lcom/samsung/app/video/editor/external/AnimationTypes;

    const-string v10, "COMICS_SUBTITLE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/samsung/app/video/editor/external/AnimationTypes;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/app/video/editor/external/AnimationTypes;->COMICS_SUBTITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    .line 17
    new-instance v10, Lcom/samsung/app/video/editor/external/AnimationTypes;

    const-string v11, "HAPPY_TITLE"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcom/samsung/app/video/editor/external/AnimationTypes;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/app/video/editor/external/AnimationTypes;->HAPPY_TITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    .line 18
    new-instance v11, Lcom/samsung/app/video/editor/external/AnimationTypes;

    const-string v12, "HAPPY_SUBTITLE"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v13}, Lcom/samsung/app/video/editor/external/AnimationTypes;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/app/video/editor/external/AnimationTypes;->HAPPY_SUBTITLE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    .line 19
    new-instance v12, Lcom/samsung/app/video/editor/external/AnimationTypes;

    const-string v13, "MAX"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14, v14}, Lcom/samsung/app/video/editor/external/AnimationTypes;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/app/video/editor/external/AnimationTypes;->MAX:Lcom/samsung/app/video/editor/external/AnimationTypes;

    .line 6
    filled-new-array/range {v0 .. v12}, [Lcom/samsung/app/video/editor/external/AnimationTypes;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/AnimationTypes;->$VALUES:[Lcom/samsung/app/video/editor/external/AnimationTypes;

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

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/samsung/app/video/editor/external/AnimationTypes;->value:I

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/AnimationTypes;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/AnimationTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/AnimationTypes;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/AnimationTypes;
    .registers 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/AnimationTypes;->$VALUES:[Lcom/samsung/app/video/editor/external/AnimationTypes;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/AnimationTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/AnimationTypes;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/samsung/app/video/editor/external/AnimationTypes;->value:I

    return v0
.end method
