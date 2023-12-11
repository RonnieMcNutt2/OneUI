.class public Lcom/samsung/app/video/editor/external/TransitionParams;
.super Ljava/lang/Object;
.source "TransitionParams.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private curr_fromOpacity:F

.field private curr_fromScale:F

.field private curr_toOpacity:F

.field private curr_toScale:F

.field private interpolationType:Lcom/samsung/app/video/editor/external/InterpolationParams;

.field private next_fromOpacity:F

.field private next_fromScale:F

.field private next_toOpacity:F

.field private next_toScale:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "TransitionParams"

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->TAG:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/samsung/app/video/editor/external/CurveType;Lcom/samsung/app/video/editor/external/CubicBezierPoints;I)V
    .registers 5
    .param p1, "curvetype"    # Lcom/samsung/app/video/editor/external/CurveType;
    .param p2, "controlpoints"    # Lcom/samsung/app/video/editor/external/CubicBezierPoints;
    .param p3, "duration"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "TransitionParams"

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/samsung/app/video/editor/external/InterpolationParams;

    invoke-direct {v0, p3, p1, p2}, Lcom/samsung/app/video/editor/external/InterpolationParams;-><init>(ILcom/samsung/app/video/editor/external/CurveType;Lcom/samsung/app/video/editor/external/CubicBezierPoints;)V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->interpolationType:Lcom/samsung/app/video/editor/external/InterpolationParams;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/samsung/app/video/editor/external/InterpolationParams;)V
    .registers 3
    .param p1, "interpolationPrms"    # Lcom/samsung/app/video/editor/external/InterpolationParams;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "TransitionParams"

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->TAG:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->interpolationType:Lcom/samsung/app/video/editor/external/InterpolationParams;

    .line 29
    return-void
.end method


# virtual methods
.method copy()Lcom/samsung/app/video/editor/external/TransitionParams;
    .registers 3

    .line 36
    const-string v0, "TransitionParams"

    const-string v1, "In TransitionParams copy "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Lcom/samsung/app/video/editor/external/TransitionParams;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/TransitionParams;-><init>()V

    .line 38
    .local v0, "transitionParams":Lcom/samsung/app/video/editor/external/TransitionParams;
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->interpolationType:Lcom/samsung/app/video/editor/external/InterpolationParams;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TransitionParams;->interpolationType:Lcom/samsung/app/video/editor/external/InterpolationParams;

    .line 39
    iget v1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_fromScale:F

    iput v1, v0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_fromScale:F

    .line 40
    iget v1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_toScale:F

    iput v1, v0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_toScale:F

    .line 41
    iget v1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_fromScale:F

    iput v1, v0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_fromScale:F

    .line 42
    iget v1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_toScale:F

    iput v1, v0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_toScale:F

    .line 43
    iget v1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_fromOpacity:F

    iput v1, v0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_fromOpacity:F

    .line 44
    iget v1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_toOpacity:F

    iput v1, v0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_toOpacity:F

    .line 45
    iget v1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_fromOpacity:F

    iput v1, v0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_fromOpacity:F

    .line 46
    iget v1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_toOpacity:F

    iput v1, v0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_toOpacity:F

    .line 47
    return-object v0
.end method

.method public getCurr_fromOpacity()F
    .registers 2

    .line 117
    iget v0, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_fromOpacity:F

    return v0
.end method

.method public getCurr_fromScale()F
    .registers 2

    .line 85
    iget v0, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_fromScale:F

    return v0
.end method

.method public getCurr_toOpacity()F
    .registers 2

    .line 125
    iget v0, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_toOpacity:F

    return v0
.end method

.method public getCurr_toScale()F
    .registers 2

    .line 93
    iget v0, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_toScale:F

    return v0
.end method

.method public getInterpolationType()Lcom/samsung/app/video/editor/external/InterpolationParams;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->interpolationType:Lcom/samsung/app/video/editor/external/InterpolationParams;

    return-object v0
