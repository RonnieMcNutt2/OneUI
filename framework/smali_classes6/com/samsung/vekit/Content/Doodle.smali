.class public Lcom/samsung/vekit/Content/Doodle;
.super Lcom/samsung/vekit/Content/Content;
.source "Doodle.java"


# instance fields
.field capturedImagePath:Ljava/lang/String;

.field capturedStrokeCount:I

.field strokeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodleStroke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .registers 5
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentType;->DOODLE:Lcom/samsung/vekit/Common/Type/ContentType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Content/Content;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ContentType;ILjava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Content/Doodle;->capturedStrokeCount:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public addStroke(Lcom/samsung/vekit/Common/Object/DoodleStroke;)Lcom/samsung/vekit/Content/Doodle;
    .registers 5
    .param p1, "stroke"    # Lcom/samsung/vekit/Common/Object/DoodleStroke;

    .line 38
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStroke size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-object p0
.end method

.method public addStrokeList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Content/Doodle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodleStroke;",
            ">;)",
            "Lcom/samsung/vekit/Content/Doodle;"
        }
    .end annotation

    .line 48
    .local p1, "strokeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/DoodleStroke;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 49
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStrokeList size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-object p0
.end method

.method public clearStrokeList()V
    .registers 4

    .line 33
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearStrokeList size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public getCapturedImagePath()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCapturedStrokeCount()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/samsung/vekit/Content/Doodle;->capturedStrokeCount:I

    return v0
.end method

.method public getStrokeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Common/Object/DoodleStroke;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeStroke(I)Lcom/samsung/vekit/Content/Doodle;
    .registers 5
    .param p1, "index"    # I

    .line 54
    if-ltz p1, :cond_2f

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_2f

    .line 58
    :cond_b
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeStroke size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-object p0

    .line 55
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strokeIndex is invalid - index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-object p0
.end method

.method public removeStroke(Lcom/samsung/vekit/Common/Object/DoodleStroke;)Lcom/samsung/vekit/Content/Doodle;
    .registers 5
    .param p1, "stroke"    # Lcom/samsung/vekit/Common/Object/DoodleStroke;

    .line 64
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeStroke size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-object p0
.end method

.method public setCapturedImageInfo(Ljava/lang/String;III)Lcom/samsung/vekit/Content/Doodle;
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "savedStrokeSize"    # I

    .line 70
    iput-object p1, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePath:Ljava/lang/String;

    .line 71
    iput p2, p0, Lcom/samsung/vekit/Content/Doodle;->width:I

    .line 72
    iput p3, p0, Lcom/samsung/vekit/Content/Doodle;->height:I

    .line 73
    iput p4, p0, Lcom/samsung/vekit/Content/Doodle;->capturedStrokeCount:I

    .line 74
    return-object p0
.end method

.method public setCapturedStrokeCount(I)Lcom/samsung/vekit/Content/Doodle;
    .registers 2
    .param p1, "count"    # I

    .line 83
    iput p1, p0, Lcom/samsung/vekit/Content/Doodle;->capturedStrokeCount:I

    .line 84
    return-object p0
.end method

.method public bridge synthetic setDuration(J)Lcom/samsung/vekit/Content/Content;
    .registers 3

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Content/Doodle;->setDuration(J)Lcom/samsung/vekit/Content/Doodle;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lcom/samsung/vekit/Content/Doodle;
    .registers 4
    .param p1, "duration"    # J

    .line 103
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Content/Content;->setDuration(J)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Doodle;

    return-object v0
.end method

.method public bridge synthetic setHeight(I)Lcom/samsung/vekit/Content/Content;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Content/Doodle;->setHeight(I)Lcom/samsung/vekit/Content/Doodle;

    move-result-object p1

    return-object p1
.end method

.method public setHeight(I)Lcom/samsung/vekit/Content/Doodle;
    .registers 3
    .param p1, "height"    # I

    .line 98
    invoke-super {p0, p1}, Lcom/samsung/vekit/Content/Content;->setHeight(I)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Doodle;

    return-object v0
.end method

.method public setStrokeList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Content/Doodle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodleStroke;",
            ">;)",
            "Lcom/samsung/vekit/Content/Doodle;"
        }
    .end annotation

    .line 26
    .local p1, "strokeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/DoodleStroke;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 27
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStrokeList size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-object p0
.end method

.method public bridge synthetic setWidth(I)Lcom/samsung/vekit/Content/Content;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Content/Doodle;->setWidth(I)Lcom/samsung/vekit/Content/Doodle;

    move-result-object p1

    return-object p1
.end method

.method public setWidth(I)Lcom/samsung/vekit/Content/Doodle;
    .registers 3
    .param p1, "width"    # I

    .line 93
    invoke-super {p0, p1}, Lcom/samsung/vekit/Content/Content;->setWidth(I)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Doodle;

    return-object v0
.end method
