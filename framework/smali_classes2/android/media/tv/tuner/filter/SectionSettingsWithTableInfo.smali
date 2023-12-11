.class public Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;
.super Landroid/media/tv/tuner/filter/SectionSettings;
.source "SectionSettingsWithTableInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;
    }
.end annotation


# static fields
.field public static final INVALID_TABLE_INFO_VERSION:I = -0x1


# instance fields
.field private final mTableId:I

.field private final mVersion:I


# direct methods
.method private constructor <init>(IZZZIII)V
    .registers 8
    .param p1, "mainType"    # I
    .param p2, "isCheckCrc"    # Z
    .param p3, "isRepeat"    # Z
    .param p4, "isRaw"    # Z
    .param p5, "bitWidthOfLengthField"    # I
    .param p6, "tableId"    # I
    .param p7, "version"    # I

    .line 41
    invoke-direct/range {p0 .. p5}, Landroid/media/tv/tuner/filter/SectionSettings;-><init>(IZZZI)V

    .line 42
    iput p6, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;->mTableId:I

    .line 43
    iput p7, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;->mVersion:I

    .line 44
    return-void
.end method

.method synthetic constructor <init>(IZZZIIILandroid/media/tv/tuner/filter/SectionSettingsWithTableInfo-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;-><init>(IZZZIII)V

    return-void
.end method

.method public static builder(I)Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;
    .registers 3
    .param p0, "mainType"    # I

    .line 66
    new-instance v0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;-><init>(ILandroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public getTableId()I
    .registers 2

    .line 50
    iget v0, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;->mTableId:I

    return v0
.end method

.method public getVersion()I
    .registers 2

    .line 56
    iget v0, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;->mVersion:I

    return v0
.end method
