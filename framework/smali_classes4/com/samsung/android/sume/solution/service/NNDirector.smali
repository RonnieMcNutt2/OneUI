.class public Lcom/samsung/android/sume/solution/service/NNDirector;
.super Ljava/lang/Object;
.source "NNDirector.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final AlphaChannelPluginName:Ljava/lang/String;

.field private final OldPhotoPluginName:Ljava/lang/String;

.field private final VSWUpscalerPluginName:Ljava/lang/String;

.field private final defaultServiceClass:Ljava/lang/String;

.field private final defaultServicePackage:Ljava/lang/String;

.field private final graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

.field private final serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lcom/samsung/android/sume/solution/service/NNDirector;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/solution/service/NNDirector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sume/core/service/ServiceProxySupplier;)V
    .registers 5
    .param p1, "serviceProxy"    # Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "com.samsung.android.sume.nn.service"

    iput-object v0, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->defaultServicePackage:Ljava/lang/String;

    .line 31
    const-string v1, "com.samsung.android.sume.nn.service.RemoteNNService"

    iput-object v1, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->defaultServiceClass:Ljava/lang/String;

    .line 33
    const-string v2, "com.samsung.android.sume.ext.plugin.AlphaChannelPlugin"

    iput-object v2, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->AlphaChannelPluginName:Ljava/lang/String;

    .line 34
    const-string v2, "com.samsung.android.sume.nn.plugin.OldPhotoPlugin"

    iput-object v2, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->OldPhotoPluginName:Ljava/lang/String;

    .line 35
    const-string v2, "com.samsung.android.sume.midas.upscaler.WrapVSWEnginePlugin"

    iput-object v2, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->VSWUpscalerPluginName:Ljava/lang/String;

    .line 41
    instance-of v2, p1, Lcom/samsung/android/sume/core/functional/PlaceHolder;

    if-eqz v2, :cond_2f

    .line 42
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/sume/core/functional/PlaceHolder;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 43
    invoke-interface {v2, v0}, Lcom/samsung/android/sume/core/functional/PlaceHolder;->setParameters([Ljava/lang/Object;)Lcom/samsung/android/sume/core/functional/PlaceHolder;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Lcom/samsung/android/sume/core/functional/PlaceHolder;->reset()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    iput-object v0, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    goto :goto_31

    .line 46
    :cond_2f
    iput-object p1, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    .line 48
    :goto_31
    new-instance v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 49
    return-void
.end method


# virtual methods
.method public newAiUpscaler()Lcom/samsung/android/sume/core/controller/SumeClient;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/sume/solution/service/NNDirector;->newImageUpscaler()Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object v0

    return-object v0
.end method

.method public newAiUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .registers 3
    .param p1, "option"    # Lcom/samsung/android/sume/solution/Option;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/solution/service/NNDirector;->newImageUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object v0

    return-object v0
.end method

.method public newImageUpscaler()Lcom/samsung/android/sume/core/controller/SumeClient;
    .registers 2

    .line 115
    new-instance v0, Lcom/samsung/android/sume/solution/Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/solution/Option;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/solution/service/NNDirector;->newImageUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object v0

    return-object v0
.end method

.method public newImageUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .registers 10
    .param p1, "option"    # Lcom/samsung/android/sume/solution/Option;

    .line 148
    new-instance v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v1, Lcom/samsung/android/sume/core/types/nn/Model;->MIRACLE_ESTIMATOR:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v2, Lcom/samsung/android/sume/core/types/nn/NNFW;->TFLITE:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v3, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    .line 149
    .local v0, "miracleEstimator":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    invoke-virtual {v0, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setKeepFilterDatatype(Z)V

    .line 150
    invoke-virtual {v0, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setInputWithEvaluationValue(Z)V

    .line 152
    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v2, Lcom/samsung/android/sume/core/types/nn/Model;->MIRACLE_FILTER:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v3, Lcom/samsung/android/sume/core/types/nn/NNFW;->TFLITE:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v5, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    .line 153
    .local v1, "miracleFilter":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    new-instance v2, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v3, Lcom/samsung/android/sume/core/types/nn/Model;->IMAGE_UPSCALER_X4:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v5, Lcom/samsung/android/sume/core/types/nn/NNFW;->SNAP:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v6, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-direct {v2, v3, v5, v6, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    .line 154
    .local v2, "upscaler":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sume/core/types/DataType;->U8C3:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {v3, v4}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setTargetFormat(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    .line 156
    invoke-virtual {p1}, Lcom/samsung/android/sume/solution/Option;->getFilterThreshold()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 157
    .local v3, "miracleFilterThreshold":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_47

    .line 158
    const/high16 v3, 0x42ac0000    # 86.0f

    .line 160
    :cond_47
    iget-object v4, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 161
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->ge(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v5

    invoke-virtual {v4, v0, v2, v5}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 162
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->lt(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 163
    invoke-virtual {v4, v1, v2}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/sume/solution/Option;->isSupportAlphaChannel()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 166
    new-instance v4, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v5, "EXTRACT_ALPHA"

    const-string v6, "com.samsung.android.sume.ext.plugin.AlphaChannelPlugin"

    invoke-direct {v4, v6, v5}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .local v4, "extractAlpha":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    new-instance v5, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v7, "MERGE_ALPHA"

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v5, "mergeAlpha":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    iget-object v6, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 170
    invoke-virtual {v6, v4, v0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v6

    .line 171
    invoke-virtual {v6, v2, v5}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 174
    .end local v4    # "extractAlpha":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    .end local v5    # "mergeAlpha":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    :cond_83
    iget-object v4, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-virtual {v4, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object v4

    .line 176
    .local v4, "graph":Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;
    new-instance v5, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object v6, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v5
.end method

.method public newImageVSWUpscaler()Lcom/samsung/android/sume/core/controller/SumeClient;
    .registers 2

    .line 123
    new-instance v0, Lcom/samsung/android/sume/solution/Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/solution/Option;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/solution/service/NNDirector;->newImageVSWUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object v0

    return-object v0
.end method

.method public newImageVSWUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .registers 10
    .param p1, "option"    # Lcom/samsung/android/sume/solution/Option;

    .line 181
    new-instance v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v1, Lcom/samsung/android/sume/core/types/nn/Model;->MIRACLE_ESTIMATOR:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v2, Lcom/samsung/android/sume/core/types/nn/NNFW;->TFLITE:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v3, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    .line 182
    .local v0, "miracleEstimator":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    invoke-virtual {v0, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setKeepFilterDatatype(Z)V

    .line 183
    invoke-virtual {v0, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setInputWithEvaluationValue(Z)V

    .line 185
    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v2, Lcom/samsung/android/sume/core/types/nn/Model;->MIRACLE_FILTER:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v3, Lcom/samsung/android/sume/core/types/nn/NNFW;->TFLITE:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v5, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    .line 186
    .local v1, "miracleFilter":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    new-instance v2, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v3, "com.samsung.android.sume.midas.upscaler.WrapVSWEnginePlugin"

    const-string v4, "X4_UPSCALER"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .local v2, "vswUpscaler":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    invoke-virtual {p1}, Lcom/samsung/android/sume/solution/Option;->getFilterThreshold()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 189
    .local v3, "miracleFilterThreshold":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_35

    .line 190
    const/high16 v3, 0x42ac0000    # 86.0f

    .line 192
    :cond_35
    iget-object v4, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 193
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->ge(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v5

    invoke-virtual {v4, v0, v2, v5}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 194
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->lt(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 195
    invoke-virtual {v4, v1, v2}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 197
    invoke-virtual {p1}, Lcom/samsung/android/sume/solution/Option;->isSupportAlphaChannel()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 198
    new-instance v4, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v5, "EXTRACT_ALPHA"

    const-string v6, "com.samsung.android.sume.ext.plugin.AlphaChannelPlugin"

    invoke-direct {v4, v6, v5}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .local v4, "extractAlpha":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    new-instance v5, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v7, "MERGE_ALPHA"

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .local v5, "mergeAlpha":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    iget-object v6, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 202
    invoke-virtual {v6, v4, v0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v6

    .line 203
    invoke-virtual {v6, v2, v5}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 206
    .end local v4    # "extractAlpha":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    .end local v5    # "mergeAlpha":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    :cond_71
    iget-object v4, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-virtual {v4, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object v4

    .line 208
    .local v4, "graph":Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;
    new-instance v5, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object v6, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v5
.end method

.method public newMotionPhotoUpscaler()Lcom/samsung/android/sume/core/controller/SumeClient;
    .registers 2

    .line 119
    new-instance v0, Lcom/samsung/android/sume/solution/Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/solution/Option;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/solution/service/NNDirector;->newMotionPhotoUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object v0

    return-object v0
.end method

.method public newMotionPhotoUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .registers 7
    .param p1, "option"    # Lcom/samsung/android/sume/solution/Option;

    .line 127
    new-instance v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v1, Lcom/samsung/android/sume/core/types/nn/Model;->IMAGE_UPSCALER_X4:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v2, Lcom/samsung/android/sume/core/types/nn/NNFW;->SNAP:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v3, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    .line 128
    .local v0, "upscaler":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->U8C3:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setTargetFormat(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    .line 130
    iget-object v1, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 132
    iget-object v1, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object v1

    .line 133
    .local v1, "graph":Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;
    new-instance v2, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object v3, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v2
.end method

.method public newMotionPhotoVSWUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .registers 6
    .param p1, "option"    # Lcom/samsung/android/sume/solution/Option;

    .line 138
    new-instance v0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v1, "com.samsung.android.sume.midas.upscaler.WrapVSWEnginePlugin"

    const-string v2, "X4_UPSCALER"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .local v0, "vswUpscaler":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    iget-object v1, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 141
    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v1

    .line 142
    invoke-virtual {v1, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object v1

    .line 144
    .local v1, "graph":Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;
    new-instance v2, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object v3, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v2
.end method

.method public newOldPhotoDetector()Lcom/samsung/android/sume/core/controller/SumeClient;
    .registers 2

    .line 212
    new-instance v0, Lcom/samsung/android/sume/solution/Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/solution/Option;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/solution/service/NNDirector;->newOldPhotoDetector(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object v0

    return-object v0
.end method

.method public newOldPhotoDetector(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .registers 7
    .param p1, "option"    # Lcom/samsung/android/sume/solution/Option;

    .line 216
    new-instance v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v1, Lcom/samsung/android/sume/core/types/nn/Model;->OLD_PHOTO_ESTIMATOR:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v2, Lcom/samsung/android/sume/core/types/nn/NNFW;->TFLITE:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v3, Lcom/samsung/android/sume/core/types/HwUnit;->CPU:Lcom/samsung/android/sume/core/types/HwUnit;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    .line 217
    .local v0, "oldPhotoDetector":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    invoke-virtual {v0, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setKeepFilterDatatype(Z)V

    .line 219
    iget-object v1, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 220
    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v1

    .line 221
    invoke-virtual {v1, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object v1

    .line 223
    .local v1, "graph":Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;
    new-instance v2, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object v3, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v2
.end method

.method public newOldPhotoEnhancer()Lcom/samsung/android/sume/core/controller/SumeClient;
    .registers 2

    .line 227
    new-instance v0, Lcom/samsung/android/sume/solution/Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/solution/Option;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/solution/service/NNDirector;->newOldPhotoEnhancer(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object v0

    return-object v0
.end method

.method public newOldPhotoEnhancer(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .registers 10
    .param p1, "option"    # Lcom/samsung/android/sume/solution/Option;

    .line 231
    new-instance v0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v1, "SEPARATE_BG_FACES"

    const-string v2, "com.samsung.android.sume.nn.plugin.OldPhotoPlugin"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .local v0, "extractBgNFaces":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    new-instance v1, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v3, "COMPOSE_BG_FACES"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .local v1, "composeBgNFaces":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setWaitToReceiveAll(Z)V

    .line 235
    new-instance v3, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v4, Lcom/samsung/android/sume/core/types/nn/Model;->OLD_PHOTO_ENHANCER:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v5, Lcom/samsung/android/sume/core/types/nn/NNFW;->SNAP:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v6, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    .line 236
    .local v3, "oldPhotoEnhancer":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    invoke-virtual {v3, v2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setFilterIgnorable(Z)V

    .line 238
    new-instance v4, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v5, Lcom/samsung/android/sume/core/types/nn/Model;->OLD_PHOTO_FACE_ENHANCER:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v6, Lcom/samsung/android/sume/core/types/nn/NNFW;->SNAP:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v7, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    move-object v2, v4

    .line 241
    .local v2, "oldPhotoFaceEnhancer":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    iget-object v4, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 242
    invoke-virtual {v4, v0, v3}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 243
    invoke-virtual {v4, v3, v1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 244
    invoke-virtual {v4, v0, v2}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 245
    invoke-virtual {v4, v2, v1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 246
    invoke-virtual {v4, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object v4

    .line 248
    .local v4, "graph":Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;
    new-instance v5, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object v6, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v5
.end method

.method public newVideoUpscaler()Lcom/samsung/android/sume/core/controller/SumeClient;
    .registers 3

    .line 52
    new-instance v0, Lcom/samsung/android/sume/solution/Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/solution/Option;-><init>()V

    .line 53
    .local v0, "option":Lcom/samsung/android/sume/solution/Option;
    const v1, 0x3e800

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/solution/Option;->setAudioBitrate(I)Lcom/samsung/android/sume/solution/Option;

    .line 54
    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/solution/service/NNDirector;->newVideoUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object v1

    return-object v1
.end method

.method public newVideoUpscaler(Lcom/samsung/android/sume/solution/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .registers 13
    .param p1, "option"    # Lcom/samsung/android/sume/solution/Option;

    .line 58
    new-instance v0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;-><init>(Lcom/samsung/android/sume/core/types/MediaType;)V

    .line 59
    .local v0, "audioDecoder":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    new-instance v1, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    sget-object v2, Lcom/samsung/android/sume/core/types/MediaType;->RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-direct {v1, v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;-><init>(Lcom/samsung/android/sume/core/types/MediaType;)V

    .line 60
    .local v1, "audioEncoder":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    invoke-virtual {p1}, Lcom/samsung/android/sume/solution/Option;->getAudioBitrate()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setBitrate(I)V

    .line 62
    new-instance v2, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    sget-object v3, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-direct {v2, v3}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;-><init>(Lcom/samsung/android/sume/core/types/MediaType;)V

    .line 63
    .local v2, "videoDecoder":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    new-instance v3, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    sget-object v4, Lcom/samsung/android/sume/core/types/MediaType;->RAW_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-direct {v3, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;-><init>(Lcom/samsung/android/sume/core/types/MediaType;)V

    .line 64
    .local v3, "videoEncoder":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v3, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setScale(F)V

    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/sume/solution/Option;->getVideoBitrate()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setBitrate(I)V

    .line 68
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setRunInstant(Z)V

    .line 69
    invoke-virtual {v1, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setRunInstant(Z)V

    .line 70
    invoke-virtual {v2, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setRunInstant(Z)V

    .line 71
    invoke-virtual {v3, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setRunInstant(Z)V

    .line 73
    new-instance v5, Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;

    const/4 v6, 0x0

    new-array v7, v6, [Lcom/samsung/android/sume/core/types/MediaType;

    invoke-direct {v5, v7}, Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;-><init>([Lcom/samsung/android/sume/core/types/MediaType;)V

    .line 75
    .local v5, "parser":Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;
    new-instance v7, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;

    invoke-direct {v7, v6}, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;-><init>(I)V

    move-object v6, v7

    .line 76
    .local v6, "muxer":Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;
    sget-object v7, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    filled-new-array {v7}, [Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;->setMediaTypeToNotifyEvent([Lcom/samsung/android/sume/core/types/MediaType;)V

    .line 78
    new-instance v7, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v8, Lcom/samsung/android/sume/core/types/nn/Model;->VIDEO_UPSCALER_X4:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v9, Lcom/samsung/android/sume/core/types/nn/NNFW;->TFLITE:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v10, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-direct {v7, v8, v9, v10, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    .line 79
    .local v7, "upscaler":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    invoke-virtual {v7, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setBatchIO(Z)V

    .line 80
    invoke-virtual {v7, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setKeepFilterDatatype(Z)V

    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/sume/solution/Option;->runOneByOne()Lcom/samsung/android/sume/core/graph/Graph$Option;

    .line 83
    invoke-virtual {p1}, Lcom/samsung/android/sume/solution/Option;->packedIOBuffers()Lcom/samsung/android/sume/core/graph/Graph$Option;

    .line 85
    iget-object v8, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    sget-object v9, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 86
    invoke-static {v9}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->eq(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v9

    invoke-virtual {v8, v5, v0, v9, v4}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;I)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v8

    .line 87
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/sume/core/types/MediaType;->RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 88
    invoke-static {v9}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->eq(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v9

    invoke-virtual {v8, v1, v6, v9}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 89
    invoke-static {v9}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->eq(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v9

    invoke-virtual {v8, v5, v2, v9, v4}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;I)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 90
    const/4 v8, 0x2

    invoke-virtual {v4, v2, v7, v8}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;I)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 91
    const/4 v8, 0x3

    invoke-virtual {v4, v7, v3, v8}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;I)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    sget-object v8, Lcom/samsung/android/sume/core/types/MediaType;->RAW_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 92
    invoke-static {v8}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->eq(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v8

    invoke-virtual {v4, v3, v6, v8}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 93
    invoke-virtual {v4, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object v4

    .line 95
    .local v4, "graph":Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;
    new-instance v8, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object v9, p0, Lcom/samsung/android/sume/solution/service/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {v9}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v8
.end method
