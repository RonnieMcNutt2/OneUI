.class public abstract Lcom/samsung/vekit/Animation/Animation;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "Animation.java"

# interfaces
.implements Lcom/samsung/vekit/Listener/AnimationStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vekit/Animation/Animation$AnimationStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/vekit/Common/Object/Element;",
        "Lcom/samsung/vekit/Listener/AnimationStatusListener;"
    }
.end annotation


# instance fields
.field protected animationType:Lcom/samsung/vekit/Common/Type/AnimationType;

.field protected bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

.field protected duration:J

.field protected firstTarget:Lcom/samsung/vekit/Common/Object/Element;

.field protected from:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected interpolationType:Lcom/samsung/vekit/Common/Type/InterpolationType;

.field protected keyFrameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field protected listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

.field protected startTime:J

.field protected to:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/AnimationType;ILjava/lang/String;)V
    .registers 7
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "type"    # Lcom/samsung/vekit/Common/Type/AnimationType;
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 43
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->ANIMATION:Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    .line 30
    new-instance v0, Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/BezierControlPoint;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p0, p2}, Lcom/samsung/vekit/Animation/Animation;->setAnimationType(Lcom/samsung/vekit/Common/Type/AnimationType;)V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Animation/Animation;->startTime:J

    .line 46
    iput-wide v0, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->TAG:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/samsung/vekit/Common/Type/InterpolationType;->LINEAR:Lcom/samsung/vekit/Common/Type/InterpolationType;

    iput-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->interpolationType:Lcom/samsung/vekit/Common/Type/InterpolationType;

    .line 49
    return-void
.end method


# virtual methods
.method public clearKeyFrameList()V
    .registers 2

    .line 171
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 172
    return-void
.end method

.method public getAnimationType()Lcom/samsung/vekit/Common/Type/AnimationType;
    .registers 2

    .line 79
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->animationType:Lcom/samsung/vekit/Common/Type/AnimationType;

    return-object v0
.end method

.method public getBezierControlPoint()Lcom/samsung/vekit/Common/Object/BezierControlPoint;
    .registers 2

    .line 75
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .line 114
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-wide v0, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    return-wide v0
.end method

.method public getFrom()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->from:Ljava/lang/Object;

    return-object v0
.end method

.method public getInterpolationType()Lcom/samsung/vekit/Common/Type/InterpolationType;
    .registers 2

    .line 65
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->interpolationType:Lcom/samsung/vekit/Common/Type/InterpolationType;

    return-object v0
.end method

.method public getKeyFrameCount()I
    .registers 2

    .line 176
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getKeyFrameList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;>;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStartTime()J
    .registers 3

    .line 105
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-wide v0, p0, Lcom/samsung/vekit/Animation/Animation;->startTime:J

    return-wide v0
.end method

.method public getTarget()Lcom/samsung/vekit/Common/Object/Element;
    .registers 2

    .line 52
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    return-object v0
.end method

.method public getTo()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->to:Ljava/lang/Object;

    return-object v0
.end method

.method public onAnimationCanceled(Ljava/lang/Object;)V
    .registers 3
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 145
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    if-nez v0, :cond_5

    .line 146
    return-void

    .line 147
    :cond_5
    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/AnimationStatusListener;->onAnimationCanceled(Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public onAnimationFinished(Ljava/lang/Object;)V
    .registers 3
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 138
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    if-nez v0, :cond_5

    .line 139
    return-void

    .line 140
    :cond_5
    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/AnimationStatusListener;->onAnimationFinished(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public onAnimationStarted(Ljava/lang/Object;)V
    .registers 3
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 124
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    if-nez v0, :cond_5

    .line 125
    return-void

    .line 126
    :cond_5
    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/AnimationStatusListener;->onAnimationStarted(Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public onAnimationUpdated(Ljava/lang/Object;)V
    .registers 3
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 131
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    if-nez v0, :cond_5

    .line 132
    return-void

    .line 133
    :cond_5
    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/AnimationStatusListener;->onAnimationUpdated(Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method protected setAnimationType(Lcom/samsung/vekit/Common/Type/AnimationType;)V
    .registers 2
    .param p1, "animationType"    # Lcom/samsung/vekit/Common/Type/AnimationType;

    .line 83
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iput-object p1, p0, Lcom/samsung/vekit/Animation/Animation;->animationType:Lcom/samsung/vekit/Common/Type/AnimationType;

    .line 84
    return-void
.end method

.method public setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;
    .registers 6
    .param p1, "controlPointX1"    # F
    .param p2, "controlPointY1"    # F
    .param p3, "controlPointX2"    # F
    .param p4, "controlPointY2"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Common/Object/BezierControlPoint;->setValues(FFFF)V

    .line 70
    sget-object v0, Lcom/samsung/vekit/Common/Type/InterpolationType;->BEZIER:Lcom/samsung/vekit/Common/Type/InterpolationType;

    iput-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->interpolationType:Lcom/samsung/vekit/Common/Type/InterpolationType;

    .line 71
    return-object p0
.end method

.method public setDuration(J)Lcom/samsung/vekit/Animation/Animation;
    .registers 3
    .param p1, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iput-wide p1, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    .line 119
    return-object p0
.end method

.method public setFrom(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    .local p1, "from":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/samsung/vekit/Animation/Animation;->from:Ljava/lang/Object;

    .line 92
    return-object p0
.end method

.method public setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;>;)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    .local p1, "keyFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    .line 159
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Common/Object/KeyFrame;

    .line 161
    .local v1, "data":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    iget-wide v2, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/KeyFrame;->getDuration()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    .line 162
    .end local v1    # "data":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    goto :goto_14

    .line 163
    :cond_2a
    return-object p0
.end method

.method public setListener(Lcom/samsung/vekit/Listener/AnimationStatusListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/vekit/Listener/AnimationStatusListener;

    .line 61
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iput-object p1, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    .line 62
    return-void
.end method

.method public setStartTime(J)Lcom/samsung/vekit/Animation/Animation;
    .registers 3
    .param p1, "startTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iput-wide p1, p0, Lcom/samsung/vekit/Animation/Animation;->startTime:J

    .line 110
    return-object p0
.end method

.method public setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;
    .registers 2
    .param p1, "target"    # Lcom/samsung/vekit/Common/Object/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Element;",
            ")",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iput-object p1, p0, Lcom/samsung/vekit/Animation/Animation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    .line 57
    return-object p0
.end method

.method public setTo(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    .local p1, "to":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/samsung/vekit/Animation/Animation;->to:Ljava/lang/Object;

    .line 101
    return-object p0
.end method

.method public updateTargetValue(Ljava/lang/Object;)V
    .registers 2
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 152
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    return-void
.end method
