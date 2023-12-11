.class public Lcom/samsung/vekit/Common/Object/DoodleStroke;
.super Ljava/lang/Object;
.source "DoodleStroke.java"


# instance fields
.field private isAuto:Z

.field private mosaicStrength:I

.field private patternURI:Ljava/lang/String;

.field private penType:Lcom/samsung/vekit/Common/Type/PenType;

.field private final pointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodlePoint;",
            ">;"
        }
    .end annotation
.end field

.field private strokeColor:I

.field private strokeSize:I

.field private strokeType:Lcom/samsung/vekit/Common/Type/StrokeType;


# direct methods
.method public constructor <init>(IILcom/samsung/vekit/Common/Type/PenType;Z)V
    .registers 6
    .param p1, "strokeColor"    # I
    .param p2, "strokeSize"    # I
    .param p3, "penType"    # Lcom/samsung/vekit/Common/Type/PenType;
    .param p4, "isAuto"    # Z

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/samsung/vekit/Common/Type/StrokeType;->NORMAL:Lcom/samsung/vekit/Common/Type/StrokeType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeType:Lcom/samsung/vekit/Common/Type/StrokeType;

    .line 23
    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeColor:I

    .line 24
    iput p2, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeSize:I

    .line 25
    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->penType:Lcom/samsung/vekit/Common/Type/PenType;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->mosaicStrength:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    .line 28
    iput-boolean p4, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->isAuto:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/samsung/vekit/Common/Object/DoodleStroke;)V
    .registers 4
    .param p1, "doodleStroke"    # Lcom/samsung/vekit/Common/Object/DoodleStroke;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/samsung/vekit/Common/Type/StrokeType;->NORMAL:Lcom/samsung/vekit/Common/Type/StrokeType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeType:Lcom/samsung/vekit/Common/Type/StrokeType;

    .line 32
    iget v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeColor:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeColor:I

    .line 33
    iget v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeSize:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeSize:I

    .line 34
    iget-object v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->penType:Lcom/samsung/vekit/Common/Type/PenType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->penType:Lcom/samsung/vekit/Common/Type/PenType;

    .line 35
    iget v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->mosaicStrength:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->mosaicStrength:I

    .line 36
    iget-object v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->patternURI:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->patternURI:Ljava/lang/String;

    .line 37
    iget-boolean v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->isAuto:Z

    iput-boolean v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->isAuto:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    .line 39
    iget-object v1, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2d

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    :cond_2d
    return-void
.end method


# virtual methods
.method public addDoodlePoint(Lcom/samsung/vekit/Common/Object/DoodlePoint;)V
    .registers 3
    .param p1, "doodlePoint"    # Lcom/samsung/vekit/Common/Object/DoodlePoint;

    .line 107
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public addDoodlePointList(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodlePoint;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p1, "doodlePointList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/DoodlePoint;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    return-void
.end method

.method public clear()V
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    return-void
.end method

.method public getDoodlePointList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Common/Object/DoodlePoint;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMosaicStrength()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->mosaicStrength:I

    return v0
.end method

.method public getPatternURI()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->patternURI:Ljava/lang/String;

    return-object v0
.end method

.method public getPenType()Lcom/samsung/vekit/Common/Type/PenType;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->penType:Lcom/samsung/vekit/Common/Type/PenType;

    return-object v0
.end method

.method public getStrokeColor()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeColor:I

    return v0
.end method

.method public getStrokeSize()I
    .registers 2

    .line 98
    iget v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeSize:I

    return v0
.end method

.method public getStrokeType()Lcom/samsung/vekit/Common/Type/StrokeType;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeType:Lcom/samsung/vekit/Common/Type/StrokeType;

    return-object v0
.end method

.method public isAuto()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->isAuto:Z

    return v0
.end method

.method public setMosaicStrength(I)Lcom/samsung/vekit/Common/Object/DoodleStroke;
    .registers 2
    .param p1, "mosaicStrength"    # I

    .line 93
    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->mosaicStrength:I

    .line 94
    return-object p0
.end method

.method public setPatternURI(Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/DoodleStroke;
    .registers 2
    .param p1, "patternURI"    # Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->patternURI:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public setPenType(Lcom/samsung/vekit/Common/Type/PenType;)Lcom/samsung/vekit/Common/Object/DoodleStroke;
    .registers 2
    .param p1, "penType"    # Lcom/samsung/vekit/Common/Type/PenType;

    .line 57
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->penType:Lcom/samsung/vekit/Common/Type/PenType;

    .line 58
    return-object p0
.end method

.method public setStrokeColor(I)Lcom/samsung/vekit/Common/Object/DoodleStroke;
    .registers 2
    .param p1, "strokeColor"    # I

    .line 75
    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeColor:I

    .line 76
    return-object p0
.end method

.method public setStrokeSize(I)Lcom/samsung/vekit/Common/Object/DoodleStroke;
    .registers 2
    .param p1, "strokeSize"    # I

    .line 102
    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeSize:I

    .line 103
    return-object p0
.end method

.method public setStrokeType(Lcom/samsung/vekit/Common/Type/StrokeType;)Lcom/samsung/vekit/Common/Object/DoodleStroke;
    .registers 2
    .param p1, "strokeType"    # Lcom/samsung/vekit/Common/Type/StrokeType;

    .line 66
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeType:Lcom/samsung/vekit/Common/Type/StrokeType;

    .line 67
    return-object p0
.end method
