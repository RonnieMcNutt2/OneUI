.class public Lcom/samsung/vekit/Common/Object/FrcSupportInfo;
.super Ljava/lang/Object;
.source "FrcSupportInfo.java"


# instance fields
.field private frcSupportInfo:[[Z


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/samsung/vekit/Common/Type/FpsType;->values()[Lcom/samsung/vekit/Common/Type/FpsType;

    move-result-object v0

    array-length v0, v0

    .line 14
    .local v0, "fpsSize":I
    invoke-static {}, Lcom/samsung/vekit/Common/Type/SpeedType;->values()[Lcom/samsung/vekit/Common/Type/SpeedType;

    move-result-object v1

    array-length v1, v1

    .line 15
    .local v1, "speedSize":I
    new-array v2, v0, [[Z

    iput-object v2, p0, Lcom/samsung/vekit/Common/Object/FrcSupportInfo;->frcSupportInfo:[[Z

    .line 16
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_2a

    .line 18
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/FrcSupportInfo;->frcSupportInfo:[[Z

    new-array v4, v1, [Z

    aput-object v4, v3, v2

    .line 19
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1b
    if-ge v3, v1, :cond_27

    .line 21
    iget-object v4, p0, Lcom/samsung/vekit/Common/Object/FrcSupportInfo;->frcSupportInfo:[[Z

    aget-object v4, v4, v2

    const/4 v5, 0x0

    aput-boolean v5, v4, v3

    .line 19
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 16
    .end local v3    # "j":I
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 24
    .end local v2    # "i":I
    :cond_2a
    return-void
.end method


# virtual methods
.method public checkFrcAvailable(Lcom/samsung/vekit/Common/Type/FpsType;Lcom/samsung/vekit/Common/Type/SpeedType;)Z
    .registers 5
    .param p1, "fpsType"    # Lcom/samsung/vekit/Common/Type/FpsType;
    .param p2, "speedType"    # Lcom/samsung/vekit/Common/Type/SpeedType;

    .line 27
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/FrcSupportInfo;->frcSupportInfo:[[Z

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/FpsType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2}, Lcom/samsung/vekit/Common/Type/SpeedType;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setFrcAvailable(IIZ)V
    .registers 5
    .param p1, "fpsType"    # I
    .param p2, "speedType"    # I
    .param p3, "frcAvailable"    # Z

    .line 37
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/FrcSupportInfo;->frcSupportInfo:[[Z

    aget-object v0, v0, p1

    aput-boolean p3, v0, p2

    .line 38
    return-void
.end method

.method public setFrcAvailable(Lcom/samsung/vekit/Common/Type/FpsType;Lcom/samsung/vekit/Common/Type/SpeedType;Z)V
    .registers 6
    .param p1, "fpsType"    # Lcom/samsung/vekit/Common/Type/FpsType;
    .param p2, "speedType"    # Lcom/samsung/vekit/Common/Type/SpeedType;
    .param p3, "frcAvailable"    # Z

    .line 32
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/FrcSupportInfo;->frcSupportInfo:[[Z

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/FpsType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2}, Lcom/samsung/vekit/Common/Type/SpeedType;->ordinal()I

    move-result v1

    aput-boolean p3, v0, v1

    .line 33
    return-void
.end method
