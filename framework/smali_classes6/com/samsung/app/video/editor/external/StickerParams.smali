.class public Lcom/samsung/app/video/editor/external/StickerParams;
.super Ljava/lang/Object;
.source "StickerParams.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private Filepath:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private clipart_height:I

.field private clipart_width:I

.field private clipart_x_pos:I

.field private clipart_y_pos:I

.field private fileType:I

.field private frameRate:I

.field private mAnimationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/TextAnimationData;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultAlpha:F

.field private mDefaultRotateX:F

.field private mDefaultRotateY:F

.field private mDefaultRotateZ:F

.field private mDefaultScale:F

.field private mDefaultTranslateX:F

.field private mDefaultTranslateY:F

.field private mElementEndTime:I

.field private mElementStartTime:I

.field private mFileType:Lcom/samsung/app/video/editor/external/StickerFileType;

.field private mOrderLayer:I

.field private mPivotX:F

.field private mPivotY:F

.field private mScaleFactor:F

.field private mStoryboardEndFrame:I

.field private mStoryboardEndTime:I

.field private mStoryboardStartFrame:I

.field private mStoryboardStartTime:I

.field private mTransX:F

.field private mTransY:F

.field private numOfFrames:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mTransX:F

    .line 59
    iput v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mTransY:F

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mScaleFactor:F

    .line 63
    const-string v1, "StickerParams"

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->TAG:Ljava/lang/String;

    .line 76
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mAnimationList:Ljava/util/List;

    .line 77
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultTranslateX:F

    .line 78
    iput v1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultTranslateY:F

    .line 79
    iput v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultAlpha:F

    .line 80
    iput v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultScale:F

    .line 81
    iput v1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateX:F

    .line 82
    iput v1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateY:F

    .line 83
    iput v1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateZ:F

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/samsung/app/video/editor/external/StickerParams;)V
    .registers 3
    .param p1, "gifParam"    # Lcom/samsung/app/video/editor/external/StickerParams;

    .line 92
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/StickerParams;-><init>()V

    .line 93
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/samsung/app/video/editor/external/StickerParams;->makeCopy(Lcom/samsung/app/video/editor/external/StickerParams;Lcom/samsung/app/video/editor/external/StickerParams;Z)V

    .line 94
    return-void
.end method

