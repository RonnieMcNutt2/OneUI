.class public Lcom/samsung/app/video/editor/external/Region;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x76424dc3a19c8d3fL


# instance fields
.field private TAG:Ljava/lang/String;

.field private listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

.field private mParentElement:Lcom/samsung/app/video/editor/external/Element;

.field private mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

.field mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

.field slowAudioEndTime:I

.field slowAudioStartTime:I

.field slowEndTime:I

.field slowStartTime:I

.field speedSlowRegion:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->NORMAL:Lcom/samsung/app/video/editor/external/Speed;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    .line 18
    const-string v0, "Region"

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    return-void
.end method

.method private getSpeedMapForV2120(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;
    .registers 4
    .param p1, "speed"    # Lcom/samsung/app/video/editor/external/Speed;

    .line 107
    sget-object v0, Lcom/samsung/app/video/editor/external/Region$1;->$SwitchMap$com$samsung$app$video$editor$external$Speed:[I

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Speed;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 117
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->NORMAL:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 115
    :pswitch_e
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->HALF:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 113
    :pswitch_11
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->NORMAL:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 111
    :pswitch_14
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->TWO_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 109
    :pswitch_17
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->FOUR_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method private getSpeedMapForV2240(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;
    .registers 4
    .param p1, "speed"    # Lcom/samsung/app/video/editor/external/Speed;

    .line 122
    sget-object v0, Lcom/samsung/app/video/editor/external/Region$1;->$SwitchMap$com$samsung$app$video$editor$external$Speed:[I

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Speed;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 132
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->NORMAL:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 130
    :pswitch_e
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->NORMAL:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 128
    :pswitch_11
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->TWO_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 126
    :pswitch_14
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->FOUR_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 124
    :pswitch_17
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->EIGHT_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method copy()Lcom/samsung/app/video/editor/external/Region;
    .registers 3

    .line 28
    new-instance v0, Lcom/samsung/app/video/editor/external/Region;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/Region;-><init>()V

    .line 29
    .local v0, "reCopy":Lcom/samsung/app/video/editor/external/Region;
    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    .line 30
    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    .line 31
    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowAudioStartTime:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Region;->slowAudioStartTime:I

    .line 32
    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowAudioEndTime:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Region;->slowAudioEndTime:I

    .line 33
    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->speedSlowRegion:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Region;->speedSlowRegion:I

    .line 34
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    .line 35
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    .line 36
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Region;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Region;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 38
    return-object v0
.end method

.method public getSlowEndTime()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    return v0
.end method

.method public getSlowStartTime()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    return v0
.end method

.method public getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0
.end method

.method public setListener(Lcom/samsung/app/video/editor/external/ElementChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/app/video/editor/external/ElementChangeListener;

    .line 98
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    .line 99
    return-void
.end method

.method protected setParentElement(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 5
    .param p1, "element"    # Lcom/samsung/app/video/editor/external/Element;

    .line 23
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parent Element = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Region;->mParentElement:Lcom/samsung/app/video/editor/external/Element;

    .line 25
    return-void
.end method

.method public setRecordingMode(Lcom/samsung/app/video/editor/external/RecordingMode;)V
    .registers 2
    .param p1, "recordingMode"    # Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 102
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Region;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 103
    return-void
.end method

.method public setSlowEndTime(I)V
    .registers 5
    .param p1, "slowEndTime"    # I

    .line 66
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slowEndTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    if-eqz v0, :cond_68

    .line 68
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    sget-object v1, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2_120:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-eq v0, v1, :cond_52

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    sget-object v1, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2_120_NONE_SVC:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-ne v0, v1, :cond_29

    goto :goto_52

    .line 71
    :cond_29
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    sget-object v1, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-ne v0, v1, :cond_46

    .line 72
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    const-string v1, "RecordingMode.SLOW_V2_240"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedMapForV2240(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onSlowRegionDurationChange(ILcom/samsung/app/video/editor/external/Speed;)V

    goto :goto_68

    .line 75
    :cond_46
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-interface {v0, v1, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onSlowRegionDurationChange(ILcom/samsung/app/video/editor/external/Speed;)V

    goto :goto_68

    .line 69
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    const-string v1, "RecordingMode.SLOW_V2_120"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedMapForV2120(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onSlowRegionDurationChange(ILcom/samsung/app/video/editor/external/Speed;)V

    .line 78
    :cond_68
    :goto_68
    iput p1, p0, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    .line 79
    return-void
.end method

.method public setSlowStartTime(I)V
    .registers 5
    .param p1, "slowStartTime"    # I

    .line 46
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slowStartTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    if-eqz v0, :cond_65

    .line 48
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    sget-object v1, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2_120:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-eq v0, v1, :cond_50

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    sget-object v1, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2_120_NONE_SVC:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-ne v0, v1, :cond_29

    goto :goto_50

    .line 51
    :cond_29
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    sget-object v1, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-ne v0, v1, :cond_45

    .line 52
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    const-string v1, "RecordingMode.SLOW_V2_240"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedMapForV2240(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onSlowRegionDurationChange(ILcom/samsung/app/video/editor/external/Speed;)V

    goto :goto_65

    .line 55
    :cond_45
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-interface {v0, v1, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onSlowRegionDurationChange(ILcom/samsung/app/video/editor/external/Speed;)V

    goto :goto_65

    .line 49
    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    const-string v1, "RecordingMode.SLOW_V2_120"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedMapForV2120(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onSlowRegionDurationChange(ILcom/samsung/app/video/editor/external/Speed;)V

    .line 58
    :cond_65
    :goto_65
    iput p1, p0, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    .line 59
    return-void
.end method

.method public setSpeedSlowRegion(Lcom/samsung/app/video/editor/external/Speed;)V
    .registers 4
    .param p1, "speed"    # Lcom/samsung/app/video/editor/external/Speed;

    .line 88
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    const-string v1, "setSpeedSlowRegion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->mParentElement:Lcom/samsung/app/video/editor/external/Element;

    if-eqz v0, :cond_e

    .line 90
    invoke-virtual {v0, p0, p1}, Lcom/samsung/app/video/editor/external/Element;->onSlowRegionSpeedChange(Lcom/samsung/app/video/editor/external/Region;Lcom/samsung/app/video/editor/external/Speed;)V

    .line 92
    :cond_e
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    .line 93
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Speed;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Region;->speedSlowRegion:I

    .line 94
    return-void
.end method
