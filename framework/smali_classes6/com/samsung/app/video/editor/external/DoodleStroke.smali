.class public Lcom/samsung/app/video/editor/external/DoodleStroke;
.super Ljava/lang/Object;
.source "DoodleStroke.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private doodletype:I

.field private mDoodleType:Lcom/samsung/app/video/editor/external/DoodleType;

.field private mKeepTime:I

.field private mMosaicStrength:I

.field private mPatternURI:Ljava/lang/String;

.field private mPenType:Lcom/samsung/app/video/editor/external/PenType;

.field private mPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodlePoints;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleFactor:F

.field private mStrokeColor1:I

.field private mStrokeColor2:I

.field private mStrokeWidth:I

.field private mTransX:F

.field private mTransY:F

.field private pentype:I


# direct methods
.method public constructor <init>(IIILcom/samsung/app/video/editor/external/PenType;Lcom/samsung/app/video/editor/external/DoodleType;)V
    .registers 8
    .param p1, "strokeColor1"    # I
    .param p2, "strokeColor2"    # I
    .param p3, "strokeSize"    # I
    .param p4, "strokePenType"    # Lcom/samsung/app/video/editor/external/PenType;
    .param p5, "doodleType"    # Lcom/samsung/app/video/editor/external/DoodleType;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mPointList:Ljava/util/List;

    .line 17
    sget-object v0, Lcom/samsung/app/video/editor/external/PenType;->PEN_NORMAL:Lcom/samsung/app/video/editor/external/PenType;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mPenType:Lcom/samsung/app/video/editor/external/PenType;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->pentype:I

    .line 21
    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeWidth:I

    .line 23
    const/high16 v1, -0x10000

    iput v1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeColor1:I

    .line 25
    iput v1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeColor2:I

    .line 27
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mKeepTime:I

    .line 29
    sget-object v1, Lcom/samsung/app/video/editor/external/DoodleType;->DOODLE_LIVE:Lcom/samsung/app/video/editor/external/DoodleType;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mDoodleType:Lcom/samsung/app/video/editor/external/DoodleType;

    .line 31
    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->doodletype:I

    .line 33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mPatternURI:Ljava/lang/String;

    .line 35
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mTransX:F

    .line 37
    iput v1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mTransY:F

    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mScaleFactor:F

    .line 41
    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mMosaicStrength:I

    .line 46
    iput p1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeColor1:I

    .line 47
    iput p2, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeColor2:I

    .line 48
    iput p3, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeWidth:I

    .line 49
    iput-object p4, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mPenType:Lcom/samsung/app/video/editor/external/PenType;

    .line 50
    invoke-virtual {p4}, Lcom/samsung/app/video/editor/external/PenType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->pentype:I

    .line 51
    iput-object p5, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mDoodleType:Lcom/samsung/app/video/editor/external/DoodleType;

    .line 52
    invoke-virtual {p5}, Lcom/samsung/app/video/editor/external/DoodleType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->doodletype:I

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/samsung/app/video/editor/external/DoodleStroke;)V
    .registers 6
    .param p1, "doodleStroke"    # Lcom/samsung/app/video/editor/external/DoodleStroke;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mPointList:Ljava/util/List;

    .line 17
    sget-object v0, Lcom/samsung/app/video/editor/external/PenType;->PEN_NORMAL:Lcom/samsung/app/video/editor/external/PenType;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mPenType:Lcom/samsung/app/video/editor/external/PenType;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->pentype:I

    .line 21
    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeWidth:I

    .line 23
    const/high16 v1, -0x10000

    iput v1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeColor1:I

    .line 25
    iput v1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeColor2:I

    .line 27
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mKeepTime:I

    .line 29
    sget-object v1, Lcom/samsung/app/video/editor/external/DoodleType;->DOODLE_LIVE:Lcom/samsung/app/video/editor/external/DoodleType;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mDoodleType:Lcom/samsung/app/video/editor/external/DoodleType;

    .line 31
    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->doodletype:I

    .line 33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mPatternURI:Ljava/lang/String;

    .line 35
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mTransX:F

    .line 37
    iput v1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mTransY:F

    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mScaleFactor:F

    .line 41
    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mMosaicStrength:I

    .line 56
    iget-object v0, p1, Lcom/samsung/app/video/editor/external/DoodleStroke;->mPointList:Ljava/util/List;

    if-eqz v0, :cond_52

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/DoodlePoints;

    .line 58
    .local v1, "dpt":Lcom/samsung/app/video/editor/external/DoodlePoints;
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mPointList:Ljava/util/List;

    new-instance v3, Lcom/samsung/app/video/editor/external/DoodlePoints;

    invoke-direct {v3, v1}, Lcom/samsung/app/video/editor/external/DoodlePoints;-><init>(Lcom/samsung/app/video/editor/external/DoodlePoints;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v1    # "dpt":Lcom/samsung/app/video/editor/external/DoodlePoints;
    goto :goto_3b

    .line 61
    :cond_52
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeColor1:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeColor1:I

    .line 62
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeColor2:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeColor2:I

    .line 63
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeWidth:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeWidth:I

    .line 64
    iget-object v0, p1, Lcom/samsung/app/video/editor/external/DoodleStroke;->mPenType:Lcom/samsung/app/video/editor/external/PenType;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mPenType:Lcom/samsung/app/video/editor/external/PenType;

    .line 65
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodleStroke;->pentype:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->pentype:I

    .line 66
    iget-object v0, p1, Lcom/samsung/app/video/editor/external/DoodleStroke;->mDoodleType:Lcom/samsung/app/video/editor/external/DoodleType;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mDoodleType:Lcom/samsung/app/video/editor/external/DoodleType;

    .line 67
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodleStroke;->doodletype:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->doodletype:I

    .line 68
    iget-object v0, p1, Lcom/samsung/app/video/editor/external/DoodleStroke;->mPatternURI:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mPatternURI:Ljava/lang/String;

    .line 69
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodleStroke;->mTransX:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mTransX:F

    .line 70
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodleStroke;->mTransY:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mTransY:F

    .line 71
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodleStroke;->mScaleFactor:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mScaleFactor:F

    .line 72
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodleStroke;->mMosaicStrength:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mMosaicStrength:I

    .line 73
    return-void
.end method


# virtual methods
.method public addPoint(Lcom/samsung/app/video/editor/external/DoodlePoints;)Z
    .registers 3
    .param p1, "point"    # Lcom/samsung/app/video/editor/external/DoodlePoints;

    .line 120
    if-nez p1, :cond_4

    .line 121
    const/4 v0, 0x0

    return v0

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mPointList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public getDoodleType()Lcom/samsung/app/video/editor/external/DoodleType;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mDoodleType:Lcom/samsung/app/video/editor/external/DoodleType;

    return-object v0
.end method

.method public getMosaicStrength()I
    .registers 2

    .line 139
    iget v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mMosaicStrength:I

    return v0
.end method

.method public getPatternURI()Ljava/lang/String;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mPatternURI:Ljava/lang/String;

    return-object v0
.end method

.method public getPenType()Lcom/samsung/app/video/editor/external/PenType;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mPenType:Lcom/samsung/app/video/editor/external/PenType;

    return-object v0
.end method

.method public getPointList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodlePoints;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mPointList:Ljava/util/List;

    return-object v0
.end method

.method public getStrokeColor1()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeColor1:I

    return v0
.end method

.method public getStrokeColor2()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeColor2:I

    return v0
.end method

.method public getStrokeWidth()I
    .registers 2

    .line 97
    iget v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeWidth:I

    return v0
.end method

.method public setDoodleType(Lcom/samsung/app/video/editor/external/DoodleType;)V
    .registers 3
    .param p1, "mode"    # Lcom/samsung/app/video/editor/external/DoodleType;

    .line 84
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mDoodleType:Lcom/samsung/app/video/editor/external/DoodleType;

    .line 85
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/DoodleType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->doodletype:I

    .line 86
    return-void
.end method

.method public setKeepTime(I)V
    .registers 2
    .param p1, "keepTime"    # I

    .line 114
    iput p1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mKeepTime:I

    .line 115
    return-void
.end method

.method public setMosaicStrength(I)V
    .registers 2
    .param p1, "mosaicStrength"    # I

    .line 143
    iput p1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mMosaicStrength:I

    .line 144
    return-void
.end method

.method public setPatternURI(Ljava/lang/String;)V
    .registers 2
    .param p1, "patternURI"    # Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mPatternURI:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setStrokeColor(II)V
    .registers 3
    .param p1, "strokeColor1"    # I
    .param p2, "strokeColor2"    # I

    .line 101
    iput p1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeColor1:I

    .line 102
    iput p2, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeColor2:I

    .line 103
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 2
    .param p1, "strokeWidth"    # I

    .line 93
    iput p1, p0, Lcom/samsung/app/video/editor/external/DoodleStroke;->mStrokeWidth:I

    .line 94
    return-void
.end method
