.class public Landroid/media/tv/tuner/DemuxCapabilities;
.super Ljava/lang/Object;
.source "DemuxCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/DemuxCapabilities$FilterCapabilities;
    }
.end annotation


# instance fields
.field private final mAudioFilterCount:I

.field private final mDemuxCount:I

.field private final mFilterCaps:I

.field private final mFilterCapsList:[I

.field private final mLinkCaps:[I

.field private final mPcrFilterCount:I

.field private final mPesFilterCount:I

.field private final mPlaybackCount:I

.field private final mRecordCount:I

.field private final mSectionFilterCount:I

.field private final mSectionFilterLength:J

.field private final mSupportTimeFilter:Z

.field private final mTsFilterCount:I

.field private final mVideoFilterCount:I


# direct methods
.method private constructor <init>(IIIIIIIIIJI[I[IZ)V
    .registers 16
    .param p1, "demuxCount"    # I
    .param p2, "recordCount"    # I
    .param p3, "playbackCount"    # I
    .param p4, "tsFilterCount"    # I
    .param p5, "sectionFilterCount"    # I
    .param p6, "audioFilterCount"    # I
    .param p7, "videoFilterCount"    # I
    .param p8, "pesFilterCount"    # I
    .param p9, "pcrFilterCount"    # I
    .param p10, "sectionFilterLength"    # J
    .param p12, "filterCaps"    # I
    .param p13, "filterCapsList"    # [I
    .param p14, "linkCaps"    # [I
    .param p15, "timeFilter"    # Z

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mDemuxCount:I

    .line 72
    iput p2, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mRecordCount:I

    .line 73
    iput p3, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPlaybackCount:I

    .line 74
    iput p4, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mTsFilterCount:I

    .line 75
    iput p5, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterCount:I

    .line 76
    iput p6, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mAudioFilterCount:I

    .line 77
    iput p7, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mVideoFilterCount:I

    .line 78
    iput p8, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPesFilterCount:I

    .line 79
    iput p9, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPcrFilterCount:I

    .line 80
    iput-wide p10, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterLength:J

    .line 81
    iput p12, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mFilterCaps:I

    .line 82
    iput-object p13, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mFilterCapsList:[I

    .line 83
    iput-object p14, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mLinkCaps:[I

    .line 84
    iput-boolean p15, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSupportTimeFilter:Z

    .line 85
    return-void
.end method


# virtual methods
.method public getAudioFilterCount()I
    .registers 2

    .line 121
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mAudioFilterCount:I

    return v0
.end method

.method public getDemuxCount()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mDemuxCount:I

    return v0
.end method

.method public getFilterCapabilities()I
    .registers 2

    .line 156
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mFilterCaps:I

    return v0
.end method

.method public getFilterTypeCapabilityList()[I
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mFilterCapsList:[I

    return-object v0
.end method

.method public getLinkCapabilities()[I
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mLinkCaps:[I

    return-object v0
.end method

.method public getPcrFilterCount()I
    .registers 2

    .line 139
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPcrFilterCount:I

    return v0
.end method

.method public getPesFilterCount()I
    .registers 2

    .line 133
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPesFilterCount:I

    return v0
.end method

.method public getPlaybackCount()I
    .registers 2

    .line 103
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPlaybackCount:I

    return v0
.end method

.method public getRecordCount()I
    .registers 2

    .line 97
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mRecordCount:I

    return v0
.end method

.method public getSectionFilterCount()I
    .registers 2

    .line 115
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterCount:I

    return v0
.end method

.method public getSectionFilterLength()J
    .registers 3

    .line 146
    iget-wide v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterLength:J

    return-wide v0
.end method

.method public getTsFilterCount()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mTsFilterCount:I

    return v0
.end method

.method public getVideoFilterCount()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mVideoFilterCount:I

    return v0
.end method

.method public isTimeFilterSupported()Z
    .registers 2

    .line 193
    iget-boolean v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSupportTimeFilter:Z

    return v0
.end method
