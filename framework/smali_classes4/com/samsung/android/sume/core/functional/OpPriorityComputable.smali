.class public Lcom/samsung/android/sume/core/functional/OpPriorityComputable;
.super Ljava/lang/Object;
.source "OpPriorityComputable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;
    }
.end annotation


# instance fields
.field private bridge:Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;

.field private priorityCompute:Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

.field private final type:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Enum;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 15
    .local p1, "type":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable;->type:Ljava/lang/Enum;

    .line 17
    return-void
.end method

.method static synthetic lambda$compute$0(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .registers 4
    .param p0, "ifmt"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .param p1, "ofmt"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p2, "compute"    # Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

    .line 26
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic lambda$compute$1()Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;
    .registers 1

    .line 26
    new-instance v0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/functional/OpPriorityComputable$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public compute(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;)F
    .registers 5
    .param p1, "input"    # Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .param p2, "output"    # Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 25
    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable;->bridge:Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/OpPriorityComputable$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OpPriorityComputable$$ExternalSyntheticLambda0;-><init>()V

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;

    iget-object v1, p0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable;->priorityCompute:Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

    .line 27
    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;->compute(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F

    move-result v0

    .line 25
    return v0
.end method

.method public getType()Ljava/lang/Enum;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>()TT;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable;->type:Ljava/lang/Enum;

    return-object v0
.end method

.method setComputeBridge(Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)V
    .registers 3
    .param p1, "bridge"    # Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;
    .param p2, "priorityCompute"    # Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

    .line 20
    iput-object p1, p0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable;->bridge:Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable;->priorityCompute:Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

    .line 22
    return-void
.end method
