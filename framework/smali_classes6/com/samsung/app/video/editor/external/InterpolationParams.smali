.class public Lcom/samsung/app/video/editor/external/InterpolationParams;
.super Ljava/lang/Object;
.source "InterpolationParams.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private controlPoints:Lcom/samsung/app/video/editor/external/CubicBezierPoints;

.field private duration:I

.field private interpolation:I

.field private interpolationCurveType:Lcom/samsung/app/video/editor/external/CurveType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "InterpolationParams"

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(ILcom/samsung/app/video/editor/external/CurveType;Lcom/samsung/app/video/editor/external/CubicBezierPoints;)V
    .registers 5
    .param p1, "duration"    # I
    .param p2, "curvetype"    # Lcom/samsung/app/video/editor/external/CurveType;
    .param p3, "controlpoints"    # Lcom/samsung/app/video/editor/external/CubicBezierPoints;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "InterpolationParams"

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->TAG:Ljava/lang/String;

    .line 16
    iput p1, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->duration:I

    .line 17
    iput-object p2, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->interpolationCurveType:Lcom/samsung/app/video/editor/external/CurveType;

    .line 18
    invoke-virtual {p2}, Lcom/samsung/app/video/editor/external/CurveType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->interpolation:I

    .line 19
    iput-object p3, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->controlPoints:Lcom/samsung/app/video/editor/external/CubicBezierPoints;

    .line 20
    return-void
.end method


# virtual methods
.method copy()Lcom/samsung/app/video/editor/external/InterpolationParams;
    .registers 3

    .line 27
    new-instance v0, Lcom/samsung/app/video/editor/external/InterpolationParams;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/InterpolationParams;-><init>()V

    .line 28
    .local v0, "interpolationParams":Lcom/samsung/app/video/editor/external/InterpolationParams;
    iget v1, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->duration:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/InterpolationParams;->duration:I

    .line 29
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->interpolationCurveType:Lcom/samsung/app/video/editor/external/CurveType;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/InterpolationParams;->interpolationCurveType:Lcom/samsung/app/video/editor/external/CurveType;

    .line 30
    iget v1, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->interpolation:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/InterpolationParams;->interpolation:I

    .line 31
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->controlPoints:Lcom/samsung/app/video/editor/external/CubicBezierPoints;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/InterpolationParams;->controlPoints:Lcom/samsung/app/video/editor/external/CubicBezierPoints;

    .line 32
    return-object v0
.end method

.method public getControlPoints()Lcom/samsung/app/video/editor/external/CubicBezierPoints;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->controlPoints:Lcom/samsung/app/video/editor/external/CubicBezierPoints;

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    .line 36
    iget v0, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->duration:I

    return v0
.end method

.method public getInterpolation()Lcom/samsung/app/video/editor/external/CurveType;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->interpolationCurveType:Lcom/samsung/app/video/editor/external/CurveType;

    return-object v0
.end method

.method public setControlPoints(Lcom/samsung/app/video/editor/external/CubicBezierPoints;)V
    .registers 2
    .param p1, "controlPoints"    # Lcom/samsung/app/video/editor/external/CubicBezierPoints;

    .line 57
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->controlPoints:Lcom/samsung/app/video/editor/external/CubicBezierPoints;

    .line 58
    return-void
.end method

.method public setDuration(I)V
    .registers 2
    .param p1, "duration"    # I

    .line 40
    iput p1, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->duration:I

    .line 41
    return-void
.end method

.method public setInterpolation(Lcom/samsung/app/video/editor/external/CurveType;)V
    .registers 3
    .param p1, "interpolation"    # Lcom/samsung/app/video/editor/external/CurveType;

    .line 48
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->interpolationCurveType:Lcom/samsung/app/video/editor/external/CurveType;

    .line 49
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/CurveType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->interpolation:I

    .line 50
    return-void
.end method
