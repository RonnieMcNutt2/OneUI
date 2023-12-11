.class public final enum Lcom/samsung/app/video/editor/external/CurveType;
.super Ljava/lang/Enum;
.source "CurveType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/CurveType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/CurveType;

.field public static final enum CUBIC_BEZIER:Lcom/samsung/app/video/editor/external/CurveType;

.field public static final enum LINEAR:Lcom/samsung/app/video/editor/external/CurveType;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 4
    new-instance v0, Lcom/samsung/app/video/editor/external/CurveType;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/CurveType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/CurveType;->LINEAR:Lcom/samsung/app/video/editor/external/CurveType;

    .line 5
    new-instance v1, Lcom/samsung/app/video/editor/external/CurveType;

    const-string v2, "CUBIC_BEZIER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/app/video/editor/external/CurveType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/CurveType;->CUBIC_BEZIER:Lcom/samsung/app/video/editor/external/CurveType;

    .line 3
    filled-new-array {v0, v1}, [Lcom/samsung/app/video/editor/external/CurveType;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/CurveType;->$VALUES:[Lcom/samsung/app/video/editor/external/CurveType;

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
    iput p3, p0, Lcom/samsung/app/video/editor/external/CurveType;->value:I

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/CurveType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/samsung/app/video/editor/external/CurveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/CurveType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/CurveType;
    .registers 1

    .line 3
    sget-object v0, Lcom/samsung/app/video/editor/external/CurveType;->$VALUES:[Lcom/samsung/app/video/editor/external/CurveType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/CurveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/CurveType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/samsung/app/video/editor/external/CurveType;->value:I

    return v0
.end method
