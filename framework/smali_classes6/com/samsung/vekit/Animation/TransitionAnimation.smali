.class public Lcom/samsung/vekit/Animation/TransitionAnimation;
.super Lcom/samsung/vekit/Animation/Animation;
.source "TransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Animation/Animation<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field protected secondTarget:Lcom/samsung/vekit/Item/Item;

.field protected transitionType:Lcom/samsung/vekit/Common/Type/TransitionType;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;Lcom/samsung/vekit/Common/Type/TransitionType;)V
    .registers 6
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "transitionType"    # Lcom/samsung/vekit/Common/Type/TransitionType;

    .line 23
    sget-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->TRANSITION:Lcom/samsung/vekit/Common/Type/AnimationType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Animation/Animation;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/AnimationType;ILjava/lang/String;)V

    .line 24
    iput-object p4, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->transitionType:Lcom/samsung/vekit/Common/Type/TransitionType;

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->from:Ljava/lang/Object;

    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->to:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method static synthetic lambda$checkValidItem$0(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Common/Type/ItemType;)Z
    .registers 3
    .param p0, "item"    # Lcom/samsung/vekit/Item/Item;
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/ItemType;

    .line 128
    invoke-virtual {p0}, Lcom/samsung/vekit/Item/Item;->getItemType()Lcom/samsung/vekit/Common/Type/ItemType;

    move-result-object v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public checkValidItem(Lcom/samsung/vekit/Item/Item;)V
    .registers 7
    .param p1, "item"    # Lcom/samsung/vekit/Item/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->IMAGE:Lcom/samsung/vekit/Common/Type/ItemType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/ItemType;->VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/ItemType;->COLOR:Lcom/samsung/vekit/Common/Type/ItemType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/vekit/Common/Type/ItemType;

    move-result-object v0

    .line 128
    .local v0, "availableTypes":[Lcom/samsung/vekit/Common/Type/ItemType;
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/vekit/Animation/TransitionAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/vekit/Item/Item;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    .line 129
    .local v1, "valid":Z
    invoke-virtual {p1}, Lcom/samsung/vekit/Item/Item;->getParent()Lcom/samsung/vekit/Layer/Layer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/vekit/Layer/Layer;->getLayerType()Lcom/samsung/vekit/Common/Type/LayerType;

    move-result-object v2

    sget-object v3, Lcom/samsung/vekit/Common/Type/LayerType;->MEDIA:Lcom/samsung/vekit/Common/Type/LayerType;

    if-ne v2, v3, :cond_25

    const/4 v2, 0x1

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    .line 130
    .local v2, "isOnMediaLayer":Z
    :goto_26
    if-eqz v1, :cond_2b

    if-eqz v2, :cond_2b

    .line 133
    return-void

    .line 131
    :cond_2b
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "isInvalidElement : please set correct Items to TransitionAnimation."

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getFirstTarget()Lcom/samsung/vekit/Common/Object/Element;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    return-object v0
.end method

.method public getSecondTarget()Lcom/samsung/vekit/Item/Item;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->secondTarget:Lcom/samsung/vekit/Item/Item;

    return-object v0
.end method

.method public getTransitionType()Lcom/samsung/vekit/Common/Type/TransitionType;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->transitionType:Lcom/samsung/vekit/Common/Type/TransitionType;

    return-object v0
.end method

.method public onAnimationCanceled(Ljava/lang/Object;)V
    .registers 2
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 123
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationCanceled(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public onAnimationFinished(Ljava/lang/Object;)V
    .registers 2
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 118
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationFinished(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public onAnimationStarted(Ljava/lang/Object;)V
    .registers 2
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 108
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationStarted(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public onAnimationUpdated(Ljava/lang/Object;)V
    .registers 2
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 113
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationUpdated(Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public bridge synthetic setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;
    .registers 5

    .line 18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .registers 6
    .param p1, "controlPointX1"    # F
    .param p2, "controlPointY1"    # F
    .param p3, "controlPointX2"    # F
    .param p4, "controlPointY2"    # F

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/Animation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransitionAnimation;

    return-object v0
.end method

.method public bridge synthetic setDuration(J)Lcom/samsung/vekit/Animation/Animation;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setDuration(J)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .registers 4
    .param p1, "duration"    # J

    .line 103
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/Animation;->setDuration(J)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransitionAnimation;

    return-object v0
.end method

.method public setFirstTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .registers 5
    .param p1, "firstTarget"    # Lcom/samsung/vekit/Item/Item;

    .line 48
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->checkValidItem(Lcom/samsung/vekit/Item/Item;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_7

    .line 52
    nop

    .line 53
    iput-object p1, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    .line 54
    return-object p0

    .line 49
    :catch_7
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->TAG:Ljava/lang/String;

    const-string v2, "setFirstTarget: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    return-object p0
.end method

.method public bridge synthetic setFrom(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .registers 2

    .line 18
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setFrom(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setFrom(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .registers 3
    .param p1, "from"    # Ljava/lang/Float;

    .line 88
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setFrom(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransitionAnimation;

    return-object v0
.end method

.method public setSecondTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .registers 5
    .param p1, "secondTarget"    # Lcom/samsung/vekit/Item/Item;

    .line 59
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->checkValidItem(Lcom/samsung/vekit/Item/Item;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_7

    .line 63
    nop

    .line 64
    iput-object p1, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->secondTarget:Lcom/samsung/vekit/Item/Item;

    .line 65
    return-object p0

    .line 60
    :catch_7
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->TAG:Ljava/lang/String;

    const-string v2, "setSecondTarget: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    return-object p0
.end method

.method public bridge synthetic setStartTime(J)Lcom/samsung/vekit/Animation/Animation;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setStartTime(J)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setStartTime(J)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .registers 4
    .param p1, "startTime"    # J

    .line 98
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/Animation;->setStartTime(J)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransitionAnimation;

    return-object v0
.end method

.method public bridge synthetic setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .registers 3
    .param p1, "target"    # Lcom/samsung/vekit/Common/Object/Element;

    .line 78
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransitionAnimation;

    return-object v0
.end method

.method public setTargets(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .registers 6
    .param p1, "firstTarget"    # Lcom/samsung/vekit/Item/Item;
    .param p2, "secondTarget"    # Lcom/samsung/vekit/Item/Item;

    .line 35
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->checkValidItem(Lcom/samsung/vekit/Item/Item;)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->checkValidItem(Lcom/samsung/vekit/Item/Item;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_c

    .line 40
    nop

    .line 41
    iput-object p1, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    .line 42
    iput-object p2, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->secondTarget:Lcom/samsung/vekit/Item/Item;

    .line 43
    return-object p0

    .line 37
    :catch_c
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->TAG:Ljava/lang/String;

    const-string v2, "setTargets: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    return-object p0
.end method

.method public bridge synthetic setTo(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .registers 2

    .line 18
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setTo(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setTo(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .registers 3
    .param p1, "to"    # Ljava/lang/Float;

    .line 93
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setTo(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransitionAnimation;

    return-object v0
.end method
