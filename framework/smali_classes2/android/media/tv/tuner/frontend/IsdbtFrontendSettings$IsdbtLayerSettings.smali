.class public final Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;
.super Ljava/lang/Object;
.source "IsdbtFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsdbtLayerSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;
    }
.end annotation


# instance fields
.field private final mCodeRate:I

.field private final mModulation:I

.field private final mNumOfSegments:I

.field private final mTimeInterleaveMode:I


# direct methods
.method private constructor <init>(IIII)V
    .registers 5
    .param p1, "modulation"    # I
    .param p2, "timeInterleaveMode"    # I
    .param p3, "codeRate"    # I
    .param p4, "numOfSegments"    # I

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->mModulation:I

    .line 551
    iput p2, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->mTimeInterleaveMode:I

    .line 552
    iput p3, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->mCodeRate:I

    .line 553
    iput p4, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->mNumOfSegments:I

    .line 554
    return-void
.end method

.method synthetic constructor <init>(IIIILandroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;-><init>(IIII)V

    return-void
.end method

.method public static builder()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;
    .registers 2

    .line 590
    new-instance v0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public getCodeRate()I
    .registers 2

    .line 575
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->mCodeRate:I

    return v0
.end method

.method public getModulation()I
    .registers 2

    .line 561
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->mModulation:I

    return v0
.end method

.method public getNumberOfSegments()I
    .registers 2

    .line 582
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->mNumOfSegments:I

    return v0
.end method

.method public getTimeInterleaveMode()I
    .registers 2

    .line 568
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->mTimeInterleaveMode:I

    return v0
.end method
