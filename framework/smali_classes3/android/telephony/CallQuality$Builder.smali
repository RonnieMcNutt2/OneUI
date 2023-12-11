.class public final Landroid/telephony/CallQuality$Builder;
.super Ljava/lang/Object;
.source "CallQuality.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CallQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAverageRelativeJitter:I

.field private mAverageRoundTripTime:I

.field private mCallDuration:I

.field private mCodecType:I

.field private mDownlinkCallQualityLevel:I

.field private mMaxPlayoutDelayMillis:J

.field private mMaxRelativeJitter:I

.field private mMinPlayoutDelayMillis:J

.field private mNumDroppedRtpPackets:I

.field private mNumNoDataFrames:I

.field private mNumRtpDuplicatePackets:I

.field private mNumRtpPacketsNotReceived:I

.field private mNumRtpPacketsReceived:I

.field private mNumRtpPacketsTransmitted:I

.field private mNumRtpPacketsTransmittedLost:I

.field private mNumRtpSidPacketsReceived:I

.field private mNumVoiceFrames:I

.field private mRtpInactivityDetected:Z

.field private mRxSilenceDetected:Z

.field private mTxSilenceDetected:Z

.field private mUplinkCallQualityLevel:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/CallQuality;
    .registers 4

    .line 827
    new-instance v0, Landroid/telephony/CallQuality;

    invoke-direct {v0}, Landroid/telephony/CallQuality;-><init>()V

    .line 828
    .local v0, "callQuality":Landroid/telephony/CallQuality;
    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mDownlinkCallQualityLevel:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmDownlinkCallQualityLevel(Landroid/telephony/CallQuality;I)V

    .line 829
    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mUplinkCallQualityLevel:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmUplinkCallQualityLevel(Landroid/telephony/CallQuality;I)V

    .line 830
    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mCallDuration:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmCallDuration(Landroid/telephony/CallQuality;I)V

    .line 831
    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsTransmitted:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumRtpPacketsTransmitted(Landroid/telephony/CallQuality;I)V

    .line 832
    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsReceived:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumRtpPacketsReceived(Landroid/telephony/CallQuality;I)V

    .line 833
    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsTransmittedLost:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumRtpPacketsTransmittedLost(Landroid/telephony/CallQuality;I)V

    .line 834
    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsNotReceived:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumRtpPacketsNotReceived(Landroid/telephony/CallQuality;I)V

    .line 835
    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mAverageRelativeJitter:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmAverageRelativeJitter(Landroid/telephony/CallQuality;I)V

    .line 836
    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mMaxRelativeJitter:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmMaxRelativeJitter(Landroid/telephony/CallQuality;I)V

    .line 837
    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mAverageRoundTripTime:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmAverageRoundTripTime(Landroid/telephony/CallQuality;I)V

    .line 838
    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mCodecType:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmCodecType(Landroid/telephony/CallQuality;I)V

    .line 839
    iget-boolean v1, p0, Landroid/telephony/CallQuality$Builder;->mRtpInactivityDetected:Z

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmRtpInactivityDetected(Landroid/telephony/CallQuality;Z)V

    .line 840
    iget-boolean v1, p0, Landroid/telephony/CallQuality$Builder;->mTxSilenceDetected:Z

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmTxSilenceDetected(Landroid/telephony/CallQuality;Z)V

    .line 841
    iget-boolean v1, p0, Landroid/telephony/CallQuality$Builder;->mRxSilenceDetected:Z

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmRxSilenceDetected(Landroid/telephony/CallQuality;Z)V

    .line 842
    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumVoiceFrames:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumVoiceFrames(Landroid/telephony/CallQuality;I)V

    .line 843
    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumNoDataFrames:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumNoDataFrames(Landroid/telephony/CallQuality;I)V

    .line 844
    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumDroppedRtpPackets:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumDroppedRtpPackets(Landroid/telephony/CallQuality;I)V

    .line 845
    iget-wide v1, p0, Landroid/telephony/CallQuality$Builder;->mMinPlayoutDelayMillis:J

    invoke-static {v0, v1, v2}, Landroid/telephony/CallQuality;->-$$Nest$fputmMinPlayoutDelayMillis(Landroid/telephony/CallQuality;J)V

    .line 846
    iget-wide v1, p0, Landroid/telephony/CallQuality$Builder;->mMaxPlayoutDelayMillis:J

    invoke-static {v0, v1, v2}, Landroid/telephony/CallQuality;->-$$Nest$fputmMaxPlayoutDelayMillis(Landroid/telephony/CallQuality;J)V

    .line 847
    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpSidPacketsReceived:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumRtpSidPacketsReceived(Landroid/telephony/CallQuality;I)V

    .line 848
    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpDuplicatePackets:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumRtpDuplicatePackets(Landroid/telephony/CallQuality;I)V

    .line 850
    return-object v0
.end method

.method public setAverageRelativeJitter(I)Landroid/telephony/CallQuality$Builder;
    .registers 2
    .param p1, "averageRelativeJitter"    # I

    .line 660
    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mAverageRelativeJitter:I

    .line 661
    return-object p0
.end method

.method public setAverageRoundTripTimeMillis(I)Landroid/telephony/CallQuality$Builder;
    .registers 2
    .param p1, "averageRoundTripTimeMillis"    # I

    .line 685
    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mAverageRoundTripTime:I

    .line 686
    return-object p0
.end method

