.class public final Landroid/service/voice/HotwordDetectedResult$Builder;
.super Landroid/service/voice/HotwordDetectedResult$BaseBuilder;
.source "HotwordDetectedResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/HotwordDetectedResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioChannel:I

.field private mAudioStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/voice/HotwordAudioStream;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundAudioPower:I

.field private mBuilderFieldsSet:J

.field private mConfidenceLevel:I

.field private mExtras:Landroid/os/PersistableBundle;

.field private mHotwordDetectionPersonalized:Z

.field private mHotwordDurationMillis:I

.field private mHotwordOffsetMillis:I

.field private mHotwordPhraseId:I

.field private mMediaSyncEvent:Landroid/media/MediaSyncEvent;

.field private mPersonalizedScore:I

.field private mScore:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBuilderFieldsSet(Landroid/service/voice/HotwordDetectedResult$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmAudioStreams(Landroid/service/voice/HotwordDetectedResult$Builder;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioStreams:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBuilderFieldsSet(Landroid/service/voice/HotwordDetectedResult$Builder;J)V
    .registers 3

    iput-wide p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 942
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$BaseBuilder;-><init>()V

    .line 940
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 943
    return-void
.end method

.method private checkNotUsed()V
    .registers 5

    .line 1169
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 1173
    return-void

    .line 1170
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/service/voice/HotwordDetectedResult;
    .registers 15

    .line 1113
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1114
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1116
    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 1117
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultConfidenceLevel()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mConfidenceLevel:I

    .line 1119
    :cond_19
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-nez v4, :cond_25

    .line 1120
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    .line 1122
    :cond_25
    const-wide/16 v4, 0x4

    and-long/2addr v4, v0

    cmp-long v4, v4, v2

    const/4 v5, -0x1

    if-nez v4, :cond_2f

    .line 1123
    iput v5, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordOffsetMillis:I

    .line 1125
    :cond_2f
    const-wide/16 v6, 0x8

    and-long/2addr v6, v0

    cmp-long v4, v6, v2

    const/4 v6, 0x0

    if-nez v4, :cond_39

    .line 1126
    iput v6, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDurationMillis:I

    .line 1128
    :cond_39
    const-wide/16 v7, 0x10

    and-long/2addr v7, v0

    cmp-long v4, v7, v2

    if-nez v4, :cond_42

    .line 1129
    iput v5, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioChannel:I

    .line 1131
    :cond_42
    const-wide/16 v4, 0x20

    and-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-nez v4, :cond_4b

    .line 1132
    iput-boolean v6, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDetectionPersonalized:Z

    .line 1134
    :cond_4b
    const-wide/16 v4, 0x40

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_58

    .line 1135
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultScore()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mScore:I

    .line 1137
    :cond_58
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_67

    .line 1138
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultPersonalizedScore()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mPersonalizedScore:I

    .line 1140
    :cond_67
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x100

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_76

    .line 1141
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultHotwordPhraseId()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordPhraseId:I

    .line 1143
    :cond_76
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x200

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_85

    .line 1144
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultAudioStreams()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioStreams:Ljava/util/List;

    .line 1146
    :cond_85
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x400

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_94

    .line 1147
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 1149
    :cond_94
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x800

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_a3

    .line 1150
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultBackgroundAudioPower()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBackgroundAudioPower:I

    .line 1152
    :cond_a3
    new-instance v0, Landroid/service/voice/HotwordDetectedResult;

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mConfidenceLevel:I

    iget-object v3, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    iget v4, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordOffsetMillis:I

    iget v5, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDurationMillis:I

    iget v6, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioChannel:I

    iget-boolean v7, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDetectionPersonalized:Z

    iget v8, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mScore:I

    iget v9, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mPersonalizedScore:I

    iget v10, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordPhraseId:I

    iget-object v11, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioStreams:Ljava/util/List;

    iget-object v12, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mExtras:Landroid/os/PersistableBundle;

    iget v13, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBackgroundAudioPower:I

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Landroid/service/voice/HotwordDetectedResult;-><init>(ILandroid/media/MediaSyncEvent;IIIZIIILjava/util/List;Landroid/os/PersistableBundle;I)V

    .line 1165
    .local v0, "o":Landroid/service/voice/HotwordDetectedResult;
    return-object v0
.end method

.method public setAudioChannel(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 1004
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1005
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1006
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioChannel:I

    .line 1007
    return-object p0
.end method

.method public bridge synthetic setAudioStreams(Ljava/util/List;)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 2

    .line 923
    invoke-super {p0, p1}, Landroid/service/voice/HotwordDetectedResult$BaseBuilder;->setAudioStreams(Ljava/util/List;)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundAudioPower(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 1105
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1106
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1107
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBackgroundAudioPower:I

    .line 1108
    return-object p0
.end method

.method public setConfidenceLevel(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 950
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 951
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 952
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mConfidenceLevel:I

    .line 953
    return-object p0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # Landroid/os/PersistableBundle;

    .line 1088
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1089
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1090
    iput-object p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 1091
    return-object p0
.end method

.method public setHotwordDetectionPersonalized(Z)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # Z

    .line 1016
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1017
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1018
    iput-boolean p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDetectionPersonalized:Z

    .line 1019
    return-object p0
.end method

.method public setHotwordDurationMillis(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 991
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 992
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 993
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDurationMillis:I

    .line 994
    return-object p0
.end method

.method public setHotwordOffsetMillis(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 977
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 978
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 979
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordOffsetMillis:I

    .line 980
    return-object p0
.end method

.method public setHotwordPhraseId(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 1055
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1056
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1057
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordPhraseId:I

    .line 1058
    return-object p0
.end method

.method public setMediaSyncEvent(Landroid/media/MediaSyncEvent;)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # Landroid/media/MediaSyncEvent;

    .line 963
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 964
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 965
    iput-object p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    .line 966
    return-object p0
.end method

.method public setPersonalizedScore(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 1042
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1043
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1044
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mPersonalizedScore:I

    .line 1045
    return-object p0
.end method

.method public setScore(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 1029
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1030
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1031
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mScore:I

    .line 1032
    return-object p0
.end method
