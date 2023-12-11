.class public Lcom/samsung/android/sume/core/graph/GraphEdge;
.super Ljava/lang/Object;
.source "GraphEdge.java"


# static fields
.field public static INVALID_ID:I


# instance fields
.field private final bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

.field private final evaluator:Lcom/samsung/android/sume/core/evaluate/Evaluator;

.field private id:I

.field private node:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/sume/core/graph/GraphEdge;->INVALID_ID:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "id"    # I

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/sume/core/graph/GraphEdge;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/evaluate/Evaluator;)V

    .line 22
    iput p1, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->id:I

    .line 23
    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/sume/core/evaluate/Evaluator;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "evaluator"    # Lcom/samsung/android/sume/core/evaluate/Evaluator;

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/sume/core/graph/GraphEdge;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/evaluate/Evaluator;)V

    .line 27
    iput p1, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->id:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V
    .registers 3
    .param p1, "bufferChannel"    # Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sume/core/graph/GraphEdge;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/evaluate/Evaluator;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/evaluate/Evaluator;)V
    .registers 4
    .param p1, "bufferChannel"    # Lcom/samsung/android/sume/core/channel/BufferChannel;
    .param p2, "evaluator"    # Lcom/samsung/android/sume/core/evaluate/Evaluator;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget v0, Lcom/samsung/android/sume/core/graph/GraphEdge;->INVALID_ID:I

    iput v0, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->id:I

    .line 35
    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->evaluator:Lcom/samsung/android/sume/core/evaluate/Evaluator;

    .line 37
    return-void
.end method

.method static synthetic lambda$getBeginNode$0(Landroid/util/Pair;)Ljava/lang/String;
    .registers 2
    .param p0, "it"    # Landroid/util/Pair;

    .line 58
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getEndNode$1(Landroid/util/Pair;)Ljava/lang/String;
    .registers 2
    .param p0, "it"    # Landroid/util/Pair;

    .line 62
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getBeginNode()Ljava/lang/String;
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->node:Landroid/util/Pair;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/GraphEdge$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/GraphEdge$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string/jumbo v1, "n/a"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBufferChannel()Lcom/samsung/android/sume/core/channel/BufferChannel;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    return-object v0
.end method

.method public getEndNode()Ljava/lang/String;
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->node:Landroid/util/Pair;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/GraphEdge$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/GraphEdge$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string/jumbo v1, "n/a"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEvaluator()Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->evaluator:Lcom/samsung/android/sume/core/evaluate/Evaluator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/GraphEdge$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/GraphEdge$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->id:I

    return v0
.end method

.method public setNode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "startNode"    # Ljava/lang/String;
    .param p2, "endNode"    # Ljava/lang/String;

    .line 54
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphEdge;->node:Landroid/util/Pair;

    .line 55
    return-void
.end method
