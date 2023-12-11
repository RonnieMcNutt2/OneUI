.class public Lcom/samsung/app/video/editor/external/PerspectiveViewParams;
.super Ljava/lang/Object;
.source "PerspectiveViewParams.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field degreeX:F

.field degreeY:F

.field degreeZ:F

.field perspectiveMatrix:[F

.field positionX:F

.field positionY:F

.field positionZ:F

.field scaleX:F

.field scaleY:F

.field scaleZ:F

.field userRotation:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private static makeCopy(Lcom/samsung/app/video/editor/external/PerspectiveViewParams;Lcom/samsung/app/video/editor/external/PerspectiveViewParams;)V
    .registers 3
    .param p0, "orgParams"    # Lcom/samsung/app/video/editor/external/PerspectiveViewParams;
    .param p1, "newParams"    # Lcom/samsung/app/video/editor/external/PerspectiveViewParams;

    .line 28
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeX:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeX:F

    .line 29
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeY:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeY:F

    .line 30
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeZ:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeZ:F

    .line 31
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleY:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleX:F

    .line 32
    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleY:F

    .line 33
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleZ:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleZ:F

    .line 34
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->userRotation:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->userRotation:I

    .line 35
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->perspectiveMatrix:[F

    iput-object v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->perspectiveMatrix:[F

    .line 36
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionX:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionX:F

    .line 37
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionY:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionY:F

    .line 38
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionZ:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionZ:F

    .line 39
    return-void
.end method


# virtual methods
.method public getDegreeX()F
    .registers 2

    .line 43
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeX:F

    return v0
.end method

.method public getDegreeY()F
    .registers 2

    .line 51
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeY:F

    return v0
.end method

.method public getDegreeZ()F
    .registers 2

    .line 59
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeZ:F

    return v0
.end method

.method public getPerspectiveMatrix()[F
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->perspectiveMatrix:[F

    return-object v0
.end method

.method public getPositionX()F
    .registers 2

    .line 114
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionX:F

    return v0
.end method

.method public getPositionY()F
    .registers 2

    .line 118
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionY:F

    return v0
.end method

.method public getPositionZ()F
    .registers 2

    .line 122
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionZ:F

    return v0
.end method

.method public getScaleX()F
    .registers 2

    .line 67
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    .line 75
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleY:F

    return v0
.end method

.method public getScaleZ()F
    .registers 2

    .line 83
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleZ:F

    return v0
.end method

.method public getUserRotation()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->userRotation:I

    return v0
.end method

.method public setDegreeX(F)V
    .registers 2
    .param p1, "degreeX"    # F

    .line 47
    iput p1, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeX:F

    .line 48
    return-void
.end method

.method public setDegreeY(F)V
    .registers 2
    .param p1, "degreeY"    # F

    .line 55
    iput p1, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeY:F

    .line 56
    return-void
.end method

.method public setDegreeZ(F)V
    .registers 2
    .param p1, "degreeZ"    # F

    .line 63
    iput p1, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeZ:F

    .line 64
    return-void
.end method

.method public setPerspectiveMatrix([F)V
    .registers 2
    .param p1, "perspectiveMatrix"    # [F

    .line 104
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->perspectiveMatrix:[F

    .line 105
    return-void
.end method

.method public setPosition(FFF)V
    .registers 4
    .param p1, "positionX"    # F
    .param p2, "positionY"    # F
    .param p3, "positionZ"    # F

    .line 108
    iput p1, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionX:F

    .line 109
    iput p2, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionY:F

    .line 110
    iput p3, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionZ:F

    .line 111
    return-void
.end method

.method public setScaleX(F)V
    .registers 2
    .param p1, "scaleX"    # F

    .line 71
    iput p1, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleX:F

    .line 72
    return-void
.end method

.method public setScaleY(F)V
    .registers 2
    .param p1, "scaleY"    # F

    .line 79
    iput p1, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleY:F

    .line 80
    return-void
.end method

.method public setScaleZ(F)V
    .registers 2
    .param p1, "scaleZ"    # F

    .line 87
    iput p1, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleZ:F

    .line 88
    return-void
.end method

.method public setUserRotation(I)V
    .registers 2
    .param p1, "userRotation"    # I

    .line 95
    iput p1, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->userRotation:I

    .line 96
    return-void
.end method
