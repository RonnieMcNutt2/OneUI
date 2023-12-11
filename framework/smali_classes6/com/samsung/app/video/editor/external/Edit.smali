.class public Lcom/samsung/app/video/editor/external/Edit;
.super Ljava/lang/Object;
.source "Edit.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_DURATION:I = 0x3e8

.field private static final DEFAULT_VOLUME:I = 0x64

.field private static final serialVersionUID:J = 0x5e7164b734f8bfdL


# instance fields
.field private blur_intensity:F

.field private dim_opacity:F

.field private effectEndTime:I

.field private effectStartTime:I

.field private effectSubType:I

.field private end_frame_x1:I

.field private end_frame_x2:I

.field private end_frame_y1:I

.field private end_frame_y2:I

.field private kenburnParams:Lcom/samsung/app/video/editor/external/InterpolationParams;

.field private lutInfo:Lcom/samsung/app/video/editor/external/LUTInfo;

.field private mEffectSubType:Lcom/samsung/app/video/editor/external/EffectSubType;

.field private mInterpolation:I

.field private mSubType:Lcom/samsung/app/video/editor/external/EditSubType;

.field private mType:Lcom/samsung/app/video/editor/external/EditType;

.field private opacityFrom:F

.field private opacityTo:F

.field private position_frame_x1:I

.field private position_frame_x2:I

.field private position_frame_y1:I

.field private position_frame_y2:I

.field private ref_frame_x1:I

.field private ref_frame_x2:I

.field private ref_frame_y1:I

.field private ref_frame_y2:I

.field private resourceFileName:Ljava/lang/String;

.field private start_frame_x1:I

.field private start_frame_x2:I

.field private start_frame_y1:I

.field private start_frame_y2:I

.field private subType:I

.field private trans_duration:I

.field private transitionParams:Lcom/samsung/app/video/editor/external/TransitionParams;

.field private type:I

.field private volumeLevel:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/samsung/app/video/editor/external/EditType;->NONE:Lcom/samsung/app/video/editor/external/EditType;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Edit;->mType:Lcom/samsung/app/video/editor/external/EditType;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->mInterpolation:I

    .line 75
    sget-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Edit;->mSubType:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 77
    sget-object v0, Lcom/samsung/app/video/editor/external/EffectSubType;->NONE:Lcom/samsung/app/video/editor/external/EffectSubType;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Edit;->mEffectSubType:Lcom/samsung/app/video/editor/external/EffectSubType;

    .line 83
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->volumeLevel:I

    .line 88
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->opacityFrom:F

    .line 89
    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->opacityTo:F

    .line 92
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->trans_duration:I

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V
    .registers 6
    .param p1, "type"    # Lcom/samsung/app/video/editor/external/EditType;
    .param p2, "subType"    # Lcom/samsung/app/video/editor/external/EditSubType;
    .param p3, "startTime"    # I
    .param p4, "endTime"    # I

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/samsung/app/video/editor/external/EditType;->NONE:Lcom/samsung/app/video/editor/external/EditType;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Edit;->mType:Lcom/samsung/app/video/editor/external/EditType;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->mInterpolation:I

    .line 75
    sget-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Edit;->mSubType:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 77
    sget-object v0, Lcom/samsung/app/video/editor/external/EffectSubType;->NONE:Lcom/samsung/app/video/editor/external/EffectSubType;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Edit;->mEffectSubType:Lcom/samsung/app/video/editor/external/EffectSubType;

    .line 83
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->volumeLevel:I

    .line 88
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->opacityFrom:F

    .line 89
    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->opacityTo:F

    .line 92
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->trans_duration:I

    .line 142
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/EditType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->type:I

    .line 143
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Edit;->mType:Lcom/samsung/app/video/editor/external/EditType;

    .line 144
    invoke-virtual {p2}, Lcom/samsung/app/video/editor/external/EditSubType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->subType:I

    .line 145
    iput-object p2, p0, Lcom/samsung/app/video/editor/external/Edit;->mSubType:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 146
    iput p3, p0, Lcom/samsung/app/video/editor/external/Edit;->effectStartTime:I

    .line 147
    iput p4, p0, Lcom/samsung/app/video/editor/external/Edit;->effectEndTime:I

    .line 148
    return-void
.end method


