.class public Landroid/view/PokeDrawLockController;
.super Ljava/lang/Object;
.source "PokeDrawLockController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PokeDrawLockController"


# instance fields
.field private mAllowedPokeDrawLockCounts:I

.field private mRequestedToAllowPokeDrawLock:Z

.field private mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/PokeDrawLockController;->mAllowedPokeDrawLockCounts:I

    .line 43
    iput-object p1, p0, Landroid/view/PokeDrawLockController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 44
    return-void
.end method


# virtual methods
.method public consumeRequestedToAllowPokeDrawLock(Z)Z
    .registers 4
    .param p1, "forceConsume"    # Z

    .line 67
    iget v0, p0, Landroid/view/PokeDrawLockController;->mAllowedPokeDrawLockCounts:I

    if-gtz v0, :cond_6

    if-eqz p1, :cond_e

    .line 68
    :cond_6
    iget-boolean v0, p0, Landroid/view/PokeDrawLockController;->mRequestedToAllowPokeDrawLock:Z

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 69
    return v1

    .line 71
    :cond_c
    iput-boolean v1, p0, Landroid/view/PokeDrawLockController;->mRequestedToAllowPokeDrawLock:Z

    .line 73
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public hasSurface()Z
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/view/PokeDrawLockController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    return v0
.end method

.method public isRequestedToAllowPokeDrawLock()Z
    .registers 2

    .line 100
    iget-boolean v0, p0, Landroid/view/PokeDrawLockController;->mRequestedToAllowPokeDrawLock:Z

    return v0
.end method

.method requestToAllowPokeDrawLock()V
    .registers 2

    .line 60
    iget v0, p0, Landroid/view/PokeDrawLockController;->mAllowedPokeDrawLockCounts:I

    if-lez v0, :cond_7

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/PokeDrawLockController;->mRequestedToAllowPokeDrawLock:Z

    .line 63
    :cond_7
    return-void
.end method

.method public shouldSkipPokeDrawLockIfNeeded(Z)Z
    .registers 6
    .param p1, "reportNextDraw"    # Z

    .line 78
    invoke-virtual {p0}, Landroid/view/PokeDrawLockController;->hasSurface()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 79
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_13

    .line 80
    const-string v0, "PokeDrawLockController"

    const-string/jumbo v2, "shouldSkipPokeDrawLockIfNeeded, Surface is not valid."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_13
    return v1

    .line 85
    :cond_14
    const/4 v0, 0x0

    if-nez p1, :cond_2a

    iget v2, p0, Landroid/view/PokeDrawLockController;->mAllowedPokeDrawLockCounts:I

    if-nez v2, :cond_1c

    goto :goto_2a

    .line 89
    :cond_1c
    iget-object v2, p0, Landroid/view/PokeDrawLockController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-nez v2, :cond_28

    goto :goto_29

    :cond_28
    move v1, v0

    :goto_29
    return v1

    .line 86
    :cond_2a
    :goto_2a
    return v0
.end method

.method public updateAllowedPokeDrawLockCounts(Z)V
    .registers 4
    .param p1, "isAllowedPokeDrawLock"    # Z

    .line 48
    const/4 v0, 0x1

    if-eqz p1, :cond_9

    .line 49
    iget v1, p0, Landroid/view/PokeDrawLockController;->mAllowedPokeDrawLockCounts:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/view/PokeDrawLockController;->mAllowedPokeDrawLockCounts:I

    goto :goto_16

    .line 51
    :cond_9
    invoke-virtual {p0, v0}, Landroid/view/PokeDrawLockController;->consumeRequestedToAllowPokeDrawLock(Z)Z

    .line 52
    iget v1, p0, Landroid/view/PokeDrawLockController;->mAllowedPokeDrawLockCounts:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/view/PokeDrawLockController;->mAllowedPokeDrawLockCounts:I

    .line 53
    if-gtz v1, :cond_16

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/PokeDrawLockController;->mAllowedPokeDrawLockCounts:I

    .line 57
    :cond_16
    :goto_16
    return-void
.end method
