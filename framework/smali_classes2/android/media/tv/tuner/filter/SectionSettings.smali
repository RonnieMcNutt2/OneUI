.class public abstract Landroid/media/tv/tuner/filter/SectionSettings;
.super Landroid/media/tv/tuner/filter/Settings;
.source "SectionSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/SectionSettings$Builder;
    }
.end annotation


# instance fields
.field final mBitWidthOfLengthField:I

.field final mCrcEnabled:Z

.field final mIsRaw:Z

.field final mIsRepeat:Z


# direct methods
.method constructor <init>(IZZZI)V
    .registers 7
    .param p1, "mainType"    # I
    .param p2, "crcEnabled"    # Z
    .param p3, "isRepeat"    # Z
    .param p4, "isRaw"    # Z
    .param p5, "bitWidthOfLengthField"    # I

    .line 38
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/media/tv/tuner/TunerUtils;->getFilterSubtype(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/filter/Settings;-><init>(I)V

    .line 39
    iput-boolean p2, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mCrcEnabled:Z

    .line 40
    iput-boolean p3, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mIsRepeat:Z

    .line 41
    iput-boolean p4, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mIsRaw:Z

    .line 42
    iput p5, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mBitWidthOfLengthField:I

    .line 43
    return-void
.end method


# virtual methods
.method public getLengthFieldBitWidth()I
    .registers 2

    .line 86
    iget v0, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mBitWidthOfLengthField:I

    return v0
.end method

.method public isCrcEnabled()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mCrcEnabled:Z

    return v0
.end method

.method public isRaw()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mIsRaw:Z

    return v0
.end method

.method public isRepeat()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mIsRepeat:Z

    return v0
.end method