# virtual methods
.method copy()Lcom/samsung/app/video/editor/external/Edit;
    .registers 3

    .line 23
    new-instance v0, Lcom/samsung/app/video/editor/external/Edit;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/Edit;-><init>()V

    .line 24
    .local v0, "eCopy":Lcom/samsung/app/video/editor/external/Edit;
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->type:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->type:I

    .line 25
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Edit;->mType:Lcom/samsung/app/video/editor/external/EditType;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Edit;->mType:Lcom/samsung/app/video/editor/external/EditType;

    .line 26
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->subType:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->subType:I

    .line 27
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Edit;->mSubType:Lcom/samsung/app/video/editor/external/EditSubType;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Edit;->mSubType:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 28
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->effectSubType:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->effectSubType:I

    .line 29
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Edit;->mEffectSubType:Lcom/samsung/app/video/editor/external/EffectSubType;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Edit;->mEffectSubType:Lcom/samsung/app/video/editor/external/EffectSubType;

    .line 30
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Edit;->resourceFileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Edit;->resourceFileName:Ljava/lang/String;

    .line 31
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->volumeLevel:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->volumeLevel:I

    .line 32
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->effectStartTime:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->effectStartTime:I

    .line 33
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->effectEndTime:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->effectEndTime:I

    .line 34
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->opacityFrom:F

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->opacityFrom:F

    .line 35
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->opacityTo:F

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->opacityTo:F

    .line 36
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->trans_duration:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->trans_duration:I

    .line 37
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->blur_intensity:F

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->blur_intensity:F

    .line 38
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->dim_opacity:F

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->dim_opacity:F

    .line 39
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->ref_frame_x1:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->ref_frame_x1:I

    .line 40
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->ref_frame_y1:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->ref_frame_y1:I

    .line 41
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->ref_frame_x2:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->ref_frame_x2:I

    .line 42
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->ref_frame_y2:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->ref_frame_y2:I

    .line 43
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->start_frame_x1:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->start_frame_x1:I

    .line 44
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->start_frame_y1:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->start_frame_y1:I

    .line 45
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->start_frame_x2:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->start_frame_x2:I

    .line 46
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->start_frame_y2:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->start_frame_y2:I

    .line 47
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->end_frame_x1:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->end_frame_x1:I

    .line 48
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->end_frame_y1:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->end_frame_y1:I

    .line 49
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->end_frame_x2:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->end_frame_x2:I

    .line 50
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->end_frame_y2:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->end_frame_y2:I

    .line 51
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->position_frame_x1:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->position_frame_x1:I

    .line 52
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->position_frame_y1:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->position_frame_y1:I

    .line 53
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->position_frame_x2:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->position_frame_x2:I

    .line 54
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->position_frame_y2:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->position_frame_y2:I

    .line 55
    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->mInterpolation:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Edit;->mInterpolation:I

    .line 56
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Edit;->lutInfo:Lcom/samsung/app/video/editor/external/LUTInfo;

    if-eqz v1, :cond_8f

    .line 57
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/LUTInfo;->copy()Lcom/samsung/app/video/editor/external/LUTInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Edit;->lutInfo:Lcom/samsung/app/video/editor/external/LUTInfo;

    .line 59
    :cond_8f
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Edit;->kenburnParams:Lcom/samsung/app/video/editor/external/InterpolationParams;

    if-eqz v1, :cond_99

    .line 61
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/InterpolationParams;->copy()Lcom/samsung/app/video/editor/external/InterpolationParams;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Edit;->kenburnParams:Lcom/samsung/app/video/editor/external/InterpolationParams;

    .line 63
    :cond_99
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Edit;->transitionParams:Lcom/samsung/app/video/editor/external/TransitionParams;

    if-eqz v1, :cond_a3

    .line 64
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TransitionParams;->copy()Lcom/samsung/app/video/editor/external/TransitionParams;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Edit;->transitionParams:Lcom/samsung/app/video/editor/external/TransitionParams;

    .line 66
    :cond_a3
    return-object v0
.end method

.method public getBlur_intensity()F
    .registers 2

    .line 128
    iget v0, p0, Lcom/samsung/app/video/editor/external/Edit;->blur_intensity:F

    return v0
.end method

.method public getDim_opacity()F
    .registers 2

    .line 120
    iget v0, p0, Lcom/samsung/app/video/editor/external/Edit;->dim_opacity:F

    return v0
.end method

.method public getEffectEndTime()I
    .registers 2

    .line 311
    iget v0, p0, Lcom/samsung/app/video/editor/external/Edit;->effectEndTime:I

    return v0
.end method

.method public getEffectResourceFile()Ljava/lang/String;
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Edit;->resourceFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectStartTime()I
    .registers 2

    .line 318
    iget v0, p0, Lcom/samsung/app/video/editor/external/Edit;->effectStartTime:I

    return v0
.end method

