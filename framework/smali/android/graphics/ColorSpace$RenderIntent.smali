.class public final enum Landroid/graphics/ColorSpace$RenderIntent;
.super Ljava/lang/Enum;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderIntent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/ColorSpace$RenderIntent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/ColorSpace$RenderIntent;

.field public static final enum ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

.field public static final enum PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

.field public static final enum RELATIVE:Landroid/graphics/ColorSpace$RenderIntent;

.field public static final enum SATURATION:Landroid/graphics/ColorSpace$RenderIntent;


# direct methods
.method private static synthetic $values()[Landroid/graphics/ColorSpace$RenderIntent;
    .registers 4

    .line 752
    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

    sget-object v1, Landroid/graphics/ColorSpace$RenderIntent;->RELATIVE:Landroid/graphics/ColorSpace$RenderIntent;

    sget-object v2, Landroid/graphics/ColorSpace$RenderIntent;->SATURATION:Landroid/graphics/ColorSpace$RenderIntent;

    sget-object v3, Landroid/graphics/ColorSpace$RenderIntent;->ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

    filled-new-array {v0, v1, v2, v3}, [Landroid/graphics/ColorSpace$RenderIntent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 762
    new-instance v0, Landroid/graphics/ColorSpace$RenderIntent;

    const-string v1, "PERCEPTUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$RenderIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$RenderIntent;->PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

    .line 768
    new-instance v0, Landroid/graphics/ColorSpace$RenderIntent;

    const-string v1, "RELATIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$RenderIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$RenderIntent;->RELATIVE:Landroid/graphics/ColorSpace$RenderIntent;

    .line 777
    new-instance v0, Landroid/graphics/ColorSpace$RenderIntent;

    const-string v1, "SATURATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$RenderIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$RenderIntent;->SATURATION:Landroid/graphics/ColorSpace$RenderIntent;

    .line 784
    new-instance v0, Landroid/graphics/ColorSpace$RenderIntent;

    const-string v1, "ABSOLUTE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$RenderIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$RenderIntent;->ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

    .line 752
    invoke-static {}, Landroid/graphics/ColorSpace$RenderIntent;->$values()[Landroid/graphics/ColorSpace$RenderIntent;

    move-result-object v0

    sput-object v0, Landroid/graphics/ColorSpace$RenderIntent;->$VALUES:[Landroid/graphics/ColorSpace$RenderIntent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 752
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/ColorSpace$RenderIntent;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 752
    const-class v0, Landroid/graphics/ColorSpace$RenderIntent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorSpace$RenderIntent;

    return-object v0
.end method

.method public static values()[Landroid/graphics/ColorSpace$RenderIntent;
    .registers 1

    .line 752
    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->$VALUES:[Landroid/graphics/ColorSpace$RenderIntent;

    invoke-virtual {v0}, [Landroid/graphics/ColorSpace$RenderIntent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/ColorSpace$RenderIntent;

    return-object v0
.end method
