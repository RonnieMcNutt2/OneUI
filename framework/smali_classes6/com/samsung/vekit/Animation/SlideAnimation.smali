.class public Lcom/samsung/vekit/Animation/SlideAnimation;
.super Lcom/samsung/vekit/Animation/TransitionAnimation;
.source "SlideAnimation.java"


# instance fields
.field protected mSlideType:Lcom/samsung/vekit/Common/Type/SlideType;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .registers 5
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/samsung/vekit/Common/Type/TransitionType;->SLIDE:Lcom/samsung/vekit/Common/Type/TransitionType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/vekit/Animation/TransitionAnimation;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;Lcom/samsung/vekit/Common/Type/TransitionType;)V

    .line 19
    sget-object v0, Lcom/samsung/vekit/Common/Type/SlideType;->VERTICAL:Lcom/samsung/vekit/Common/Type/SlideType;

    iput-object v0, p0, Lcom/samsung/vekit/Animation/SlideAnimation;->mSlideType:Lcom/samsung/vekit/Common/Type/SlideType;

    .line 21
    return-void
.end method


# virtual methods
.method public getSecondTarget()Lcom/samsung/vekit/Item/Item;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/samsung/vekit/Animation/SlideAnimation;->secondTarget:Lcom/samsung/vekit/Item/Item;

    return-object v0
.end method

.method public getTransitionType()Lcom/samsung/vekit/Common/Type/TransitionType;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/samsung/vekit/Animation/SlideAnimation;->transitionType:Lcom/samsung/vekit/Common/Type/TransitionType;

    return-object v0
.end method

.method public onAnimationCanceled(Ljava/lang/Object;)V
    .registers 5
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/samsung/vekit/Animation/SlideAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationCanceled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/SlideAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/SlideAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->onAnimationCanceled(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public onAnimationFinished(Ljava/lang/Object;)V
    .registers 5
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/samsung/vekit/Animation/SlideAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/SlideAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/SlideAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->onAnimationFinished(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public onAnimationStarted(Ljava/lang/Object;)V
    .registers 5
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/samsung/vekit/Animation/SlideAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/SlideAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/SlideAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->onAnimationStarted(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public onAnimationUpdated(Ljava/lang/Object;)V
    .registers 5
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/samsung/vekit/Animation/SlideAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationUpdated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/SlideAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/SlideAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->onAnimationUpdated(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public bridge synthetic setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;
    .registers 5

    .line 14
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/SlideAnimation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/SlideAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/SlideAnimation;
    .registers 6
    .param p1, "controlPointX1"    # F
    .param p2, "controlPointY1"    # F
    .param p3, "controlPointX2"    # F
    .param p4, "controlPointY2"    # F

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/SlideAnimation;

    return-object v0
.end method

.method public bridge synthetic setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .registers 5

    .line 14
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/SlideAnimation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/SlideAnimation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDuration(J)Lcom/samsung/vekit/Animation/Animation;
    .registers 3

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/SlideAnimation;->setDuration(J)Lcom/samsung/vekit/Animation/SlideAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lcom/samsung/vekit/Animation/SlideAnimation;
    .registers 4
    .param p1, "duration"    # J

    .line 73
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setDuration(J)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/SlideAnimation;

    return-object v0
.end method

.method public bridge synthetic setDuration(J)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .registers 3

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/SlideAnimation;->setDuration(J)Lcom/samsung/vekit/Animation/SlideAnimation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setFrom(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .registers 2

    .line 14
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/SlideAnimation;->setFrom(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/SlideAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setFrom(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/SlideAnimation;
    .registers 3
    .param p1, "from"    # Ljava/lang/Float;

    .line 53
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setFrom(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/SlideAnimation;

    return-object v0
.end method

.method public bridge synthetic setFrom(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/SlideAnimation;->setFrom(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/SlideAnimation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/SlideAnimation;->setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/SlideAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/SlideAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Ljava/lang/Float;",
            ">;>;)",
            "Lcom/samsung/vekit/Animation/SlideAnimation;"
        }
    .end annotation

    .line 68
    .local p1, "keyFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/KeyFrame<Ljava/lang/Float;>;>;"
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/SlideAnimation;

    return-object v0
.end method

.method public setSecondTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/SlideAnimation;
    .registers 3
    .param p1, "secondTarget"    # Lcom/samsung/vekit/Item/Item;

    .line 39
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setSecondTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/SlideAnimation;

    return-object v0
.end method

.method public bridge synthetic setSecondTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/SlideAnimation;->setSecondTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/SlideAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setSlideType(Lcom/samsung/vekit/Common/Type/SlideType;)Lcom/samsung/vekit/Animation/SlideAnimation;
    .registers 2
    .param p1, "slideType"    # Lcom/samsung/vekit/Common/Type/SlideType;

    .line 28
    iput-object p1, p0, Lcom/samsung/vekit/Animation/SlideAnimation;->mSlideType:Lcom/samsung/vekit/Common/Type/SlideType;

    .line 29
    return-object p0
.end method

.method public bridge synthetic setStartTime(J)Lcom/samsung/vekit/Animation/Animation;
    .registers 3

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/SlideAnimation;->setStartTime(J)Lcom/samsung/vekit/Animation/SlideAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setStartTime(J)Lcom/samsung/vekit/Animation/SlideAnimation;
    .registers 4
    .param p1, "startTime"    # J

    .line 63
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setStartTime(J)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/SlideAnimation;

    return-object v0
.end method

.method public bridge synthetic setStartTime(J)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .registers 3

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/SlideAnimation;->setStartTime(J)Lcom/samsung/vekit/Animation/SlideAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setTargets(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/SlideAnimation;
    .registers 4
    .param p1, "firstTarget"    # Lcom/samsung/vekit/Item/Item;
    .param p2, "secondTarget"    # Lcom/samsung/vekit/Item/Item;

    .line 34
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setTargets(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/SlideAnimation;

    return-object v0
.end method

.method public bridge synthetic setTargets(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .registers 3

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/SlideAnimation;->setTargets(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/SlideAnimation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTo(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .registers 2

    .line 14
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/SlideAnimation;->setTo(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/SlideAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setTo(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/SlideAnimation;
    .registers 3
    .param p1, "to"    # Ljava/lang/Float;

    .line 58
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setTo(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/SlideAnimation;

    return-object v0
.end method

.method public bridge synthetic setTo(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/SlideAnimation;->setTo(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/SlideAnimation;

    move-result-object p1

    return-object p1
.end method
