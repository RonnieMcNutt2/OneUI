.class public interface abstract Lcom/samsung/android/sume/core/format/MutableShape;
.super Ljava/lang/Object;
.source "MutableShape.java"

# interfaces
.implements Lcom/samsung/android/sume/core/format/Shape;


# virtual methods
.method public abstract scale(Landroid/util/Pair;)Lcom/samsung/android/sume/core/format/MutableShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/samsung/android/sume/core/format/MutableShape;"
        }
    .end annotation
.end method

.method public abstract scale(Ljava/lang/Float;)Lcom/samsung/android/sume/core/format/MutableShape;
.end method

.method public abstract setBatch(I)Lcom/samsung/android/sume/core/format/MutableShape;
.end method

.method public abstract setChannels(I)Lcom/samsung/android/sume/core/format/MutableShape;
.end method

.method public abstract setCols(I)Lcom/samsung/android/sume/core/format/MutableShape;
.end method

.method public abstract setRows(I)Lcom/samsung/android/sume/core/format/MutableShape;
.end method

.method public abstract toShape()Lcom/samsung/android/sume/core/format/Shape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/samsung/android/sume/core/format/Shape;",
            ">()TV;"
        }
    .end annotation
.end method