.method public getEffectSubType()Lcom/samsung/app/video/editor/external/EffectSubType;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Edit;->mEffectSubType:Lcom/samsung/app/video/editor/external/EffectSubType;

    return-object v0
.end method

.method public getEndRect()Landroid/graphics/RectF;
    .registers 6

    .line 279
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->end_frame_x1:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/app/video/editor/external/Edit;->end_frame_y1:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/app/video/editor/external/Edit;->end_frame_x2:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/app/video/editor/external/Edit;->end_frame_y2:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getKenburnParams()Lcom/samsung/app/video/editor/external/InterpolationParams;
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Edit;->kenburnParams:Lcom/samsung/app/video/editor/external/InterpolationParams;

    return-object v0
.end method

.method public getLutInfo()Lcom/samsung/app/video/editor/external/LUTInfo;
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Edit;->lutInfo:Lcom/samsung/app/video/editor/external/LUTInfo;

    return-object v0
.end method

.method public getPositionRect()Landroid/graphics/RectF;
    .registers 6

    .line 283
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->position_frame_x1:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/app/video/editor/external/Edit;->position_frame_y1:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/app/video/editor/external/Edit;->position_frame_x2:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/app/video/editor/external/Edit;->position_frame_y2:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getRefRect()Landroid/graphics/RectF;
    .registers 6

    .line 275
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->ref_frame_x1:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/app/video/editor/external/Edit;->ref_frame_y1:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/app/video/editor/external/Edit;->ref_frame_x2:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/app/video/editor/external/Edit;->ref_frame_y2:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getStartRect()Landroid/graphics/RectF;
    .registers 6

    .line 270
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/app/video/editor/external/Edit;->start_frame_x1:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/app/video/editor/external/Edit;->start_frame_y1:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/app/video/editor/external/Edit;->start_frame_x2:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/app/video/editor/external/Edit;->start_frame_y2:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getSubType()Lcom/samsung/app/video/editor/external/EditSubType;
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Edit;->mSubType:Lcom/samsung/app/video/editor/external/EditSubType;

    return-object v0
.end method

.method public getTrans_duration()I
    .registers 2

    .line 325
    iget v0, p0, Lcom/samsung/app/video/editor/external/Edit;->trans_duration:I

    return v0
.end method

.method public getTransitionParams()Lcom/samsung/app/video/editor/external/TransitionParams;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Edit;->transitionParams:Lcom/samsung/app/video/editor/external/TransitionParams;

    return-object v0
.end method

.method public getType()Lcom/samsung/app/video/editor/external/EditType;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Edit;->mType:Lcom/samsung/app/video/editor/external/EditType;

    return-object v0
.end method

.method public getVolumeLevel()I
    .registers 2

    .line 332
    iget v0, p0, Lcom/samsung/app/video/editor/external/Edit;->volumeLevel:I

    return v0
.end method

.method public setBlur_intensity(F)V
    .registers 2
    .param p1, "blur_intensity"    # F

    .line 132
    iput p1, p0, Lcom/samsung/app/video/editor/external/Edit;->blur_intensity:F

    .line 133
    return-void
.end method

.method public setDim_opacity(F)V
    .registers 2
    .param p1, "dim_opacity"    # F

    .line 124
    iput p1, p0, Lcom/samsung/app/video/editor/external/Edit;->dim_opacity:F

    .line 125
    return-void
.end method

.method public setEffectEndTime(I)Z
    .registers 3
    .param p1, "effectEndTime"    # I

    .line 350
    if-gez p1, :cond_4

    .line 351
    const/4 v0, 0x0

    return v0

    .line 352
    :cond_4
    iput p1, p0, Lcom/samsung/app/video/editor/external/Edit;->effectEndTime:I

    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public setEffectResourceFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "resourceFileName"    # Ljava/lang/String;

    .line 340
    if-nez p1, :cond_4

    .line 341
    const/4 v0, 0x0

    return v0

    .line 342
    :cond_4
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Edit;->resourceFileName:Ljava/lang/String;

    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public setEffectStartTime(I)Z
    .registers 3
    .param p1, "effectStartTime"    # I

    .line 360
    if-gez p1, :cond_4

    .line 361
    const/4 v0, 0x0

    return v0

    .line 362
    :cond_4
    iput p1, p0, Lcom/samsung/app/video/editor/external/Edit;->effectStartTime:I

    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public setEffectSubType(Lcom/samsung/app/video/editor/external/EffectSubType;)Z
    .registers 3
    .param p1, "effectSubType"    # Lcom/samsung/app/video/editor/external/EffectSubType;

    .line 193
    if-nez p1, :cond_4

    .line 194
    const/4 v0, 0x0

    return v0

    .line 195
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/EffectSubType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->effectSubType:I

    .line 196
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Edit;->mEffectSubType:Lcom/samsung/app/video/editor/external/EffectSubType;

    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public setKenburnParams(Lcom/samsung/app/video/editor/external/InterpolationParams;)V
    .registers 2
    .param p1, "kenburnParams"    # Lcom/samsung/app/video/editor/external/InterpolationParams;

    .line 175
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Edit;->kenburnParams:Lcom/samsung/app/video/editor/external/InterpolationParams;

    .line 176
    return-void
