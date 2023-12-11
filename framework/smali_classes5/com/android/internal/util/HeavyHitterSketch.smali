.class public interface abstract Lcom/android/internal/util/HeavyHitterSketch;
.super Ljava/lang/Object;
.source "HeavyHitterSketch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static newDefault()Lcom/android/internal/util/HeavyHitterSketch;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/internal/util/HeavyHitterSketch<",
            "TV;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;

    invoke-direct {v0}, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract add(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract getCandidates(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getRequiredValidationInputRatio()F
.end method

.method public abstract getTopHeavyHitters(ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract setConfig(II)V
.end method
