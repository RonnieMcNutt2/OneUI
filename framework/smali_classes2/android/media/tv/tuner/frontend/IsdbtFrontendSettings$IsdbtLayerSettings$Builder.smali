.class public final Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;
.super Ljava/lang/Object;
.source "IsdbtFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCodeRate:I

.field private mModulation:I

.field private mNumOfSegments:I

.field private mTimeInterleaveMode:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->mModulation:I

    .line 598
    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->mTimeInterleaveMode:I

    .line 599
    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->mCodeRate:I

    .line 600
    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->mNumOfSegments:I

    .line 602
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;
    .registers 8

    .line 649
    new-instance v6, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iget v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->mModulation:I

    iget v2, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->mTimeInterleaveMode:I

    iget v3, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->mCodeRate:I

    iget v4, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->mNumOfSegments:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;-><init>(IIIILandroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings-IA;)V

    return-object v6
.end method

.method public setCodeRate(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;
    .registers 2
    .param p1, "codeRate"    # I

    .line 629
    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->mCodeRate:I

    .line 630
    return-object p0
.end method

.method public setModulation(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;
    .registers 2
    .param p1, "modulation"    # I

    .line 611
    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->mModulation:I

    .line 612
    return-object p0
.end method

.method public setNumberOfSegments(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;
    .registers 2
    .param p1, "numOfSegments"    # I

    .line 640
    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->mNumOfSegments:I

    .line 641
    return-object p0
.end method

.method public setTimeInterleaveMode(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;
    .registers 2
    .param p1, "mode"    # I

    .line 621
    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->mTimeInterleaveMode:I

    .line 622
    return-object p0
.end method
