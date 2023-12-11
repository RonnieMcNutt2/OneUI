.class public Lcom/samsung/vekit/Animation/AlphaAnimation;
.super Lcom/samsung/vekit/Animation/Animation;
.source "AlphaAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Animation/Animation<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .registers 5
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->ALPHA:Lcom/samsung/vekit/Common/Type/AnimationType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Animation/Animation;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/AnimationType;ILjava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->from:Ljava/lang/Object;

    .line 19
    iput-object v0, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->to:Ljava/lang/Object;

    .line 20
    return-void
.end method


# virtual methods
.method public onAnimationCanceled(Ljava/lang/Object;)V
    .registers 5
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationCanceled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/AlphaAnimation;->updateTargetValue(Ljava/lang/Object;)V

    .line 76
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationCanceled(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public onAnimationFinished(Ljava/lang/Object;)V
    .registers 5
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/AlphaAnimation;->updateTargetValue(Ljava/lang/Object;)V

    .line 69
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationFinished(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public onAnimationStarted(Ljava/lang/Object;)V
    .registers 5
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationStarted(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public onAnimationUpdated(Ljava/lang/Object;)V
    .registers 5
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationUpdated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/AlphaAnimation;->updateTargetValue(Ljava/lang/Object;)V

    .line 62
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationUpdated(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/AlphaAnimation;
    .registers 6
    .param p1, "controlPointX1"    # F
    .param p2, "controlPointY1"    # F
    .param p3, "controlPointX2"    # F
    .param p4, "controlPointY2"    # F

    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/Animation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/AlphaAnimation;

    return-object v0
.end method

.method public bridge synthetic setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;
    .registers 5

    .line 15
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/AlphaAnimation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/AlphaAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lcom/samsung/vekit/Animation/AlphaAnimation;
    .registers 4
    .param p1, "duration"    # J

    .line 49
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/Animation;->setDuration(J)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/AlphaAnimation;

    return-object v0
.end method

.method public bridge synthetic setDuration(J)Lcom/samsung/vekit/Animation/Animation;
    .registers 3

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/AlphaAnimation;->setDuration(J)Lcom/samsung/vekit/Animation/AlphaAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setFrom(Ljava/lang/Integer;)Lcom/samsung/vekit/Animation/AlphaAnimation;
    .registers 3
    .param p1, "from"    # Ljava/lang/Integer;

    .line 34
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setFrom(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/AlphaAnimation;

    return-object v0
.end method

.method public bridge synthetic setFrom(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .registers 2

    .line 15
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/AlphaAnimation;->setFrom(Ljava/lang/Integer;)Lcom/samsung/vekit/Animation/AlphaAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/AlphaAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lcom/samsung/vekit/Animation/AlphaAnimation;"
        }
    .end annotation

    .line 81
    .local p1, "keyFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/KeyFrame<Ljava/lang/Integer;>;>;"
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/AlphaAnimation;

    return-object v0
.end method

.method public bridge synthetic setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/AlphaAnimation;->setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/AlphaAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setStartTime(J)Lcom/samsung/vekit/Animation/AlphaAnimation;
    .registers 4
    .param p1, "startTime"    # J

    .line 44
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/Animation;->setStartTime(J)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/AlphaAnimation;

    return-object v0
.end method

.method public bridge synthetic setStartTime(J)Lcom/samsung/vekit/Animation/Animation;
    .registers 3

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/AlphaAnimation;->setStartTime(J)Lcom/samsung/vekit/Animation/AlphaAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/AlphaAnimation;
    .registers 3
    .param p1, "target"    # Lcom/samsung/vekit/Common/Object/Element;

    .line 24
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/AlphaAnimation;

    return-object v0
.end method

.method public bridge synthetic setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/AlphaAnimation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/AlphaAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setTo(Ljava/lang/Integer;)Lcom/samsung/vekit/Animation/AlphaAnimation;
    .registers 3
    .param p1, "to"    # Ljava/lang/Integer;

    .line 39
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setTo(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/AlphaAnimation;

    return-object v0
.end method

.method public bridge synthetic setTo(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .registers 2

    .line 15
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/AlphaAnimation;->setTo(Ljava/lang/Integer;)Lcom/samsung/vekit/Animation/AlphaAnimation;

    move-result-object p1

    return-object p1
.end method

.method public updateTargetValue(Ljava/lang/Object;)V
    .registers 4
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    if-nez v0, :cond_5

    .line 87
    return-void

    .line 88
    :cond_5
    if-nez p1, :cond_8

    .line 89
    return-void

    .line 91
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 93
    .local v0, "opacity":F
    iget-object v1, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    check-cast v1, Lcom/samsung/vekit/Item/Item;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Item/Item;->setOpacity(F)Lcom/samsung/vekit/Item/Item;

    .line 94
    return-void
.end method
