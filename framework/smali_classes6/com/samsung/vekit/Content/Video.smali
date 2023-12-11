.class public Lcom/samsung/vekit/Content/Video;
.super Lcom/samsung/vekit/Content/Content;
.source "Video.java"


# instance fields
.field protected filePath:Ljava/lang/String;

.field private frameRate:I

.field protected is360:Z

.field private isSlowMotion:Z

.field private orientation:I

.field private recordingMode:I

.field private slowVideoInfo:Lcom/samsung/vekit/Common/Object/SlowVideoInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .registers 5
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentType;->VIDEO:Lcom/samsung/vekit/Common/Type/ContentType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Content/Content;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ContentType;ILjava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Content/Video;->is360:Z

    .line 14
    iput-boolean v0, p0, Lcom/samsung/vekit/Content/Video;->isSlowMotion:Z

    .line 16
    iput v0, p0, Lcom/samsung/vekit/Content/Video;->recordingMode:I

    .line 17
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/vekit/Content/Video;->frameRate:I

    .line 20
    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/samsung/vekit/Content/Video;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameRate()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/samsung/vekit/Content/Video;->frameRate:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/samsung/vekit/Content/Video;->orientation:I

    return v0
.end method

.method public getRecordingMode()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/samsung/vekit/Content/Video;->recordingMode:I

    return v0
.end method

.method public getSlowVideoInfo()Lcom/samsung/vekit/Common/Object/SlowVideoInfo;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/samsung/vekit/Content/Video;->slowVideoInfo:Lcom/samsung/vekit/Common/Object/SlowVideoInfo;

    return-object v0
.end method

.method public is360()Z
    .registers 2

    .line 37
    iget-boolean v0, p0, Lcom/samsung/vekit/Content/Video;->is360:Z

    return v0
.end method

.method public isSlowMotion()Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Lcom/samsung/vekit/Content/Video;->isSlowMotion:Z

    return v0
.end method

.method public set360(Z)Lcom/samsung/vekit/Content/Video;
    .registers 2
    .param p1, "is360"    # Z

    .line 32
    iput-boolean p1, p0, Lcom/samsung/vekit/Content/Video;->is360:Z

    .line 33
    return-object p0
.end method

.method public bridge synthetic setDuration(J)Lcom/samsung/vekit/Content/Content;
    .registers 3

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Content/Video;->setDuration(J)Lcom/samsung/vekit/Content/Video;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lcom/samsung/vekit/Content/Video;
    .registers 4
    .param p1, "duration"    # J

    .line 52
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Content/Content;->setDuration(J)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Video;

    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/samsung/vekit/Content/Video;
    .registers 2
    .param p1, "filePath"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/samsung/vekit/Content/Video;->filePath:Ljava/lang/String;

    .line 24
    return-object p0
.end method

.method public setFrameRate(I)Lcom/samsung/vekit/Content/Video;
    .registers 2
    .param p1, "frameRate"    # I

    .line 95
    iput p1, p0, Lcom/samsung/vekit/Content/Video;->frameRate:I

    .line 96
    return-object p0
.end method

.method public bridge synthetic setHeight(I)Lcom/samsung/vekit/Content/Content;
    .registers 2

    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Content/Video;->setHeight(I)Lcom/samsung/vekit/Content/Video;

    move-result-object p1

    return-object p1
.end method

.method public setHeight(I)Lcom/samsung/vekit/Content/Video;
    .registers 3
    .param p1, "height"    # I

    .line 47
    invoke-super {p0, p1}, Lcom/samsung/vekit/Content/Content;->setHeight(I)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Video;

    return-object v0
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .line 60
    iput p1, p0, Lcom/samsung/vekit/Content/Video;->orientation:I

    .line 61
    return-void
.end method

.method public setRecordingMode(I)Lcom/samsung/vekit/Content/Video;
    .registers 2
    .param p1, "recordingMode"    # I

    .line 86
    iput p1, p0, Lcom/samsung/vekit/Content/Video;->recordingMode:I

    .line 87
    return-object p0
.end method

.method public setSlowVideoInfo(Lcom/samsung/vekit/Common/Object/SlowVideoInfo;)Lcom/samsung/vekit/Content/Video;
    .registers 2
    .param p1, "slowVideoInfo"    # Lcom/samsung/vekit/Common/Object/SlowVideoInfo;

    .line 64
    iput-object p1, p0, Lcom/samsung/vekit/Content/Video;->slowVideoInfo:Lcom/samsung/vekit/Common/Object/SlowVideoInfo;

    .line 65
    return-object p0
.end method

.method public bridge synthetic setWidth(I)Lcom/samsung/vekit/Content/Content;
    .registers 2

    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Content/Video;->setWidth(I)Lcom/samsung/vekit/Content/Video;

    move-result-object p1

    return-object p1
.end method

.method public setWidth(I)Lcom/samsung/vekit/Content/Video;
    .registers 3
    .param p1, "width"    # I

    .line 42
    invoke-super {p0, p1}, Lcom/samsung/vekit/Content/Content;->setWidth(I)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Video;

    return-object v0
.end method

.method public setisSlowMotion(Z)Lcom/samsung/vekit/Content/Video;
    .registers 2
    .param p1, "isSlowMotion"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/samsung/vekit/Content/Video;->isSlowMotion:Z

    .line 74
    return-object p0
.end method
