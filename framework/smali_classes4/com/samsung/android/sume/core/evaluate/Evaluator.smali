.class public interface abstract Lcom/samsung/android/sume/core/evaluate/Evaluator;
.super Ljava/lang/Object;
.source "Evaluator.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
        ">;"
    }
.end annotation


# direct methods
.method public static eq(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;"
        }
    .end annotation

    .line 15
    .local p0, "value":Ljava/lang/Comparable;, "TT;"
    new-instance v0, Lcom/samsung/android/sume/core/evaluate/Equal;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/evaluate/Equal;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static ge(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;"
        }
    .end annotation

    .line 19
    .local p0, "value":Ljava/lang/Comparable;, "TT;"
    new-instance v0, Lcom/samsung/android/sume/core/evaluate/GreaterEqual;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/evaluate/GreaterEqual;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static gt(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;"
        }
    .end annotation

    .line 20
    .local p0, "value":Ljava/lang/Comparable;, "TT;"
    new-instance v0, Lcom/samsung/android/sume/core/evaluate/GreaterThan;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/evaluate/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static le(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;"
        }
    .end annotation

    .line 17
    .local p0, "value":Ljava/lang/Comparable;, "TT;"
    new-instance v0, Lcom/samsung/android/sume/core/evaluate/LessEqual;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/evaluate/LessEqual;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static lt(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;"
        }
    .end annotation

    .line 18
    .local p0, "value":Ljava/lang/Comparable;, "TT;"
    new-instance v0, Lcom/samsung/android/sume/core/evaluate/LessThan;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/evaluate/LessThan;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static ne(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;"
        }
    .end annotation

    .line 16
    .local p0, "value":Ljava/lang/Comparable;, "TT;"
    new-instance v0, Lcom/samsung/android/sume/core/evaluate/NotEqual;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/evaluate/NotEqual;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public abstract and(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/Evaluator;
.end method

.method public abstract evaluate(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)Z"
        }
    .end annotation
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()TV;"
        }
    .end annotation
.end method

.method public abstract getValueType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract or(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/Evaluator;
.end method

.method public abstract stream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            ">;"
        }
    .end annotation
.end method
