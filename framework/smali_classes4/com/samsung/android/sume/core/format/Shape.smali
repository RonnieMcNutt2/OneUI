.class public interface abstract Lcom/samsung/android/sume/core/format/Shape;
.super Ljava/lang/Object;
.source "Shape.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/sume/core/format/Copyable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/format/Shape$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;",
        "Lcom/samsung/android/sume/core/format/Copyable<",
        "Lcom/samsung/android/sume/core/format/Shape;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/sume/core/format/Shape;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_NHWC:I = 0x2

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_NWHC:I = 0x1


# direct methods
.method public static mutableOf()Lcom/samsung/android/sume/core/format/MutableShape;
    .registers 2

    .line 44
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v0}, Lcom/samsung/android/sume/core/format/Shape;->mutableOf(IIII)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v0

    return-object v0
.end method

.method public static mutableOf(IIII)Lcom/samsung/android/sume/core/format/MutableShape;
    .registers 5
    .param p0, "batch"    # I
    .param p1, "rows"    # I
    .param p2, "cols"    # I
    .param p3, "channels"    # I

    .line 47
    new-instance v0, Lcom/samsung/android/sume/core/format/StapleMutableShape;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/sume/core/format/StapleMutableShape;-><init>(IIII)V

    return-object v0
.end method

.method public static of(I)Lcom/samsung/android/sume/core/format/Shape;
    .registers 3
    .param p0, "size"    # I

    .line 39
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {v0, v1, p0, v0}, Lcom/samsung/android/sume/core/format/Shape;->of(IIII)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    return-object v0
.end method

.method public static of(II)Lcom/samsung/android/sume/core/format/Shape;
    .registers 3
    .param p0, "rows"    # I
    .param p1, "cols"    # I

    .line 40
    const/4 v0, -0x1

    invoke-static {v0, p0, p1, v0}, Lcom/samsung/android/sume/core/format/Shape;->of(IIII)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIII)Lcom/samsung/android/sume/core/format/Shape;
    .registers 6
    .param p0, "batch"    # I
    .param p1, "rows"    # I
    .param p2, "cols"    # I
    .param p3, "channels"    # I

    .line 41
    new-instance v0, Lcom/samsung/android/sume/core/format/StapleShape;

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sume/core/format/Shape;->mutableOf(IIII)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/format/StapleShape;-><init>(Lcom/samsung/android/sume/core/format/MutableShape;)V

    return-object v0
.end method

.method public static rectOf(II)Landroid/graphics/Rect;
    .registers 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static rectOf(IIII)Landroid/graphics/Rect;
    .registers 5
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public abstract getBatch()I
.end method

.method public abstract getChannels()I
.end method

.method public abstract getCols()I
.end method

.method public abstract getDimension()I
.end method

.method public abstract getRows()I
.end method

.method public abstract getTotal()I
.end method

.method public isEmpty()Z
    .registers 2

    .line 34
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/Shape;->getTotal()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public abstract toArray(I)[I
.end method

.method public abstract toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/samsung/android/sume/core/format/MutableShape;",
            ">()TV;"
        }
    .end annotation
.end method