.end method

.method public getNext_fromOpacity()F
    .registers 2

    .line 133
    iget v0, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_fromOpacity:F

    return v0
.end method

.method public getNext_fromScale()F
    .registers 2

    .line 101
    iget v0, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_fromScale:F

    return v0
.end method

.method public getNext_toOpacity()F
    .registers 2

    .line 141
    iget v0, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_toOpacity:F

    return v0
.end method

.method public getNext_toScale()F
    .registers 2

    .line 109
    iget v0, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_toScale:F

    return v0
.end method

.method public setCurr_fromOpacity(F)V
    .registers 2
    .param p1, "curr_fromOpacity"    # F

    .line 121
    iput p1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_fromOpacity:F

    .line 122
    return-void
.end method

.method public setCurr_fromScale(F)V
    .registers 2
    .param p1, "curr_fromScale"    # F

    .line 89
    iput p1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_fromScale:F

    .line 90
    return-void
.end method

.method public setCurr_toOpacity(F)V
    .registers 2
    .param p1, "curr_toOpacity"    # F

    .line 129
    iput p1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_toOpacity:F

    .line 130
    return-void
.end method

.method public setCurr_toScale(F)V
    .registers 2
    .param p1, "curr_toScale"    # F

    .line 97
    iput p1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_toScale:F

    .line 98
    return-void
.end method

.method public setInterpolationType(Lcom/samsung/app/video/editor/external/InterpolationParams;)V
    .registers 2
    .param p1, "interpolationType"    # Lcom/samsung/app/video/editor/external/InterpolationParams;

    .line 55
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->interpolationType:Lcom/samsung/app/video/editor/external/InterpolationParams;

    .line 56
    return-void
.end method

.method public setNext_fromOpacity(F)V
    .registers 2
    .param p1, "next_fromOpacity"    # F

    .line 137
    iput p1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_fromOpacity:F

    .line 138
    return-void
.end method

.method public setNext_fromScale(F)V
    .registers 2
    .param p1, "next_fromScale"    # F

    .line 105
    iput p1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_fromScale:F

    .line 106
    return-void
.end method

.method public setNext_toOpacity(F)V
    .registers 2
    .param p1, "next_toOpacity"    # F

    .line 145
    iput p1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_toOpacity:F

    .line 146
    return-void
.end method

.method public setNext_toScale(F)V
    .registers 2
    .param p1, "next_toScale"    # F

    .line 113
    iput p1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_toScale:F

    .line 114
    return-void
.end method

.method public setTransitionOpacity(FFFF)V
    .registers 8
    .param p1, "currFromOpacity"    # F
    .param p2, "currToOpacity"    # F
    .param p3, "nextFromOpacity"    # F
    .param p4, "nextToOpacity"    # F

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTransitionOpacity : currFromOpacity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransitionParams"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTransitionOpacity : currToOpacity = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTransitionOpacity : nextFromOpacity = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTransitionOpacity : nextToOpacity = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput p1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_fromOpacity:F

    .line 79
    iput p2, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_toOpacity:F

    .line 80
    iput p3, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_fromOpacity:F

    .line 81
    iput p4, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_toOpacity:F

    .line 82
    return-void
.end method

.method public setTransitionScale(FFFF)V
    .registers 8
    .param p1, "currFromScale"    # F
    .param p2, "currToScale"    # F
    .param p3, "nextFromScale"    # F
    .param p4, "nextToScale"    # F

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTransitionScale : currFromScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransitionParams"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTransitionScale : currToScale = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTransitionScale : nextFromScale = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTransitionScale : nextToScale = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput p1, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_fromScale:F

    .line 66
    iput p2, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->curr_toScale:F

    .line 67
    iput p3, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_fromScale:F

    .line 68
    iput p4, p0, Lcom/samsung/app/video/editor/external/TransitionParams;->next_toScale:F

    .line 69
    return-void
.end method
