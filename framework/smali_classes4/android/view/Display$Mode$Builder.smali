.class public final Landroid/view/Display$Mode$Builder;
.super Ljava/lang/Object;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display$Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mHeight:I

.field private mRefreshRate:F

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2597
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/Display$Mode$Builder;->mWidth:I

    .line 2598
    iput v0, p0, Landroid/view/Display$Mode$Builder;->mHeight:I

    .line 2599
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/Display$Mode$Builder;->mRefreshRate:F

    .line 2600
    return-void
.end method


# virtual methods
.method public build()Landroid/view/Display$Mode;
    .registers 5

    .line 2654
    new-instance v0, Landroid/view/Display$Mode;

    iget v1, p0, Landroid/view/Display$Mode$Builder;->mWidth:I

    iget v2, p0, Landroid/view/Display$Mode$Builder;->mHeight:I

    iget v3, p0, Landroid/view/Display$Mode$Builder;->mRefreshRate:F

    invoke-direct {v0, v1, v2, v3}, Landroid/view/Display$Mode;-><init>(IIF)V

    .line 2655
    .local v0, "mode":Landroid/view/Display$Mode;
    return-object v0
.end method

.method public setRefreshRate(F)Landroid/view/Display$Mode$Builder;
    .registers 3
    .param p1, "refreshRate"    # F

    .line 2623
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    .line 2624
    iput p1, p0, Landroid/view/Display$Mode$Builder;->mRefreshRate:F

    .line 2626
    :cond_7
    return-object p0
.end method

.method public setResolution(II)Landroid/view/Display$Mode$Builder;
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2609
    if-lez p1, :cond_8

    if-lez p2, :cond_8

    .line 2610
    iput p1, p0, Landroid/view/Display$Mode$Builder;->mWidth:I

    .line 2611
    iput p2, p0, Landroid/view/Display$Mode$Builder;->mHeight:I

    .line 2613
    :cond_8
    return-object p0
.end method
