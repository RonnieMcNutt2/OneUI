.class public final Landroid/view/WindowMetrics;
.super Ljava/lang/Object;
.source "WindowMetrics.java"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mDensity:F

.field private mWindowInsets:Landroid/view/WindowInsets;

.field private mWindowInsetsSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/WindowInsets;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;)V
    .registers 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "windowInsets"    # Landroid/view/WindowInsets;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, v0}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;F)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;F)V
    .registers 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "windowInsets"    # Landroid/view/WindowInsets;
    .param p3, "density"    # F

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/view/WindowMetrics;->mBounds:Landroid/graphics/Rect;

    .line 82
    iput-object p2, p0, Landroid/view/WindowMetrics;->mWindowInsets:Landroid/view/WindowInsets;

    .line 83
    iput p3, p0, Landroid/view/WindowMetrics;->mDensity:F

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Ljava/util/function/Supplier;F)V
    .registers 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p3, "density"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/WindowInsets;",
            ">;F)V"
        }
    .end annotation

    .line 95
    .local p2, "windowInsetsSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/WindowInsets;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Landroid/view/WindowMetrics;->mBounds:Landroid/graphics/Rect;

    .line 97
    iput-object p2, p0, Landroid/view/WindowMetrics;->mWindowInsetsSupplier:Ljava/util/function/Supplier;

    .line 98
    iput p3, p0, Landroid/view/WindowMetrics;->mDensity:F

    .line 99
    return-void
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/view/WindowMetrics;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDensity()F
    .registers 2

    .line 157
    iget v0, p0, Landroid/view/WindowMetrics;->mDensity:F

    return v0
.end method

.method public getWindowInsets()Landroid/view/WindowInsets;
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/view/WindowMetrics;->mWindowInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_5

    .line 143
    return-object v0

    .line 145
    :cond_5
    iget-object v0, p0, Landroid/view/WindowMetrics;->mWindowInsetsSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    iput-object v0, p0, Landroid/view/WindowMetrics;->mWindowInsets:Landroid/view/WindowInsets;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/view/WindowMetrics;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":{bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/WindowMetrics;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windowInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/WindowMetrics;->mWindowInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowMetrics;->mDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
