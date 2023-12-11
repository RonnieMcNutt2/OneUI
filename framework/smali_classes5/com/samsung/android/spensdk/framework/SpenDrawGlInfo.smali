.class public Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;
.super Ljava/lang/Object;
.source "SpenDrawGlInfo.java"


# instance fields
.field public mClipRect:Landroid/graphics/Rect;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public mTransformMatrix:[F


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;II[F)V
    .registers 6
    .param p1, "clipRect"    # Landroid/graphics/Rect;
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I
    .param p4, "transform"    # [F

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->mClipRect:Landroid/graphics/Rect;

    .line 28
    iput p2, p0, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->mScreenWidth:I

    .line 29
    iput p3, p0, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->mScreenHeight:I

    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->mTransformMatrix:[F

    .line 31
    invoke-direct {p0, p4}, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->setMatrix([F)V

    .line 32
    return-void
.end method

.method private setClipRect(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .line 35
    iput-object p1, p0, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->mClipRect:Landroid/graphics/Rect;

    .line 36
    return-void
.end method

.method private setMatrix([F)V
    .registers 5
    .param p1, "transform"    # [F

    .line 44
    array-length v0, p1

    iget-object v1, p0, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->mTransformMatrix:[F

    array-length v1, v1

    if-eq v0, v1, :cond_7

    .line 45
    return-void

    .line 47
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->mTransformMatrix:[F

    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 48
    aget v2, p1, v0

    aput v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 50
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method private setSize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 39
    iput p1, p0, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->mScreenWidth:I

    .line 40
    iput p2, p0, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->mScreenHeight:I

    .line 41
    return-void
.end method
