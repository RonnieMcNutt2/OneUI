.class public Landroid/media/tv/tuner/filter/RecordSettings$Builder;
.super Ljava/lang/Object;
.source "RecordSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/RecordSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mMainType:I

.field private mScIndexMask:I

.field private mScIndexType:I

.field private mTsIndexMask:I


# direct methods
.method private constructor <init>(I)V
    .registers 2
    .param p1, "mainType"    # I

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput p1, p0, Landroid/media/tv/tuner/filter/RecordSettings$Builder;->mMainType:I

    .line 391
    return-void
.end method

.method synthetic constructor <init>(ILandroid/media/tv/tuner/filter/RecordSettings$Builder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/RecordSettings$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/filter/RecordSettings;
    .registers 8

    .line 423
    new-instance v6, Landroid/media/tv/tuner/filter/RecordSettings;

    iget v1, p0, Landroid/media/tv/tuner/filter/RecordSettings$Builder;->mMainType:I

    iget v2, p0, Landroid/media/tv/tuner/filter/RecordSettings$Builder;->mTsIndexMask:I

    iget v3, p0, Landroid/media/tv/tuner/filter/RecordSettings$Builder;->mScIndexType:I

    iget v4, p0, Landroid/media/tv/tuner/filter/RecordSettings$Builder;->mScIndexMask:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/tuner/filter/RecordSettings;-><init>(IIIILandroid/media/tv/tuner/filter/RecordSettings-IA;)V

    return-object v6
.end method

.method public setScIndexMask(I)Landroid/media/tv/tuner/filter/RecordSettings$Builder;
    .registers 2
    .param p1, "indexMask"    # I

    .line 414
    iput p1, p0, Landroid/media/tv/tuner/filter/RecordSettings$Builder;->mScIndexMask:I

    .line 415
    return-object p0
.end method

.method public setScIndexType(I)Landroid/media/tv/tuner/filter/RecordSettings$Builder;
    .registers 2
    .param p1, "indexType"    # I

    .line 406
    iput p1, p0, Landroid/media/tv/tuner/filter/RecordSettings$Builder;->mScIndexType:I

    .line 407
    return-object p0
.end method

.method public setTsIndexMask(I)Landroid/media/tv/tuner/filter/RecordSettings$Builder;
    .registers 2
    .param p1, "indexMask"    # I

    .line 398
    iput p1, p0, Landroid/media/tv/tuner/filter/RecordSettings$Builder;->mTsIndexMask:I

    .line 399
    return-object p0
.end method
