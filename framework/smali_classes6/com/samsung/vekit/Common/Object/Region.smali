.class public Lcom/samsung/vekit/Common/Object/Region;
.super Ljava/lang/Object;
.source "Region.java"


# instance fields
.field private endTime:J

.field private isFrcOn:Z

.field private speed:F

.field private startTime:J


# direct methods
.method public constructor <init>(JJFZ)V
    .registers 7
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "speed"    # F
    .param p6, "isFrcOn"    # Z

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/Region;->startTime:J

    .line 11
    iput-wide p3, p0, Lcom/samsung/vekit/Common/Object/Region;->endTime:J

    .line 12
    iput p5, p0, Lcom/samsung/vekit/Common/Object/Region;->speed:F

    .line 13
    iput-boolean p6, p0, Lcom/samsung/vekit/Common/Object/Region;->isFrcOn:Z

    .line 14
    return-void
.end method


# virtual methods
.method public getEndTime()J
    .registers 3

    .line 25
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Region;->endTime:J

    return-wide v0
.end method

.method public getRegion()Lcom/samsung/vekit/Common/Object/Region;
    .registers 1

    .line 17
    return-object p0
.end method

.method public getSpeed()F
    .registers 2

    .line 29
    iget v0, p0, Lcom/samsung/vekit/Common/Object/Region;->speed:F

    return v0
.end method

.method public getStartTime()J
    .registers 3

    .line 21
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Region;->startTime:J

    return-wide v0
.end method

.method public isFrcOn()Z
    .registers 2

    .line 33
    iget-boolean v0, p0, Lcom/samsung/vekit/Common/Object/Region;->isFrcOn:Z

    return v0
.end method

.method public setEndTime(I)V
    .registers 4
    .param p1, "endTime"    # I

    .line 41
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Region;->endTime:J

    .line 42
    return-void
.end method

.method public setFrcOn(Z)V
    .registers 2
    .param p1, "isFrcOn"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/samsung/vekit/Common/Object/Region;->isFrcOn:Z

    .line 50
    return-void
.end method

.method public setSpeed(F)V
    .registers 2
    .param p1, "speed"    # F

    .line 45
    iput p1, p0, Lcom/samsung/vekit/Common/Object/Region;->speed:F

    .line 46
    return-void
.end method

.method public setStartTime(I)V
    .registers 4
    .param p1, "starTime"    # I

    .line 37
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Region;->startTime:J

    .line 38
    return-void
.end method
