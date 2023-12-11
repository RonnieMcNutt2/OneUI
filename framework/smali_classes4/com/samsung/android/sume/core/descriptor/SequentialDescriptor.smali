.class public Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;
.super Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;
.source "SequentialDescriptor.java"


# instance fields
.field private final descriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private evaluators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            ">;"
        }
    .end annotation
.end field

.field private final sequentialMode:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;

.field private final sequentialType:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;Ljava/util/List;)V
    .registers 5
    .param p1, "type"    # Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;
    .param p2, "mode"    # Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;",
            "Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p3, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/descriptor/MFDescriptor;>;"
    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->sequentialType:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

    .line 24
    iput-object p2, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->sequentialMode:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;

    .line 25
    iput-object p3, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->descriptors:Ljava/util/List;

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->setFilterId(Ljava/lang/String;)Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;Ljava/util/List;)V
    .registers 4
    .param p1, "type"    # Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 15
    .local p2, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/descriptor/MFDescriptor;>;"
    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->sequentialType:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

    .line 17
    sget-object v0, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;->BATCHED:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->sequentialMode:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;

    .line 18
    iput-object p2, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->descriptors:Ljava/util/List;

    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->setFilterId(Ljava/lang/String;)Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;

    .line 20
    return-void
.end method


# virtual methods
.method public getDescriptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->descriptors:Ljava/util/List;

    return-object v0
.end method

.method public getEvaluators()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->evaluators:Ljava/util/List;

    return-object v0
.end method

.method public getFilterType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 35
    const-class v0, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;

    return-object v0
.end method

.method public getSequentialMode()Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->sequentialMode:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;

    return-object v0
.end method

.method public getSequentialType()Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->sequentialType:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

    return-object v0
.end method

.method public setEvaluators(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "evaluators":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/evaluate/Evaluator;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->evaluators:Ljava/util/List;

    .line 52
    return-void
.end method
