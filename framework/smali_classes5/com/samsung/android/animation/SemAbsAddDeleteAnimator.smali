.class abstract Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;
.super Ljava/lang/Object;
.source "SemAbsAddDeleteAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;,
        Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetInsertPendingIsNotCalledBefore;,
        Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetDeletePendingIsNotCalledBefore;
    }
.end annotation


# static fields
.field static DELETE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static START_SCALE_FACTOR:F


# instance fields
.field mBitmapUpdateBounds:Landroid/graphics/Rect;

.field mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mDeleteRunnable:Ljava/lang/Runnable;

.field mGhostViewSnapshots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHostView:Landroid/view/View;

.field mInsertDeleteRunnable:Ljava/lang/Runnable;

.field mInsertRunnable:Ljava/lang/Runnable;

.field mTranslationDuration:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 23
    const v0, 0x3f733333    # 0.95f

    sput v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    .line 24
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->DELETE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 25
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mTranslationDuration:I

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mBitmapUpdateBounds:Landroid/graphics/Rect;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$1;-><init>(Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method


# virtual methods
.method abstract deleteFromAdapterCompleted()V
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 224
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 225
    return-void

    .line 228
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 229
    .local v1, "vInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    iget-object v2, v1, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 230
    .end local v1    # "vInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    goto :goto_f

    .line 231
    :cond_21
    return-void
.end method

.method getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "translationX"    # F
    .param p3, "translationY"    # F

    .line 200
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 201
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 203
    sget v1, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 204
    sget v1, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 205
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 206
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 207
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 208
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 209
    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 210
    invoke-virtual {p0, v5, v3}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    filled-new-array {v1, v0, v2, v4, v3}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 205
    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method getNewPosition(ILjava/util/ArrayList;)I
    .registers 6
    .param p1, "oldPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 113
    .local p2, "deletedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v0, p1

    .line 114
    .local v0, "newPosition":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 115
    .local v2, "pos":I
    if-ge v2, p1, :cond_1b

    .line 116
    nop

    .end local v2    # "pos":I
    add-int/lit8 v0, v0, -0x1

    .line 120
    goto :goto_5

    .line 121
    :cond_1b
    return v0
.end method

.method getNewPosition(ILjava/util/ArrayList;Ljava/util/ArrayList;)I
    .registers 9
    .param p1, "oldPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 127
    .local p2, "insertedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "deletedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v0, p1

    .line 128
    .local v0, "newPosition":I
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 129
    .local v2, "pos":I
    if-ge v2, p1, :cond_1b

    .line 130
    nop

    .end local v2    # "pos":I
    add-int/lit8 v0, v0, -0x1

    .line 134
    goto :goto_5

    .line 135
    :cond_1b
    const/4 v1, 0x0

    .line 136
    .local v1, "i":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 137
    .local v3, "pos":I
    add-int v4, p1, v1

    if-gt v3, v4, :cond_3a

    .line 138
    add-int/lit8 v0, v0, 0x1

    .line 139
    nop

    .end local v3    # "pos":I
    add-int/lit8 v1, v1, 0x1

    .line 143
    goto :goto_20

    .line 144
    :cond_3a
    return v0
.end method

.method getNewPositionForInsert(ILjava/util/ArrayList;)I
    .registers 6
    .param p1, "oldPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 99
    .local p2, "insertedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v0, p1

    .line 100
    .local v0, "newPosition":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 101
    .local v2, "pos":I
    if-gt v2, v0, :cond_1b

    .line 102
    nop

    .end local v2    # "pos":I
    add-int/lit8 v0, v0, 0x1

    .line 106
    goto :goto_5

    .line 107
    :cond_1b
    return v0
.end method

.method getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    .registers 5
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "*",
            "Ljava/lang/Float;",
            ">;F)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 157
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<*Ljava/lang/Float;>;"
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getShiftCount(ILjava/util/ArrayList;)I
    .registers 6
    .param p1, "currentPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 56
    .local p2, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 57
    .local v0, "shiftCount":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 58
    .local v2, "pos":I
    if-ge v2, p1, :cond_1b

    .line 59
    nop

    .end local v2    # "pos":I
    add-int/lit8 v0, v0, 0x1

    .line 63
    goto :goto_5

    .line 64
    :cond_1b
    return v0
.end method

.method getShiftCount(ILjava/util/ArrayList;Ljava/util/ArrayList;)I
    .registers 7
    .param p1, "currentPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 78
    .local p2, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "deletingItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 79
    .local v0, "shiftCount":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 80
    .local v2, "pos":I
    if-ge v2, p1, :cond_1b

    .line 81
    nop

    .end local v2    # "pos":I
    add-int/lit8 v0, v0, 0x1

    .line 85
    goto :goto_5

    .line 86
    :cond_1b
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 87
    .restart local v2    # "pos":I
    if-ge v2, p1, :cond_35

    .line 88
    nop

    .end local v2    # "pos":I
    add-int/lit8 v0, v0, -0x1

    .line 92
    goto :goto_1f

    .line 93
    :cond_35
    return v0
.end method

.method getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "translationX"    # F
    .param p3, "translationY"    # F

    .line 214
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 215
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 216
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 217
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 218
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    filled-new-array {v0, v1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 216
    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method abstract insertIntoAdapterCompleted()V
.end method

.method abstract setDelete(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract setDeletePending(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract setInsert(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract setInsertPending(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public setTransitionDuration(I)V
    .registers 2
    .param p1, "duration"    # I

    .line 153
    iput p1, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mTranslationDuration:I

    .line 154
    return-void
.end method
