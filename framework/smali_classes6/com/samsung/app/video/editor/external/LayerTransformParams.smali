.class public Lcom/samsung/app/video/editor/external/LayerTransformParams;
.super Ljava/lang/Object;
.source "LayerTransformParams.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mLayer:I

.field private mLayerIndex:I

.field private mLayerType:Lcom/samsung/app/video/editor/external/GraphicLayerType;

.field private mPosition:[F

.field private mRotation:[F

.field private mScale:[F


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "LayerTransformParams"

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->TAG:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_MEDIA:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mLayerType:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    .line 31
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/GraphicLayerType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mLayer:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mLayerIndex:I

    .line 33
    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mPosition:[F

    .line 34
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mScale:[F

    .line 35
    const/4 v2, 0x4

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mRotation:[F

    .line 36
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 37
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mScale:[F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 38
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mRotation:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 39
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mRotation:[F

    aput v3, v1, v0

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/samsung/app/video/editor/external/LayerTransformParams;)V
    .registers 2
    .param p1, "transParam"    # Lcom/samsung/app/video/editor/external/LayerTransformParams;

    .line 48
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/LayerTransformParams;-><init>()V

    .line 49
    invoke-static {p1, p0}, Lcom/samsung/app/video/editor/external/LayerTransformParams;->makeCopy(Lcom/samsung/app/video/editor/external/LayerTransformParams;Lcom/samsung/app/video/editor/external/LayerTransformParams;)V

    .line 50
    return-void
.end method

.method private static makeCopy(Lcom/samsung/app/video/editor/external/LayerTransformParams;Lcom/samsung/app/video/editor/external/LayerTransformParams;)V
    .registers 3
    .param p0, "orgParams"    # Lcom/samsung/app/video/editor/external/LayerTransformParams;
    .param p1, "newParams"    # Lcom/samsung/app/video/editor/external/LayerTransformParams;

    .line 58
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mLayerType:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    iput-object v0, p1, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mLayerType:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    .line 59
    iget v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mLayer:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mLayer:I

    .line 60
    iget v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mLayerIndex:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mLayerIndex:I

    .line 61
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mPosition:[F

    iput-object v0, p1, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mPosition:[F

    .line 62
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mRotation:[F

    iput-object v0, p1, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mRotation:[F

    .line 63
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mScale:[F

    iput-object v0, p1, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mScale:[F

    .line 64
    return-void
.end method


# virtual methods
.method public getLayerIndex()I
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLayerIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mLayerIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mLayerIndex:I

    return v0
.end method

.method public getLayerType()Lcom/samsung/app/video/editor/external/GraphicLayerType;
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLayerType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mLayerType:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mLayerType:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    return-object v0
.end method

.method public getPosition()[F
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mPosition:[F

    if-eqz v0, :cond_22

    .line 100
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mPosition:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_22
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mPosition:[F

    return-object v0
.end method

.method public getRotation()[F
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mRotation:[F

    if-eqz v0, :cond_22

    .line 111
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRotation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mRotation:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_22
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mRotation:[F

    return-object v0
.end method

.method public getScale()[F
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mScale:[F

    if-eqz v0, :cond_22

    .line 122
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScale : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mScale:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_22
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mScale:[F

    return-object v0
.end method

.method public setLayerIndex(I)V
    .registers 5
    .param p1, "index"    # I

    .line 94
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLayerIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput p1, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mLayerIndex:I

    .line 96
    return-void
.end method

.method public setLayerType(Lcom/samsung/app/video/editor/external/GraphicLayerType;)V
    .registers 5
    .param p1, "type"    # Lcom/samsung/app/video/editor/external/GraphicLayerType;

    .line 73
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLayerType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mLayerType:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    .line 75
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/GraphicLayerType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mLayer:I

    .line 76
    return-void
.end method

.method public setPosition([F)V
    .registers 5
    .param p1, "pos"    # [F

    .line 105
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mPosition:[F

    .line 106
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mPosition:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public setRotation([F)V
    .registers 5
    .param p1, "rot"    # [F

    .line 116
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mRotation:[F

    .line 117
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mRotation:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public setScale([F)V
    .registers 5
    .param p1, "scale"    # [F

    .line 127
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mScale:[F

    .line 128
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScale : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/LayerTransformParams;->mScale:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method
