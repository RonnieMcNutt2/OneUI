.class Lcom/android/internal/graphics/palette/WuQuantizer$Box;
.super Ljava/lang/Object;
.source "WuQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/WuQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Box"
.end annotation


# instance fields
.field public b0:I

.field public b1:I

.field public g0:I

.field public g1:I

.field public r0:I

.field public r1:I

.field public vol:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    .line 453
    iput v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    .line 454
    iput v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    .line 455
    iput v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    .line 456
    iput v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 457
    iput v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 458
    iput v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->vol:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/graphics/palette/WuQuantizer$Box-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/graphics/palette/WuQuantizer$Box;-><init>()V

    return-void
.end method
