.class public final enum Landroid/graphics/Path$Op;
.super Ljava/lang/Enum;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Op"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Path$Op;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Path$Op;

.field public static final enum DIFFERENCE:Landroid/graphics/Path$Op;

.field public static final enum INTERSECT:Landroid/graphics/Path$Op;

.field public static final enum REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

.field public static final enum UNION:Landroid/graphics/Path$Op;

.field public static final enum XOR:Landroid/graphics/Path$Op;


# direct methods
.method private static synthetic $values()[Landroid/graphics/Path$Op;
    .registers 5

    .line 110
    sget-object v0, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    sget-object v1, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    sget-object v2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    sget-object v3, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    sget-object v4, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/graphics/Path$Op;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 114
    new-instance v0, Landroid/graphics/Path$Op;

    const-string v1, "DIFFERENCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Path$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    .line 118
    new-instance v0, Landroid/graphics/Path$Op;

    const-string v1, "INTERSECT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/Path$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    .line 122
    new-instance v0, Landroid/graphics/Path$Op;

    const-string v1, "UNION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Path$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    .line 126
    new-instance v0, Landroid/graphics/Path$Op;

    const-string v1, "XOR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Path$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    .line 130
    new-instance v0, Landroid/graphics/Path$Op;

    const-string v1, "REVERSE_DIFFERENCE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/graphics/Path$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    .line 110
    invoke-static {}, Landroid/graphics/Path$Op;->$values()[Landroid/graphics/Path$Op;

    move-result-object v0

    sput-object v0, Landroid/graphics/Path$Op;->$VALUES:[Landroid/graphics/Path$Op;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Path$Op;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 110
    const-class v0, Landroid/graphics/Path$Op;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path$Op;

    return-object v0
.end method

.method public static values()[Landroid/graphics/Path$Op;
    .registers 1

    .line 110
    sget-object v0, Landroid/graphics/Path$Op;->$VALUES:[Landroid/graphics/Path$Op;

    invoke-virtual {v0}, [Landroid/graphics/Path$Op;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Path$Op;

    return-object v0
.end method
