.class public Lcom/samsung/vekit/Content/Content;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "Content.java"


# instance fields
.field protected contentType:Lcom/samsung/vekit/Common/Type/ContentType;

.field protected duration:J

.field protected height:I

.field protected width:I


# direct methods
.method protected constructor <init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ContentType;ILjava/lang/String;)V
    .registers 7
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "type"    # Lcom/samsung/vekit/Common/Type/ContentType;
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->CONTENT:Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    .line 18
    iput-object p2, p0, Lcom/samsung/vekit/Content/Content;->contentType:Lcom/samsung/vekit/Common/Type/ContentType;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Content/Content;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Content/Content;->width:I

    .line 21
    iput v0, p0, Lcom/samsung/vekit/Content/Content;->height:I

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Content/Content;->duration:J

    .line 23
    return-void
.end method


# virtual methods
.method public getContentType()Lcom/samsung/vekit/Common/Type/ContentType;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/samsung/vekit/Content/Content;->contentType:Lcom/samsung/vekit/Common/Type/ContentType;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .line 38
    iget-wide v0, p0, Lcom/samsung/vekit/Content/Content;->duration:J

    return-wide v0
.end method

.method public getHeight()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/samsung/vekit/Content/Content;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/samsung/vekit/Content/Content;->width:I

    return v0
.end method

.method public setDuration(J)Lcom/samsung/vekit/Content/Content;
    .registers 3
    .param p1, "duration"    # J

    .line 52
    iput-wide p1, p0, Lcom/samsung/vekit/Content/Content;->duration:J

    .line 53
    return-object p0
.end method

.method public setHeight(I)Lcom/samsung/vekit/Content/Content;
    .registers 2
    .param p1, "height"    # I

    .line 47
    iput p1, p0, Lcom/samsung/vekit/Content/Content;->height:I

    .line 48
    return-object p0
.end method

.method public setWidth(I)Lcom/samsung/vekit/Content/Content;
    .registers 2
    .param p1, "width"    # I

    .line 42
    iput p1, p0, Lcom/samsung/vekit/Content/Content;->width:I

    .line 43
    return-object p0
.end method
