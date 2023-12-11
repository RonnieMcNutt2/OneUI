.class public Landroid/hardware/hdmi/HdmiTimerRecordSources;
.super Ljava/lang/Object;
.source "HdmiTimerRecordSources.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;
    }
.end annotation


# static fields
.field private static final EXTERNAL_SOURCE_SPECIFIER_EXTERNAL_PHYSICAL_ADDRESS:I = 0x5

.field private static final EXTERNAL_SOURCE_SPECIFIER_EXTERNAL_PLUG:I = 0x4

.field public static final RECORDING_SEQUENCE_REPEAT_FRIDAY:I = 0x20

.field private static final RECORDING_SEQUENCE_REPEAT_MASK:I = 0x7f

.field public static final RECORDING_SEQUENCE_REPEAT_MONDAY:I = 0x2

.field public static final RECORDING_SEQUENCE_REPEAT_ONCE_ONLY:I = 0x0

.field public static final RECORDING_SEQUENCE_REPEAT_SATUREDAY:I = 0x40

.field public static final RECORDING_SEQUENCE_REPEAT_SUNDAY:I = 0x1

.field public static final RECORDING_SEQUENCE_REPEAT_THURSDAY:I = 0x10

.field public static final RECORDING_SEQUENCE_REPEAT_TUESDAY:I = 0x4

.field public static final RECORDING_SEQUENCE_REPEAT_WEDNESDAY:I = 0x8

.field private static final TAG:Ljava/lang/String; = "HdmiTimerRecordingSources"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDurationValue(II)V
    .registers 5
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    .line 178
    if-ltz p0, :cond_26

    const/16 v0, 0x63

    if-gt p0, v0, :cond_26

    .line 181
    if-ltz p1, :cond_d

    const/16 v0, 0x3b

    if-gt p1, v0, :cond_d

    .line 184
    return-void

    .line 182
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minute should be in rage of [0, 59]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hour should be in rage of [0, 99]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkTimeValue(II)V
    .registers 5
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    .line 156
    if-ltz p0, :cond_26

    const/16 v0, 0x17

    if-gt p0, v0, :cond_26

    .line 159
    if-ltz p1, :cond_d

    const/16 v0, 0x3b

    if-gt p1, v0, :cond_d

    .line 162
    return-void

    .line 160
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minute should be in rage of [0, 59]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hour should be in rage of [0, 23]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkTimerRecordSource(I[B)Z
    .registers 7
    .param p0, "sourcetype"    # I
    .param p1, "recordSource"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 440
    array-length v0, p1

    const/4 v1, 0x7

    sub-int/2addr v0, v1

    .line 441
    .local v0, "recordSourceSize":I
    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_28

    .line 459
    return v4

    .line 447
    :pswitch_a
    aget-byte v1, p1, v1

    .line 448
    .local v1, "specifier":I
    if-ne v1, v2, :cond_14

    .line 450
    const/4 v2, 0x2

    if-ne v2, v0, :cond_12

    goto :goto_13

    :cond_12
    move v3, v4

    :goto_13
    return v3

    .line 451
    :cond_14
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1d

    .line 453
    const/4 v2, 0x3

    if-ne v2, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v3, v4

    :goto_1c
    return v3

    .line 456
    :cond_1d
    return v4

    .line 445
    .end local v1    # "specifier":I
    :pswitch_1e
    if-ne v2, v0, :cond_21

    goto :goto_22

    :cond_21
    move v3, v4

    :goto_22
    return v3

    .line 443
    :pswitch_23
    if-ne v1, v0, :cond_26

    goto :goto_27

    :cond_26
    move v3, v4

    :goto_27
    return v3

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1e
        :pswitch_a
    .end packed-switch
.end method

.method private static checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V
    .registers 4
    .param p0, "timerInfo"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;
    .param p1, "source"    # Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    .line 132
    const-string v0, "HdmiTimerRecordingSources"

    if-eqz p0, :cond_12

    .line 136
    if-eqz p1, :cond_7

    .line 140
    return-void

    .line 137
    :cond_7
    const-string v1, "source should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_12
    const-string v1, "TimerInfo should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static durationOf(II)Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;
    .registers 4
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    .line 173
    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkDurationValue(II)V

    .line 174
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;-><init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Duration-IA;)V

    return-object v0
.end method

.method public static ofAnalogueSource(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;
    .registers 4
    .param p0, "timerInfo"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;
    .param p1, "source"    # Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;

    .line 95
    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V

    .line 96
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;-><init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource-IA;)V

    return-object v0
.end method

.method public static ofDigitalSource(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;
    .registers 4
    .param p0, "timerInfo"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;
    .param p1, "source"    # Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;

    .line 80
    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V

    .line 81
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;-><init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource-IA;)V

    return-object v0
.end method

.method public static ofExternalPhysicalAddress(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;
    .registers 6
    .param p0, "timerInfo"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;
    .param p1, "source"    # Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;

    .line 125
    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V

    .line 126
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    new-instance v1, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;ILandroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator-IA;)V

    invoke-direct {v0, p0, v1, v3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;-><init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource-IA;)V

    return-object v0
.end method

.method public static ofExternalPlug(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;
    .registers 6
    .param p0, "timerInfo"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;
    .param p1, "source"    # Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;

    .line 109
    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V

    .line 110
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    new-instance v1, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;ILandroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator-IA;)V

    invoke-direct {v0, p0, v1, v3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;-><init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource-IA;)V

    return-object v0
.end method

.method public static timeOf(II)Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;
    .registers 4
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    .line 151
    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimeValue(II)V

    .line 152
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;-><init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time-IA;)V

    return-object v0
.end method

.method public static timerInfoOf(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time;Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;I)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;
    .registers 14
    .param p0, "dayOfMonth"    # I
    .param p1, "monthOfYear"    # I
    .param p2, "startTime"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;
    .param p3, "duration"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;
    .param p4, "recordingSequence"    # I

    .line 273
    if-ltz p0, :cond_61

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_61

    .line 277
    const/4 v0, 0x1

    if-lt p1, v0, :cond_48

    const/16 v0, 0xc

    if-gt p1, v0, :cond_48

    .line 281
    iget v0, p2, Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;->mHour:I

    iget v1, p2, Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;->mMinute:I

    invoke-static {v0, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimeValue(II)V

    .line 282
    iget v0, p3, Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;->mHour:I

    iget v1, p3, Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;->mMinute:I

    invoke-static {v0, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkDurationValue(II)V

    .line 284
    if-eqz p4, :cond_3b

    and-int/lit8 v0, p4, -0x80

    if-nez v0, :cond_22

    goto :goto_3b

    .line 286
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid reecording sequence value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_3b
    :goto_3b
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;

    const/4 v8, 0x0

    move-object v2, v0

    move v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v8}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;-><init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time;Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;ILandroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo-IA;)V

    return-object v0

    .line 278
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Month of year should be in range of [1, 12]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Day of month should be in range of [0, 31]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
