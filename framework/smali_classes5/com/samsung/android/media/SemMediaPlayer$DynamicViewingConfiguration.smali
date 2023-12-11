.class public final Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DynamicViewingConfiguration"
.end annotation


# instance fields
.field private mEndTimeMs:I

.field private mSpeedRate:F

.field private mStartTimeMs:I


# direct methods
.method public constructor <init>(IIF)V
    .registers 6
    .param p1, "startTimeMs"    # I
    .param p2, "endTimeMs"    # I
    .param p3, "speedRate"    # F

    .line 4038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4039
    if-ltz p1, :cond_23

    .line 4044
    if-ltz p2, :cond_1b

    .line 4049
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_13

    .line 4054
    iput p1, p0, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->mStartTimeMs:I

    .line 4055
    iput p2, p0, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->mEndTimeMs:I

    .line 4056
    iput p3, p0, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->mSpeedRate:F

    .line 4057
    return-void

    .line 4050
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DynamicViewingConfiguration speedRate is less or equal than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4045
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DynamicViewingConfiguration endTimeMs is less than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4040
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DynamicViewingConfiguration startTimeMs is less than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getEndTime()I
    .registers 2

    .line 4072
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->mEndTimeMs:I

    return v0
.end method

.method public getSpeedRate()F
    .registers 2

    .line 4077
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->mSpeedRate:F

    return v0
.end method

.method public getStartTime()I
    .registers 2

    .line 4064
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->mStartTimeMs:I

    return v0
.end method
