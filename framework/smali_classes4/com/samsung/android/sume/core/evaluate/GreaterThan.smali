.class public Lcom/samsung/android/sume/core/evaluate/GreaterThan;
.super Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;
.source "GreaterThan.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Lcom/samsung/android/sume/core/evaluate/GenericEvaluator<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/evaluate/GreaterThan<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lcom/samsung/android/sume/core/evaluate/GreaterThan$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/evaluate/GreaterThan$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/evaluate/GreaterThan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 17
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GreaterThan;, "Lcom/samsung/android/sume/core/evaluate/GreaterThan<TT;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;-><init>(Landroid/os/Parcel;)V

    .line 18
    return-void
.end method

.method constructor <init>(Ljava/lang/Comparable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 8
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GreaterThan;, "Lcom/samsung/android/sume/core/evaluate/GreaterThan<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;-><init>(Ljava/lang/Comparable;)V

    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic and(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .registers 2

    .line 6
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GreaterThan;, "Lcom/samsung/android/sume/core/evaluate/GreaterThan<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->and(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Lcom/samsung/android/sume/core/evaluate/Evaluator;)I
    .registers 2

    .line 6
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GreaterThan;, "Lcom/samsung/android/sume/core/evaluate/GreaterThan<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->compareTo(Lcom/samsung/android/sume/core/evaluate/Evaluator;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic describeContents()I
    .registers 2

    .line 6
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GreaterThan;, "Lcom/samsung/android/sume/core/evaluate/GreaterThan<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->describeContents()I

    move-result v0

    return v0
.end method

.method public evaluate(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)Z"
        }
    .end annotation

    .line 13
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GreaterThan;, "Lcom/samsung/android/sume/core/evaluate/GreaterThan<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/evaluate/GreaterThan;->getValue()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Comparable;
    .registers 2

    .line 6
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GreaterThan;, "Lcom/samsung/android/sume/core/evaluate/GreaterThan<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->getValue()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValueType()Ljava/lang/Class;
    .registers 2

    .line 6
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GreaterThan;, "Lcom/samsung/android/sume/core/evaluate/GreaterThan<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->getValueType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic or(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .registers 2

    .line 6
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GreaterThan;, "Lcom/samsung/android/sume/core/evaluate/GreaterThan<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->or(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    .line 6
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GreaterThan;, "Lcom/samsung/android/sume/core/evaluate/GreaterThan<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .line 6
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GreaterThan;, "Lcom/samsung/android/sume/core/evaluate/GreaterThan<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 6
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GreaterThan;, "Lcom/samsung/android/sume/core/evaluate/GreaterThan<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
