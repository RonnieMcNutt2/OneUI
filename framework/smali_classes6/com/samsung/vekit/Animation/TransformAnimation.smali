.class public Lcom/samsung/vekit/Animation/TransformAnimation;
.super Lcom/samsung/vekit/Animation/Animation;
.source "TransformAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Animation/Animation<",
        "Lcom/samsung/vekit/Common/Object/Matrix4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .registers 5
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->TRANSFORM:Lcom/samsung/vekit/Common/Type/AnimationType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Animation/Animation;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/AnimationType;ILjava/lang/String;)V

    .line 19
    new-instance v0, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Animation/TransformAnimation;->from:Ljava/lang/Object;

    .line 20
    new-instance v0, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Animation/TransformAnimation;->to:Ljava/lang/Object;

    .line 21
    return-void
.end method


# virtual methods
.method public onAnimationCanceled(Ljava/lang/Object;)V
    .registers 5
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/samsung/vekit/Animation/TransformAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationCanceled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/TransformAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/TransformAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransformAnimation;->updateTargetValue(Ljava/lang/Object;)V

    .line 84
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationCanceled(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public onAnimationFinished(Ljava/lang/Object;)V
    .registers 5
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/samsung/vekit/Animation/TransformAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/TransformAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/TransformAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransformAnimation;->updateTargetValue(Ljava/lang/Object;)V

    .line 77
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationFinished(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public onAnimationStarted(Ljava/lang/Object;)V
    .registers 5
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/samsung/vekit/Animation/TransformAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/TransformAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/TransformAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/samsung/vekit/Animation/TransformAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    if-nez v0, :cond_2b

    .line 62
    return-void

    .line 63
    :cond_2b
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationStarted(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public onAnimationUpdated(Ljava/lang/Object;)V
    .registers 5
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/samsung/vekit/Animation/TransformAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationUpdated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/TransformAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/TransformAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransformAnimation;->updateTargetValue(Ljava/lang/Object;)V

    .line 70
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationUpdated(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public bridge synthetic setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;
    .registers 5

    .line 15
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/TransformAnimation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/TransformAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/TransformAnimation;
    .registers 6
    .param p1, "controlPointX1"    # F
    .param p2, "controlPointY1"    # F
    .param p3, "controlPointX2"    # F
    .param p4, "controlPointY2"    # F

    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/Animation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransformAnimation;

    return-object v0
.end method

.method public bridge synthetic setDuration(J)Lcom/samsung/vekit/Animation/Animation;
    .registers 3

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/TransformAnimation;->setDuration(J)Lcom/samsung/vekit/Animation/TransformAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lcom/samsung/vekit/Animation/TransformAnimation;
    .registers 4
    .param p1, "duration"    # J

    .line 55
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/Animation;->setDuration(J)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransformAnimation;

    return-object v0
.end method

.method public bridge synthetic setFrom(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .registers 2

    .line 15
    check-cast p1, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransformAnimation;->setFrom(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Animation/TransformAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setFrom(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Animation/TransformAnimation;
    .registers 3
    .param p1, "from"    # Lcom/samsung/vekit/Common/Object/Matrix4;

    .line 40
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setFrom(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransformAnimation;

    return-object v0
.end method

.method public bridge synthetic setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransformAnimation;->setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/TransformAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/TransformAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Lcom/samsung/vekit/Common/Object/Matrix4;",
            ">;>;)",
            "Lcom/samsung/vekit/Animation/TransformAnimation;"
        }
    .end annotation

    .line 25
    .local p1, "keyFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/KeyFrame<Lcom/samsung/vekit/Common/Object/Matrix4;>;>;"
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransformAnimation;

    return-object v0
.end method

.method public bridge synthetic setStartTime(J)Lcom/samsung/vekit/Animation/Animation;
    .registers 3

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/TransformAnimation;->setStartTime(J)Lcom/samsung/vekit/Animation/TransformAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setStartTime(J)Lcom/samsung/vekit/Animation/TransformAnimation;
    .registers 4
    .param p1, "startTime"    # J

    .line 50
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/Animation;->setStartTime(J)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransformAnimation;

    return-object v0
.end method

.method public bridge synthetic setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransformAnimation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/TransformAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/TransformAnimation;
    .registers 3
    .param p1, "target"    # Lcom/samsung/vekit/Common/Object/Element;

    .line 30
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransformAnimation;

    return-object v0
.end method

.method public bridge synthetic setTo(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .registers 2

    .line 15
    check-cast p1, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransformAnimation;->setTo(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Animation/TransformAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setTo(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Animation/TransformAnimation;
    .registers 3
    .param p1, "to"    # Lcom/samsung/vekit/Common/Object/Matrix4;

    .line 45
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setTo(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransformAnimation;

    return-object v0
.end method

.method public updateTargetValue(Ljava/lang/Object;)V
    .registers 5
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/samsung/vekit/Animation/TransformAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    if-nez v0, :cond_5

    .line 90
    return-void

    .line 91
    :cond_5
    if-nez p1, :cond_8

    .line 92
    return-void

    .line 94
    :cond_8
    move-object v0, p1

    check-cast v0, [F

    .line 95
    .local v0, "data":[F
    new-instance v1, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v1, v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>([F)V

    .line 96
    .local v1, "matrix":Lcom/samsung/vekit/Common/Object/Matrix4;
    iget-object v2, p0, Lcom/samsung/vekit/Animation/TransformAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/Object/Element;->getPanel()Lcom/samsung/vekit/Panel/Panel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/vekit/Panel/Panel;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Panel/Panel;

    .line 97
    return-void
.end method