.method private static makeCopy(Lcom/samsung/app/video/editor/external/StickerParams;Lcom/samsung/app/video/editor/external/StickerParams;Z)V
    .registers 8
    .param p0, "orgParams"    # Lcom/samsung/app/video/editor/external/StickerParams;
    .param p1, "newParams"    # Lcom/samsung/app/video/editor/external/StickerParams;
    .param p2, "deepCopy"    # Z

    .line 103
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->clipart_height:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->clipart_height:I

    .line 104
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->clipart_width:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->clipart_width:I

    .line 105
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->clipart_x_pos:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->clipart_x_pos:I

    .line 106
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->clipart_y_pos:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->clipart_y_pos:I

    .line 108
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultTranslateX:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultTranslateX:F

    .line 109
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultTranslateY:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultTranslateY:F

    .line 110
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultAlpha:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultAlpha:F

    .line 111
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultScale:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultScale:F

    .line 112
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mPivotX:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mPivotX:F

    .line 113
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mPivotY:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mPivotY:F

    .line 115
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateX:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateX:F

    .line 116
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateY:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateY:F

    .line 117
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateZ:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateZ:F

    .line 119
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mStoryboardStartFrame:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mStoryboardStartFrame:I

    .line 120
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mStoryboardEndFrame:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mStoryboardEndFrame:I

    .line 122
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->numOfFrames:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->numOfFrames:I

    .line 123
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->fileType:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->fileType:I

    .line 124
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->frameRate:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->frameRate:I

    .line 125
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mAnimationList:Ljava/util/List;

    if-eqz v0, :cond_71

    .line 126
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mAnimationList:Ljava/util/List;

    .line 127
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mAnimationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 128
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5a
    if-ge v1, v0, :cond_71

    .line 129
    iget-object v2, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mAnimationList:Ljava/util/List;

    new-instance v3, Lcom/samsung/app/video/editor/external/TextAnimationData;

    iget-object v4, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mAnimationList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/TextAnimationData;

    invoke-direct {v3, v4}, Lcom/samsung/app/video/editor/external/TextAnimationData;-><init>(Lcom/samsung/app/video/editor/external/TextAnimationData;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 132
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_71
    if-nez p2, :cond_77

    .line 133
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->Filepath:Ljava/lang/String;

    iput-object v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->Filepath:Ljava/lang/String;

    .line 135
    :cond_77
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mOrderLayer:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mOrderLayer:I

    .line 136
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mTransX:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mTransX:F

    .line 137
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mTransY:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mTransY:F

    .line 138
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mScaleFactor:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mScaleFactor:F

    .line 140
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mStoryboardStartTime:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mStoryboardStartTime:I

    .line 141
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mStoryboardEndTime:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mStoryboardEndTime:I

    .line 142
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mElementStartTime:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mElementStartTime:I

    .line 143
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mElementEndTime:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/StickerParams;->mElementEndTime:I

    .line 144
    return-void
.end method


# virtual methods
.method public addAnimation(Lcom/samsung/app/video/editor/external/TextAnimationData;)V
    .registers 3
    .param p1, "animationData"    # Lcom/samsung/app/video/editor/external/TextAnimationData;

    .line 303
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mAnimationList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 304
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mAnimationList:Ljava/util/List;

    .line 305
    :cond_b
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mAnimationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method public getAnimationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/TextAnimationData;",
            ">;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mAnimationList:Ljava/util/List;

    return-object v0
.end method

.method public getClipartHeight()I
    .registers 2

    .line 216
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->clipart_height:I

    return v0
.end method

.method public getClipartWidth()I
    .registers 2

    .line 220
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->clipart_width:I

    return v0
.end method

.method public getClipartXPosition()I
    .registers 2

    .line 224
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->clipart_x_pos:I

    return v0
.end method

.method public getClipartYPosition()I
    .registers 2

    .line 228
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->clipart_y_pos:I

    return v0
.end method

.method public getDefaultAlpha()F
    .registers 2

    .line 246
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultAlpha:F

    return v0
.end method

.method public getDefaultRotate()F
    .registers 2

    .line 441
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateZ:F

    return v0
.end method

.method public getDefaultRotateX()F
    .registers 2

    .line 262
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateX:F

    return v0
.end method

.method public getDefaultRotateY()F
    .registers 2

    .line 270
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateY:F

    return v0
.end method

.method public getDefaultRotateZ()F
    .registers 2

    .line 278
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateZ:F

    return v0
.end method

.method public getDefaultScale()F
    .registers 2

    .line 254
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultScale:F

    return v0
.end method

.method public getDefaultTranslateX()F
    .registers 2

    .line 238
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultTranslateX:F

    return v0
.end method

.method public getDefaultTranslateY()F
    .registers 2

    .line 242
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultTranslateY:F

    return v0
.end method

.method public getElementEndTime()I
    .registers 2

    .line 390
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mElementEndTime:I

    return v0
.end method

.method public getElementStartTime()I
    .registers 2

    .line 376
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mElementStartTime:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->Filepath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Lcom/samsung/app/video/editor/external/StickerFileType;
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mFileType:Lcom/samsung/app/video/editor/external/StickerFileType;

    return-object v0
.end method

.method public getFrameRate()I
    .registers 2

    .line 360
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->frameRate:I

    return v0
.end method

.method public getNumOfFrames()I
    .registers 2

    .line 356
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->numOfFrames:I

    return v0
.end method

.method public getOrderLayer()I
    .registers 2

    .line 369
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mOrderLayer:I

    return v0
.end method

.method public getPivotX()F
    .registers 2

    .line 291
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mPivotX:F

    return v0
.end method

.method public getPivotY()F
    .registers 2

    .line 295
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mPivotY:F

    return v0
.end method

.method public getStoryBoardEndTime()I
    .registers 2

    .line 419
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mStoryboardEndTime:I

    return v0
.end method

.method public getStoryBoardStartTime()I
    .registers 2

    .line 405
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mStoryboardStartTime:I

    return v0
.end method

.method public getStoryboardEndFrame()I
    .registers 2

    .line 202
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mStoryboardEndFrame:I

    return v0
.end method

.method public getStoryboardStartFrame()I
    .registers 2

    .line 188
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mStoryboardStartFrame:I

    return v0
.end method

.method public setClipartPosition(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 211
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->clipart_x_pos:I

    .line 212
    iput p2, p0, Lcom/samsung/app/video/editor/external/StickerParams;->clipart_y_pos:I

    .line 213
    return-void
.end method

.method public setClipartSize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 206
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->clipart_width:I

    .line 207
    iput p2, p0, Lcom/samsung/app/video/editor/external/StickerParams;->clipart_height:I

    .line 208
    return-void
.end method

.method public setDefaultAlpha(F)V
    .registers 2
    .param p1, "defaultAlpha"    # F

    .line 250
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultAlpha:F

    .line 251
    return-void
.end method

.method public setDefaultRotate(F)V
    .registers 2
    .param p1, "defaultRotate"    # F

    .line 445
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateZ:F

    .line 446
    return-void
.end method

.method public setDefaultRotateX(F)V
    .registers 2
    .param p1, "defaultRotateX"    # F

    .line 266
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateX:F

    .line 267
    return-void
.end method

.method public setDefaultRotateY(F)V
    .registers 2
    .param p1, "defaultRotateY"    # F

    .line 274
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateY:F

    .line 275
    return-void
.end method

.method public setDefaultRotateZ(F)V
    .registers 2
    .param p1, "defaultRotateZ"    # F

    .line 282
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateZ:F

    .line 283
    return-void
.end method

.method public setDefaultScale(F)V
    .registers 2
    .param p1, "defaultScale"    # F

    .line 258
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultScale:F

    .line 259
    return-void
.end method

.method public setDefaultTransformations(FFFFFFF)V
    .registers 8
    .param p1, "alpha"    # F
    .param p2, "scale"    # F
    .param p3, "translateX"    # F
    .param p4, "translateY"    # F
    .param p5, "rotate"    # F
    .param p6, "pivotX"    # F
    .param p7, "pivotY"    # F

    .line 431
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultAlpha:F

    .line 432
    iput p5, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateZ:F

    .line 433
    iput p2, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultScale:F

    .line 434
    iput p3, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultTranslateX:F

    .line 435
    iput p4, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultTranslateY:F

    .line 436
    iput p6, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mPivotX:F

    .line 437
    iput p7, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mPivotY:F

    .line 438
    return-void
.end method

.method public setDefaultTransformations(FFFFFFFFF)V
    .registers 10
    .param p1, "alpha"    # F
    .param p2, "scale"    # F
    .param p3, "translateX"    # F
    .param p4, "translateY"    # F
    .param p5, "rotateX"    # F
    .param p6, "rotateY"    # F
    .param p7, "rotateZ"    # F
    .param p8, "pivotX"    # F
    .param p9, "pivotY"    # F

    .line 166
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultAlpha:F

    .line 167
    iput p2, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultScale:F

    .line 168
    iput p3, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultTranslateX:F

    .line 169
    iput p4, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultTranslateY:F

    .line 170
    iput p8, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mPivotX:F

    .line 171
    iput p9, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mPivotY:F

    .line 172
    iput p5, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateX:F

    .line 173
    iput p6, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateY:F

    .line 174
    iput p7, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultRotateZ:F

    .line 175
    return-void
.end method

.method public setDefaultTranslate(FF)V
    .registers 3
    .param p1, "defaultTranslateX"    # F
    .param p2, "defaultTranslateY"    # F

    .line 233
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultTranslateX:F

    .line 234
    iput p2, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mDefaultTranslateY:F

    .line 235
    return-void
.end method

.method public setElementEndTime(I)V
    .registers 2
    .param p1, "elementEndTime"    # I

    .line 397
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mElementEndTime:I

    .line 398
    return-void
.end method

.method public setElementStartTime(I)V
    .registers 2
    .param p1, "elementStartTime"    # I

    .line 383
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mElementStartTime:I

    .line 384
    return-void
.end method

.method public setFileType(Lcom/samsung/app/video/editor/external/StickerFileType;)V
    .registers 3
    .param p1, "fileType"    # Lcom/samsung/app/video/editor/external/StickerFileType;

    .line 331
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mFileType:Lcom/samsung/app/video/editor/external/StickerFileType;

    .line 332
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/StickerFileType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->fileType:I

    .line 333
    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .registers 2
    .param p1, "filepath"    # Ljava/lang/String;

    .line 320
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->Filepath:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setFrameRate(I)V
    .registers 2
    .param p1, "framerate"    # I

    .line 347
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->frameRate:I

    .line 349
    return-void
.end method

.method public setNumOfFrames(I)V
    .registers 2
    .param p1, "numOfFrames"    # I

    .line 336
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->numOfFrames:I

    .line 337
    return-void
.end method

.method public setOrderLayer(I)V
    .registers 5
    .param p1, "orderLayer"    # I

    .line 364
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/StickerParams;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrderLayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mOrderLayer:I

    .line 366
    return-void
.end method

.method public setPivot(FF)V
    .registers 3
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F

    .line 286
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mPivotX:F

    .line 287
    iput p2, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mPivotY:F

    .line 288
    return-void
.end method

.method public setStoryBoardEndTime(I)V
    .registers 2
    .param p1, "storyBoardEndTime"    # I

    .line 426
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mStoryboardEndTime:I

    .line 427
    return-void
.end method

.method public setStoryBoardStartTime(I)V
    .registers 2
    .param p1, "storyBoardStartTime"    # I

    .line 412
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mStoryboardStartTime:I

    .line 413
    return-void
.end method

.method public setStoryboardEndFrame(I)V
    .registers 2
    .param p1, "endFrame"    # I

    .line 195
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mStoryboardEndFrame:I

    .line 196
    return-void
.end method

.method public setStoryboardStartFrame(I)V
    .registers 2
    .param p1, "startFrame"    # I

    .line 181
    iput p1, p0, Lcom/samsung/app/video/editor/external/StickerParams;->mStoryboardStartFrame:I

    .line 182
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 149
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa4

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 150
    .local v0, "strBuf":Ljava/lang/StringBuffer;
    const-string v1, "StickerParams: ----->\nclipart_width: 10\nclipart_height: 10\nitext_start_time: 0\nitext_end_time: 90\nstoryboardStartTime: 100\nstoryboardEndTime: 100\nFilepath: filepath\n<---------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