.method public setCallDurationMillis(I)Landroid/telephony/CallQuality$Builder;
    .registers 2
    .param p1, "callDurationMillis"    # I

    .line 602
    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mCallDuration:I

    .line 603
    return-object p0
.end method

.method public setCodecType(I)Landroid/telephony/CallQuality$Builder;
    .registers 2
    .param p1, "codecType"    # I

    .line 696
    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mCodecType:I

    .line 697
    return-object p0
.end method

.method public setDownlinkCallQualityLevel(I)Landroid/telephony/CallQuality$Builder;
    .registers 2
    .param p1, "downlinkCallQualityLevel"    # I

    .line 576
    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mDownlinkCallQualityLevel:I

    .line 577
    return-object p0
.end method

.method public setIncomingSilenceDetectedAtCallSetup(Z)Landroid/telephony/CallQuality$Builder;
    .registers 2
    .param p1, "rxSilenceDetected"    # Z

    .line 722
    iput-boolean p1, p0, Landroid/telephony/CallQuality$Builder;->mRxSilenceDetected:Z

    .line 723
    return-object p0
.end method

.method public setMaxPlayoutDelayMillis(J)Landroid/telephony/CallQuality$Builder;
    .registers 3
    .param p1, "maxPlayoutDelayMillis"    # J

    .line 790
    iput-wide p1, p0, Landroid/telephony/CallQuality$Builder;->mMaxPlayoutDelayMillis:J

    .line 791
    return-object p0
.end method

.method public setMaxRelativeJitter(I)Landroid/telephony/CallQuality$Builder;
    .registers 2
    .param p1, "maxRelativeJitter"    # I

    .line 671
    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mMaxRelativeJitter:I

    .line 672
    return-object p0
.end method

.method public setMinPlayoutDelayMillis(J)Landroid/telephony/CallQuality$Builder;
    .registers 3
    .param p1, "minPlayoutDelayMillis"    # J

    .line 779
    iput-wide p1, p0, Landroid/telephony/CallQuality$Builder;->mMinPlayoutDelayMillis:J

    .line 780
    return-object p0
.end method

.method public setNumDroppedRtpPackets(I)Landroid/telephony/CallQuality$Builder;
    .registers 2
    .param p1, "numDroppedRtpPackets"    # I

    .line 768
    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumDroppedRtpPackets:I

    .line 769
    return-object p0
.end method

.method public setNumNoDataFrames(I)Landroid/telephony/CallQuality$Builder;
    .registers 2
    .param p1, "numNoDataFrames"    # I

    .line 757
    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumNoDataFrames:I

    .line 758
    return-object p0
.end method

.method public setNumRtpDuplicatePackets(I)Landroid/telephony/CallQuality$Builder;
    .registers 2
    .param p1, "numRtpDuplicatePackets"    # I

    .line 816
    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpDuplicatePackets:I

    .line 817
    return-object p0
.end method

.method public setNumRtpPacketsNotReceived(I)Landroid/telephony/CallQuality$Builder;
    .registers 2
    .param p1, "numRtpPacketsNotReceived"    # I

    .line 649
    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsNotReceived:I

    .line 650
    return-object p0
.end method

.method public setNumRtpPacketsReceived(I)Landroid/telephony/CallQuality$Builder;
    .registers 2
    .param p1, "numRtpPacketsReceived"    # I

    .line 624
    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsReceived:I

    .line 625
    return-object p0
.end method

.method public setNumRtpPacketsTransmitted(I)Landroid/telephony/CallQuality$Builder;
    .registers 2
    .param p1, "numRtpPacketsTransmitted"    # I

    .line 613
    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsTransmitted:I

    .line 614
    return-object p0
.end method

.method public setNumRtpPacketsTransmittedLost(I)Landroid/telephony/CallQuality$Builder;
    .registers 2
    .param p1, "numRtpPacketsTransmittedLost"    # I

    .line 637
    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsTransmittedLost:I

    .line 638
    return-object p0
.end method

.method public setNumRtpSidPacketsReceived(I)Landroid/telephony/CallQuality$Builder;
    .registers 2
    .param p1, "numRtpSidPacketsReceived"    # I

    .line 803
    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpSidPacketsReceived:I

    .line 804
    return-object p0
.end method

.method public setNumVoiceFrames(I)Landroid/telephony/CallQuality$Builder;
    .registers 2
    .param p1, "numVoiceFrames"    # I

    .line 746
    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumVoiceFrames:I

    .line 747
    return-object p0
.end method

.method public setOutgoingSilenceDetectedAtCallSetup(Z)Landroid/telephony/CallQuality$Builder;
    .registers 2
    .param p1, "txSilenceDetected"    # Z

    .line 735
    iput-boolean p1, p0, Landroid/telephony/CallQuality$Builder;->mTxSilenceDetected:Z

    .line 736
    return-object p0
.end method

.method public setRtpInactivityDetected(Z)Landroid/telephony/CallQuality$Builder;
    .registers 2
    .param p1, "rtpInactivityDetected"    # Z

    .line 709
    iput-boolean p1, p0, Landroid/telephony/CallQuality$Builder;->mRtpInactivityDetected:Z

    .line 710
    return-object p0
.end method

.method public setUplinkCallQualityLevel(I)Landroid/telephony/CallQuality$Builder;
    .registers 2
    .param p1, "uplinkCallQualityLevel"    # I

    .line 588
    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mUplinkCallQualityLevel:I

    .line 589
    return-object p0
.end method
