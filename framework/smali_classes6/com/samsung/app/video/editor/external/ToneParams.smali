.class public Lcom/samsung/app/video/editor/external/ToneParams;
.super Ljava/lang/Object;
.source "ToneParams.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mBrightness:I

.field private mContrast:I

.field private mDefinition:I

.field private mExposure:I

.field private mHighlight:I

.field private mSaturation:I

.field private mShadow:I

.field private mSharpness:I

.field private mTint:I

.field private mWBTemperature:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrightness()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mBrightness:I

    return v0
.end method

.method public getContrast()I
    .registers 2

    .line 36
    iget v0, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mContrast:I

    return v0
.end method

.method public getDefinition()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mDefinition:I

    return v0
.end method

.method public getExposure()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mExposure:I

    return v0
.end method

.method public getHighlight()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mHighlight:I

    return v0
.end method

.method public getSaturation()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mSaturation:I

    return v0
.end method

.method public getShadow()I
    .registers 2

    .line 76
    iget v0, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mShadow:I

    return v0
.end method

.method public getSharpness()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mSharpness:I

    return v0
.end method

.method public getTint()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mTint:I

    return v0
.end method

.method public getWBTemperature()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mWBTemperature:I

    return v0
.end method

.method public getmBrightness()I
    .registers 2

    .line 98
    iget v0, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mBrightness:I

    return v0
.end method

.method public getmContrast()I
    .registers 2

    .line 114
    iget v0, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mContrast:I

    return v0
.end method

.method public getmExposure()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mExposure:I

    return v0
.end method

.method public getmHighlight()I
    .registers 2

    .line 146
    iget v0, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mHighlight:I

    return v0
.end method

.method public getmSaturation()I
    .registers 2

    .line 122
    iget v0, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mSaturation:I

    return v0
.end method

.method public getmShadow()I
    .registers 2

    .line 154
    iget v0, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mShadow:I

    return v0
.end method

.method public getmTint()I
    .registers 2

    .line 138
    iget v0, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mTint:I

    return v0
.end method

.method public getmWBTemperature()I
    .registers 2

    .line 130
    iget v0, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mWBTemperature:I

    return v0
.end method

.method public setBrightness(I)V
    .registers 2
    .param p1, "brightness"    # I

    .line 24
    iput p1, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mBrightness:I

    .line 25
    return-void
.end method

.method public setContrast(I)V
    .registers 2
    .param p1, "contrast"    # I

    .line 40
    iput p1, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mContrast:I

    .line 41
    return-void
.end method

.method public setDefinition(I)V
    .registers 2
    .param p1, "definition"    # I

    .line 93
    iput p1, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mDefinition:I

    return-void
.end method

.method public setExposure(I)V
    .registers 2
    .param p1, "exposure"    # I

    .line 32
    iput p1, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mExposure:I

    .line 33
    return-void
.end method

.method public setHighlight(I)V
    .registers 2
    .param p1, "highlight"    # I

    .line 72
    iput p1, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mHighlight:I

    .line 73
    return-void
.end method

.method public setSaturation(I)V
    .registers 2
    .param p1, "saturation"    # I

    .line 48
    iput p1, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mSaturation:I

    .line 49
    return-void
.end method

.method public setShadow(I)V
    .registers 2
    .param p1, "shadow"    # I

    .line 80
    iput p1, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mShadow:I

    .line 81
    return-void
.end method

.method public setSharpness(I)V
    .registers 2
    .param p1, "sharpness"    # I

    .line 88
    iput p1, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mSharpness:I

    .line 89
    return-void
.end method

.method public setTint(I)V
    .registers 2
    .param p1, "tint"    # I

    .line 64
    iput p1, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mTint:I

    .line 65
    return-void
.end method

.method public setWBTemperature(I)V
    .registers 2
    .param p1, "WBTemperature"    # I

    .line 56
    iput p1, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mWBTemperature:I

    .line 57
    return-void
.end method

.method public setmBrightness(I)V
    .registers 2
    .param p1, "mBrightness"    # I

    .line 102
    iput p1, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mBrightness:I

    .line 103
    return-void
.end method

.method public setmContrast(I)V
    .registers 2
    .param p1, "mContrast"    # I

    .line 118
    iput p1, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mContrast:I

    .line 119
    return-void
.end method

.method public setmExposure(I)V
    .registers 2
    .param p1, "mExposure"    # I

    .line 110
    iput p1, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mExposure:I

    .line 111
    return-void
.end method

.method public setmHighlight(I)V
    .registers 2
    .param p1, "mHighlight"    # I

    .line 150
    iput p1, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mHighlight:I

    .line 151
    return-void
.end method

.method public setmSaturation(I)V
    .registers 2
    .param p1, "mSaturation"    # I

    .line 126
    iput p1, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mSaturation:I

    .line 127
    return-void
.end method

.method public setmShadow(I)V
    .registers 2
    .param p1, "mShadow"    # I

    .line 158
    iput p1, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mShadow:I

    .line 159
    return-void
.end method

.method public setmTint(I)V
    .registers 2
    .param p1, "mTint"    # I

    .line 142
    iput p1, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mTint:I

    .line 143
    return-void
.end method

.method public setmWBTemperature(I)V
    .registers 2
    .param p1, "mWBTemperature"    # I

    .line 134
    iput p1, p0, Lcom/samsung/app/video/editor/external/ToneParams;->mWBTemperature:I

    .line 135
    return-void
.end method
