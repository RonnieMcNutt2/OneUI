.class public final enum Lcom/samsung/app/video/editor/external/ElementType;
.super Ljava/lang/Enum;
.source "ElementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/ElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/ElementType;

.field public static final enum IMG:Lcom/samsung/app/video/editor/external/ElementType;

.field public static final enum MOVIE:Lcom/samsung/app/video/editor/external/ElementType;

.field public static final enum NONE:Lcom/samsung/app/video/editor/external/ElementType;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 7
    new-instance v0, Lcom/samsung/app/video/editor/external/ElementType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/ElementType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/ElementType;->NONE:Lcom/samsung/app/video/editor/external/ElementType;

    .line 8
    new-instance v1, Lcom/samsung/app/video/editor/external/ElementType;

    const-string v2, "MOVIE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/app/video/editor/external/ElementType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/ElementType;->MOVIE:Lcom/samsung/app/video/editor/external/ElementType;

    .line 9
    new-instance v2, Lcom/samsung/app/video/editor/external/ElementType;

    const-string v3, "IMG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/samsung/app/video/editor/external/ElementType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/ElementType;->IMG:Lcom/samsung/app/video/editor/external/ElementType;

    .line 6
    filled-new-array {v0, v1, v2}, [Lcom/samsung/app/video/editor/external/ElementType;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/ElementType;->$VALUES:[Lcom/samsung/app/video/editor/external/ElementType;

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

    .line 13
    iput p3, p0, Lcom/samsung/app/video/editor/external/ElementType;->value:I

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/ElementType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/ElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/ElementType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/ElementType;
    .registers 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/ElementType;->$VALUES:[Lcom/samsung/app/video/editor/external/ElementType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/ElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/ElementType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/samsung/app/video/editor/external/ElementType;->value:I

    return v0
.end method
