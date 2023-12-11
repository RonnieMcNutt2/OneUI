.class public Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;
.super Ljava/lang/Object;
.source "PhotoHdrCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/PhotoHdrCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GainInfo"
.end annotation


# static fields
.field private static BaseRendition:Ljava/lang/String;

.field private static GainMapMax:F

.field private static GainMapMin:F

.field private static Gamma:F

.field private static HDRCapacityMax:F

.field private static HDRCapacityMin:F

.field private static OffsetHDR:F

.field private static OffsetSDR:F

.field private static Version:F


# direct methods
.method public constructor <init>(FFFF)V
    .registers 6
    .param p1, "GainMapMin"    # F
    .param p2, "GainMapMax"    # F
    .param p3, "HDRCapacityMin"    # F
    .param p4, "HDRCapacityMax"    # F

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->Version:F

    .line 114
    sput p1, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->GainMapMin:F

    .line 115
    sput p2, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->GainMapMax:F

    .line 116
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->Gamma:F

    .line 117
    sput v0, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->OffsetSDR:F

    .line 118
    sput v0, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->OffsetHDR:F

    .line 119
    sput p3, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->HDRCapacityMin:F

    .line 120
    sput p4, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->HDRCapacityMax:F

    .line 121
    const-string v0, "SDR"

    sput-object v0, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->BaseRendition:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .registers 8
    .param p1, "GainMapMin"    # F
    .param p2, "GainMapMax"    # F
    .param p3, "OffsetSDR"    # F
    .param p4, "OffsetHDR"    # F
    .param p5, "HDRCapacityMin"    # F
    .param p6, "HDRCapacityMax"    # F

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->Version:F

    .line 125
    sput p1, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->GainMapMin:F

    .line 126
    sput p2, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->GainMapMax:F

    .line 127
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->Gamma:F

    .line 128
    sput p3, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->OffsetSDR:F

    .line 129
    sput p4, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->OffsetHDR:F

    .line 130
    sput p5, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->HDRCapacityMin:F

    .line 131
    sput p6, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->HDRCapacityMax:F

    .line 132
    const-string v0, "SDR"

    sput-object v0, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->BaseRendition:Ljava/lang/String;

    .line 133
    return-void
.end method


# virtual methods
.method public getGainMapMax()F
    .registers 2

    .line 138
    sget v0, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->GainMapMax:F

    return v0
.end method

.method public getGainMapMin()F
    .registers 2

    .line 135
    sget v0, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->GainMapMin:F

    return v0
.end method

.method public getHDRCapacityMax()F
    .registers 2

    .line 144
    sget v0, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->HDRCapacityMax:F

    return v0
.end method

.method public getHDRCapacityMin()F
    .registers 2

    .line 141
    sget v0, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->HDRCapacityMin:F

    return v0
.end method

.method public getOffsetHDR()F
    .registers 2

    .line 150
    sget v0, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->OffsetHDR:F

    return v0
.end method

.method public getOffsetSDR()F
    .registers 2

    .line 147
    sget v0, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->OffsetSDR:F

    return v0
.end method

.method public setGainMapMax(F)V
    .registers 2
    .param p1, "GainMapMax"    # F

    .line 157
    sput p1, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->GainMapMax:F

    .line 158
    return-void
.end method

.method public setGainMapMin(F)V
    .registers 2
    .param p1, "GainMapMin"    # F

    .line 154
    sput p1, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->GainMapMin:F

    .line 155
    return-void
.end method

.method public setHDRCapacityMax(F)V
    .registers 2
    .param p1, "HDRCapacityMax"    # F

    .line 163
    sput p1, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->HDRCapacityMax:F

    .line 164
    return-void
.end method

.method public setHDRCapacityMin(F)V
    .registers 2
    .param p1, "HDRCapacityMin"    # F

    .line 160
    sput p1, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->HDRCapacityMin:F

    .line 161
    return-void
.end method

.method public setOffsetHDR(F)V
    .registers 2
    .param p1, "OffsetHDR"    # F

    .line 169
    sput p1, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->OffsetHDR:F

    .line 170
    return-void
.end method

.method public setOffsetSDR(F)V
    .registers 2
    .param p1, "OffsetSDR"    # F

    .line 166
    sput p1, Lcom/samsung/android/media/PhotoHdrCodec$GainInfo;->OffsetSDR:F

    .line 167
    return-void
.end method