.end method

.method public setKenburns(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 6
    .param p1, "ref"    # Landroid/graphics/RectF;
    .param p2, "start"    # Landroid/graphics/RectF;
    .param p3, "end"    # Landroid/graphics/RectF;
    .param p4, "pos"    # Landroid/graphics/RectF;

    .line 245
    if-eqz p1, :cond_5b

    if-eqz p2, :cond_5b

    if-eqz p3, :cond_5b

    if-nez p4, :cond_9

    goto :goto_5b

    .line 247
    :cond_9
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->ref_frame_x1:I

    .line 248
    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->ref_frame_y1:I

    .line 249
    iget v0, p1, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->ref_frame_x2:I

    .line 250
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->ref_frame_y2:I

    .line 252
    iget v0, p2, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->start_frame_x1:I

    .line 253
    iget v0, p2, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->start_frame_y1:I

    .line 254
    iget v0, p2, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->start_frame_x2:I

    .line 255
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->start_frame_y2:I

    .line 257
    iget v0, p3, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->end_frame_x1:I

    .line 258
    iget v0, p3, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->end_frame_y1:I

    .line 259
    iget v0, p3, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->end_frame_x2:I

    .line 260
    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->end_frame_y2:I

    .line 262
    iget v0, p4, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->position_frame_x1:I

    .line 263
    iget v0, p4, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->position_frame_y1:I

    .line 264
    iget v0, p4, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->position_frame_x2:I

    .line 265
    iget v0, p4, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->position_frame_y2:I

    .line 266
    const/4 v0, 0x1

    return v0

    .line 246
    :cond_5b
    :goto_5b
    const/4 v0, 0x0

    return v0
.end method

.method public setLutInfo(Lcom/samsung/app/video/editor/external/LUTInfo;)V
    .registers 2
    .param p1, "lutInfo"    # Lcom/samsung/app/video/editor/external/LUTInfo;

    .line 367
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Edit;->lutInfo:Lcom/samsung/app/video/editor/external/LUTInfo;

    .line 368
    return-void
.end method

.method public setOpacity(FF)Z
    .registers 5
    .param p1, "from"    # F
    .param p2, "to"    # F

    .line 219
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_10

    cmpg-float v0, p2, v0

    if-gez v0, :cond_a

    goto :goto_10

    .line 221
    :cond_a
    iput p1, p0, Lcom/samsung/app/video/editor/external/Edit;->opacityFrom:F

    .line 222
    iput p2, p0, Lcom/samsung/app/video/editor/external/Edit;->opacityTo:F

    .line 223
    const/4 v0, 0x1

    return v0

    .line 220
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method public setSubType(Lcom/samsung/app/video/editor/external/EditSubType;)V
    .registers 3
    .param p1, "subType"    # Lcom/samsung/app/video/editor/external/EditSubType;

    .line 184
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Edit;->mSubType:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 185
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/EditSubType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Edit;->subType:I

    .line 186
    return-void
.end method

.method public setTrans_duration(I)Z
    .registers 3
    .param p1, "trans_duration"    # I

    .line 231
    if-gez p1, :cond_4

    .line 232
    const/4 v0, 0x0

    return v0

    .line 233
    :cond_4
    iput p1, p0, Lcom/samsung/app/video/editor/external/Edit;->trans_duration:I

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public setTransitionParams(Lcom/samsung/app/video/editor/external/TransitionParams;)V
    .registers 2
    .param p1, "transitionParams"    # Lcom/samsung/app/video/editor/external/TransitionParams;

    .line 167
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Edit;->transitionParams:Lcom/samsung/app/video/editor/external/TransitionParams;

    .line 168
    return-void
.end method

.method public setVolumeLevel(I)Z
    .registers 3
    .param p1, "volumeLevel"    # I

    .line 206
    if-gez p1, :cond_4

    .line 207
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_4
    iput p1, p0, Lcom/samsung/app/video/editor/external/Edit;->volumeLevel:I

    .line 209
    const/4 v0, 0x1

    return v0
.end method
