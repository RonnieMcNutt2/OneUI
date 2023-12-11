.class public final enum Lcom/samsung/app/video/editor/external/AnimationInterpolations;
.super Ljava/lang/Enum;
.source "AnimationInterpolations.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/AnimationInterpolations;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/AnimationInterpolations;

.field public static final enum EASEIN:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

.field public static final enum INVALID:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

.field public static final enum LINEAR:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

.field public static final enum SINEINOUT33:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

.field public static final enum SINEINOUT60:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

.field public static final enum SINEINOUT90:Lcom/samsung/app/video/editor/external/AnimationInterpolations;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 7
    new-instance v0, Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    const/4 v1, -0x1

    const-string v2, "INVALID"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/app/video/editor/external/AnimationInterpolations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->INVALID:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    .line 8
    new-instance v1, Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    const-string v2, "LINEAR"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/samsung/app/video/editor/external/AnimationInterpolations;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->LINEAR:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    .line 9
    new-instance v2, Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    const-string v3, "EASEIN"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/samsung/app/video/editor/external/AnimationInterpolations;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->EASEIN:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    .line 10
    new-instance v3, Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    const-string v4, "SINEINOUT33"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lcom/samsung/app/video/editor/external/AnimationInterpolations;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->SINEINOUT33:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    .line 11
    new-instance v4, Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    const-string v5, "SINEINOUT60"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lcom/samsung/app/video/editor/external/AnimationInterpolations;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->SINEINOUT60:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    .line 12
    new-instance v5, Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    const-string v6, "SINEINOUT90"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lcom/samsung/app/video/editor/external/AnimationInterpolations;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->SINEINOUT90:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    .line 6
    filled-new-array/range {v0 .. v5}, [Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->$VALUES:[Lcom/samsung/app/video/editor/external/AnimationInterpolations;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->value:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/AnimationInterpolations;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/AnimationInterpolations;
    .registers 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->$VALUES:[Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/AnimationInterpolations;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->value:I

    return v0
.end method
