.class public Lcom/samsung/app/video/editor/external/Element;
.super Ljava/lang/Object;
.source "Element.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/app/video/editor/external/Element$RegionList;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5e7164b789d943dL


# instance fields
.field private ID:I

.field private final TAG:Ljava/lang/String;

.field private Video_Template:I

.field private alphaImageFileName:Ljava/lang/String;

.field private audFilePath1:Ljava/lang/String;

.field private audFilePath2:Ljava/lang/String;

.field private beautyParams:Ljava/util/HashMap;

.field private beautyParamsEnable:Z

.field private bitmapAnimationsDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/BitmapAnimationData;",
            ">;"
        }
    .end annotation
.end field

.field private bufferRotation:I

.field private currPos:[F

.field private currScale:[F

.field private duration:I

.field private editList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/Edit;",
            ">;"
        }
    .end annotation
.end field

.field private endTime:I

.field private fastMotionDataPath:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private flipMode:Z

.field private g_layertype:I

.field private groupID:I

.field private isAlreadyAnalysed:Z

.field private isAnalysed:Z

.field private isAudioOff:Z

.field private isDeflickerOn:Z

.field private isMergeFullFile:Z

.field private isOverLapPossible:Z

.field private isSlowTVideo:Z

.field private listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

.field private mLayerTransformParams:Lcom/samsung/app/video/editor/external/LayerTransformParams;

.field private mOrientation:Lcom/samsung/app/video/editor/external/Orientation;

.field private mPerspectiveViewParams:Lcom/samsung/app/video/editor/external/PerspectiveViewParams;

.field private mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

.field private mType:Lcom/samsung/app/video/editor/external/ElementType;

.field private mediaRotation:I

.field private numSvcLayers:I

.field private orientation:I

.field private overLapAtEnd:I

.field private overLapAtStart:I

.field private recordingFramerate:I

.field private recordingMode:I

.field private regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/Region;",
            ">;"
        }
    .end annotation
.end field

.field private rotateScaleFactor:F

.field private startTime:I

.field private storyboardEndTime:I

.field private storyboardStartTime:I

.field private templateFileName:Ljava/lang/String;

.field private toneParams:Lcom/samsung/app/video/editor/external/ToneParams;

.field private type:I

.field private viewHeight:I

.field private viewWidth:I

.field private zoom_frame_x1:I

.field private zoom_frame_x2:I

.field private zoom_frame_y1:I

.field private zoom_frame_y2:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "Element"

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/app/video/editor/external/Element;->beautyParamsEnable:Z

    .line 19
    sget-object v1, Lcom/samsung/app/video/editor/external/RecordingMode;->NORMAL:Lcom/samsung/app/video/editor/external/RecordingMode;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 24
    sget-object v1, Lcom/samsung/app/video/editor/external/ElementType;->NONE:Lcom/samsung/app/video/editor/external/ElementType;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->mType:Lcom/samsung/app/video/editor/external/ElementType;

    .line 38
    sget-object v1, Lcom/samsung/app/video/editor/external/Orientation;->BACK_CAMERA_ZERO:Lcom/samsung/app/video/editor/external/Orientation;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->mOrientation:Lcom/samsung/app/video/editor/external/Orientation;

    .line 45
    new-instance v1, Lcom/samsung/app/video/editor/external/Element$RegionList;

    invoke-direct {v1, p0}, Lcom/samsung/app/video/editor/external/Element$RegionList;-><init>(Lcom/samsung/app/video/editor/external/Element;)V

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->regions:Ljava/util/List;

    .line 46
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->bitmapAnimationsDataList:Ljava/util/List;

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->beautyParams:Ljava/util/HashMap;

    .line 50
    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->ID:I

    .line 51
    iput-boolean v0, p0, Lcom/samsung/app/video/editor/external/Element;->isAnalysed:Z

    .line 68
    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->recordingFramerate:I

    .line 69
    iput-boolean v0, p0, Lcom/samsung/app/video/editor/external/Element;->isAlreadyAnalysed:Z

    .line 180
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    .line 186
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    .line 187
    new-instance v0, Lcom/samsung/app/video/editor/external/LayerTransformParams;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/LayerTransformParams;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->mLayerTransformParams:Lcom/samsung/app/video/editor/external/LayerTransformParams;

    .line 188
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/LayerTransformParams;->getLayerType()Lcom/samsung/app/video/editor/external/GraphicLayerType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/GraphicLayerType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->g_layertype:I

    .line 189
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->rotateScaleFactor:F

    .line 190
    return-void
.end method

.method public constructor <init>(Lcom/samsung/app/video/editor/external/ElementType;Ljava/lang/String;IIII)V
    .registers 10
    .param p1, "type"    # Lcom/samsung/app/video/editor/external/ElementType;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "startTime"    # I
    .param p4, "endTime"    # I
    .param p5, "storyboardStartTime"    # I
    .param p6, "storyboardEndTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "Element"

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->TAG:Ljava/lang/String;

    .line 18
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/external/Element;->beautyParamsEnable:Z

    .line 19
    sget-object v2, Lcom/samsung/app/video/editor/external/RecordingMode;->NORMAL:Lcom/samsung/app/video/editor/external/RecordingMode;

    iput-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 24
    sget-object v2, Lcom/samsung/app/video/editor/external/ElementType;->NONE:Lcom/samsung/app/video/editor/external/ElementType;

    iput-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->mType:Lcom/samsung/app/video/editor/external/ElementType;

    .line 38
    sget-object v2, Lcom/samsung/app/video/editor/external/Orientation;->BACK_CAMERA_ZERO:Lcom/samsung/app/video/editor/external/Orientation;

    iput-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->mOrientation:Lcom/samsung/app/video/editor/external/Orientation;

    .line 45
    new-instance v2, Lcom/samsung/app/video/editor/external/Element$RegionList;

    invoke-direct {v2, p0}, Lcom/samsung/app/video/editor/external/Element$RegionList;-><init>(Lcom/samsung/app/video/editor/external/Element;)V

    iput-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->regions:Ljava/util/List;

    .line 46
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->bitmapAnimationsDataList:Ljava/util/List;

    .line 48
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->beautyParams:Ljava/util/HashMap;

    .line 50
    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->ID:I

    .line 51
    iput-boolean v1, p0, Lcom/samsung/app/video/editor/external/Element;->isAnalysed:Z

    .line 68
    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->recordingFramerate:I

    .line 69
    iput-boolean v1, p0, Lcom/samsung/app/video/editor/external/Element;->isAlreadyAnalysed:Z

    .line 180
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    .line 207
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/ElementType;->getValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->type:I

    .line 208
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Element;->mType:Lcom/samsung/app/video/editor/external/ElementType;

    .line 209
    iput-object p2, p0, Lcom/samsung/app/video/editor/external/Element;->filePath:Ljava/lang/String;

    .line 210
    iput p3, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    .line 211
    iput p4, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    .line 212
    sub-int v1, p4, p3

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->duration:I

    .line 213
    iput p5, p0, Lcom/samsung/app/video/editor/external/Element;->storyboardStartTime:I

    .line 214
    iput p6, p0, Lcom/samsung/app/video/editor/external/Element;->storyboardEndTime:I

    .line 215
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    .line 216
    new-instance v1, Lcom/samsung/app/video/editor/external/LayerTransformParams;

    invoke-direct {v1}, Lcom/samsung/app/video/editor/external/LayerTransformParams;-><init>()V

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->mLayerTransformParams:Lcom/samsung/app/video/editor/external/LayerTransformParams;

    .line 217
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/LayerTransformParams;->getLayerType()Lcom/samsung/app/video/editor/external/GraphicLayerType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/GraphicLayerType;->getValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->g_layertype:I

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " endTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sbStartTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sbEndTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v0, Lcom/samsung/app/video/editor/external/RecordingMode;->NORMAL:Lcom/samsung/app/video/editor/external/RecordingMode;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/RecordingMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->recordingMode:I

    .line 222
    sget-object v0, Lcom/samsung/app/video/editor/external/RecordingMode;->NORMAL:Lcom/samsung/app/video/editor/external/RecordingMode;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 223
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->rotateScaleFactor:F

    .line 224
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/app/video/editor/external/Element;)Lcom/samsung/app/video/editor/external/ElementChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/app/video/editor/external/Element;

    .line 14
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/app/video/editor/external/Element;)Lcom/samsung/app/video/editor/external/RecordingMode;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/app/video/editor/external/Element;

    .line 14
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/app/video/editor/external/Element;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/app/video/editor/external/Element;

    .line 14
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/app/video/editor/external/Element;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/app/video/editor/external/Element;

    .line 14
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    return v0
.end method

.method private getSpeedvalue(ILcom/samsung/app/video/editor/external/Speed;)I
    .registers 6
    .param p1, "delta"    # I
    .param p2, "speed"    # Lcom/samsung/app/video/editor/external/Speed;

    .line 878
    move v0, p1

    .line 879
    .local v0, "ret":I
    sget-object v1, Lcom/samsung/app/video/editor/external/Element$1;->$SwitchMap$com$samsung$app$video$editor$external$Speed:[I

    invoke-virtual {p2}, Lcom/samsung/app/video/editor/external/Speed;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_28

    goto :goto_27

    .line 905
    :pswitch_d
    div-int/lit8 v0, p1, 0x20

    .line 906
    goto :goto_27

    .line 902
    :pswitch_10
    div-int/lit8 v0, p1, 0x10

    .line 903
    goto :goto_27

    .line 899
    :pswitch_13
    div-int/lit8 v0, p1, 0x8

    .line 900
    goto :goto_27

    .line 896
    :pswitch_16
    div-int/lit8 v0, p1, 0x4

    .line 897
    goto :goto_27

    .line 893
    :pswitch_19
    div-int/lit8 v0, p1, 0x2

    .line 894
    goto :goto_27

    .line 890
    :pswitch_1c
    mul-int/lit8 v0, p1, 0x8

    .line 891
    goto :goto_27

    .line 887
    :pswitch_1f
    mul-int/lit8 v0, p1, 0x4

    .line 888
    goto :goto_27

    .line 884
    :pswitch_22
    mul-int/lit8 v0, p1, 0x2

    .line 885
    goto :goto_27

    .line 881
    :pswitch_25
    move v0, p1

    .line 882
    nop

    .line 911
    :goto_27
    return v0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public addBitmapAnimations(Lcom/samsung/app/video/editor/external/BitmapAnimationData;)Z
    .registers 3
    .param p1, "ba"    # Lcom/samsung/app/video/editor/external/BitmapAnimationData;

    .line 495
    if-nez p1, :cond_4

    .line 496
    const/4 v0, 0x0

    return v0

    .line 497
    :cond_4
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->bitmapAnimationsDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    const/4 v0, 0x1

    return v0
.end method

.method public addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z
    .registers 3
    .param p1, "edit"    # Lcom/samsung/app/video/editor/external/Edit;

    .line 266
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Edit;->getType()Lcom/samsung/app/video/editor/external/EditType;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_16

    .line 268
    :cond_f
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    const/4 v0, 0x1

    return v0

    .line 267
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method public addRegion(Lcom/samsung/app/video/editor/external/Region;)Z
    .registers 6
    .param p1, "re"    # Lcom/samsung/app/video/editor/external/Region;

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRegion : recording mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/RecordingMode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Element"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    if-nez p1, :cond_22

    .line 430
    const/4 v0, 0x0

    return v0

    .line 431
    :cond_22
    invoke-virtual {p1, p0}, Lcom/samsung/app/video/editor/external/Region;->setParentElement(Lcom/samsung/app/video/editor/external/Element;)V

    .line 432
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    invoke-virtual {p1, v0}, Lcom/samsung/app/video/editor/external/Region;->setRecordingMode(Lcom/samsung/app/video/editor/external/RecordingMode;)V

    .line 433
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    if-eqz v0, :cond_13f

    .line 434
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/external/Element;->isSuperSlow(Lcom/samsung/app/video/editor/external/RecordingMode;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 435
    const-string v0, "RecordingMode.SUPERSLOW"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-ge v0, v1, :cond_65

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-ge v0, v1, :cond_65

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-lt v0, v1, :cond_65

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-ge v0, v1, :cond_65

    .line 437
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v2

    iget v3, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnAddRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto/16 :goto_13f

    .line 438
    :cond_65
    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-lt v0, v1, :cond_91

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-ge v0, v1, :cond_91

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-lt v0, v1, :cond_91

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-ge v0, v1, :cond_91

    .line 439
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnAddRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto/16 :goto_13f

    .line 440
    :cond_91
    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-lt v0, v1, :cond_bb

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-ge v0, v1, :cond_bb

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-lt v0, v1, :cond_bb

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-lt v0, v1, :cond_bb

    .line 441
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v1

    iget v2, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnAddRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto/16 :goto_13f

    .line 442
    :cond_bb
    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-ge v0, v1, :cond_13f

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-ge v0, v1, :cond_13f

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-lt v0, v1, :cond_13f

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-lt v0, v1, :cond_13f

    .line 443
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v1

    iget v2, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    iget v3, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnAddRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto :goto_13f

    .line 445
    :cond_e2
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/external/Element;->isSlowV2_120(Lcom/samsung/app/video/editor/external/RecordingMode;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 446
    const-string v0, "RecordingMode.SLOW_V2_120"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/app/video/editor/external/Element;->getSpeedMapForV2120(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnAddRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto :goto_13f

    .line 448
    :cond_106
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    sget-object v2, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-ne v0, v2, :cond_128

    .line 449
    const-string v0, "RecordingMode.SLOW_V2_240"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/app/video/editor/external/Element;->getSpeedMapForV2240(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnAddRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto :goto_13f

    .line 452
    :cond_128
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnAddRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    .line 453
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/app/video/editor/external/Region;->setListener(Lcom/samsung/app/video/editor/external/ElementChangeListener;)V

    .line 456
    :cond_13f
    :goto_13f
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->regions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    const/4 v0, 0x1

    return v0
.end method

.method copy()Lcom/samsung/app/video/editor/external/Element;
    .registers 6

    .line 73
    new-instance v0, Lcom/samsung/app/video/editor/external/Element;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/Element;-><init>()V

    .line 74
    .local v0, "el":Lcom/samsung/app/video/editor/external/Element;
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 75
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->type:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->type:I

    .line 76
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->filePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Element;->filePath:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->mType:Lcom/samsung/app/video/editor/external/ElementType;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Element;->mType:Lcom/samsung/app/video/editor/external/ElementType;

    .line 78
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    .line 79
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    .line 80
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->duration:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->duration:I

    .line 81
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->storyboardStartTime:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->storyboardStartTime:I

    .line 82
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->storyboardEndTime:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->storyboardEndTime:I

    .line 83
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->groupID:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->groupID:I

    .line 84
    iget-boolean v1, p0, Lcom/samsung/app/video/editor/external/Element;->isOverLapPossible:Z

    iput-boolean v1, v0, Lcom/samsung/app/video/editor/external/Element;->isOverLapPossible:Z

    .line 85
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->overLapAtStart:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->overLapAtStart:I

    .line 86
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->overLapAtEnd:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->overLapAtEnd:I

    .line 87
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->Video_Template:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->Video_Template:I

    .line 88
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->templateFileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Element;->templateFileName:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->alphaImageFileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Element;->alphaImageFileName:Ljava/lang/String;

    .line 90
    iget-boolean v1, p0, Lcom/samsung/app/video/editor/external/Element;->isMergeFullFile:Z

    iput-boolean v1, v0, Lcom/samsung/app/video/editor/external/Element;->isMergeFullFile:Z

    .line 91
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->audFilePath1:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Element;->audFilePath1:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->audFilePath2:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Element;->audFilePath2:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->fastMotionDataPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Element;->fastMotionDataPath:Ljava/lang/String;

    .line 94
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->orientation:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->orientation:I

    .line 95
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->mOrientation:Lcom/samsung/app/video/editor/external/Orientation;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Element;->mOrientation:Lcom/samsung/app/video/editor/external/Orientation;

    .line 96
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->recordingMode:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->recordingMode:I

    .line 97
    iget-boolean v1, p0, Lcom/samsung/app/video/editor/external/Element;->isSlowTVideo:Z

    iput-boolean v1, v0, Lcom/samsung/app/video/editor/external/Element;->isSlowTVideo:Z

    .line 98
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->numSvcLayers:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->numSvcLayers:I

    .line 99
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->recordingFramerate:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->recordingFramerate:I

    .line 100
    iget-boolean v1, p0, Lcom/samsung/app/video/editor/external/Element;->isAudioOff:Z

    iput-boolean v1, v0, Lcom/samsung/app/video/editor/external/Element;->isAudioOff:Z

    .line 101
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    .line 102
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->regions:Ljava/util/List;

    if-eqz v1, :cond_9c

    .line 103
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Element;->regions:Ljava/util/List;

    .line 104
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->regions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_86
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Region;

    .line 105
    .local v2, "re":Lcom/samsung/app/video/editor/external/Region;
    iget-object v3, v0, Lcom/samsung/app/video/editor/external/Element;->regions:Ljava/util/List;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->copy()Lcom/samsung/app/video/editor/external/Region;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v2    # "re":Lcom/samsung/app/video/editor/external/Region;
    goto :goto_86

    .line 108
    :cond_9c
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->bitmapAnimationsDataList:Ljava/util/List;

    if-eqz v1, :cond_c4

    .line 109
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Element;->bitmapAnimationsDataList:Ljava/util/List;

    .line 110
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->bitmapAnimationsDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ad
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/BitmapAnimationData;

    .line 111
    .local v2, "bad":Lcom/samsung/app/video/editor/external/BitmapAnimationData;
    iget-object v3, v0, Lcom/samsung/app/video/editor/external/Element;->bitmapAnimationsDataList:Ljava/util/List;

    new-instance v4, Lcom/samsung/app/video/editor/external/BitmapAnimationData;

    invoke-direct {v4, v2}, Lcom/samsung/app/video/editor/external/BitmapAnimationData;-><init>(Lcom/samsung/app/video/editor/external/BitmapAnimationData;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v2    # "bad":Lcom/samsung/app/video/editor/external/BitmapAnimationData;
    goto :goto_ad

    .line 114
    :cond_c4
    iget-boolean v1, p0, Lcom/samsung/app/video/editor/external/Element;->beautyParamsEnable:Z

    iput-boolean v1, v0, Lcom/samsung/app/video/editor/external/Element;->beautyParamsEnable:Z

    .line 115
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->beautyParams:Ljava/util/HashMap;

    if-eqz v1, :cond_d9

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d9

    .line 116
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/Element;->beautyParams:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->beautyParams:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 118
    :cond_d9
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->ID:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->ID:I

    .line 119
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    if-eqz v1, :cond_104

    .line 120
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    .line 121
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ee
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_104

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Edit;

    .line 122
    .local v2, "e":Lcom/samsung/app/video/editor/external/Edit;
    iget-object v3, v0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Edit;->copy()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v2    # "e":Lcom/samsung/app/video/editor/external/Edit;
    goto :goto_ee

    .line 125
    :cond_104
    iget-boolean v1, p0, Lcom/samsung/app/video/editor/external/Element;->isDeflickerOn:Z

    iput-boolean v1, v0, Lcom/samsung/app/video/editor/external/Element;->isDeflickerOn:Z

    .line 132
    iget-boolean v1, p0, Lcom/samsung/app/video/editor/external/Element;->isAnalysed:Z

    iput-boolean v1, v0, Lcom/samsung/app/video/editor/external/Element;->isAnalysed:Z

    .line 133
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->zoom_frame_x1:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->zoom_frame_x1:I

    .line 134
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->zoom_frame_y1:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->zoom_frame_y1:I

    .line 135
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->zoom_frame_x2:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->zoom_frame_x2:I

    .line 136
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->zoom_frame_y2:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->zoom_frame_y2:I

    .line 137
    iget-boolean v1, p0, Lcom/samsung/app/video/editor/external/Element;->flipMode:Z

    iput-boolean v1, v0, Lcom/samsung/app/video/editor/external/Element;->flipMode:Z

    .line 138
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->mLayerTransformParams:Lcom/samsung/app/video/editor/external/LayerTransformParams;

    if-eqz v1, :cond_132

    .line 139
    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Element;->mLayerTransformParams:Lcom/samsung/app/video/editor/external/LayerTransformParams;

    .line 140
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->mLayerTransformParams:Lcom/samsung/app/video/editor/external/LayerTransformParams;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/LayerTransformParams;->getLayerType()Lcom/samsung/app/video/editor/external/GraphicLayerType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/GraphicLayerType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->g_layertype:I

    .line 142
    :cond_132
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->viewWidth:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->viewWidth:I

    .line 143
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->viewHeight:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->viewHeight:I

    .line 144
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->mPerspectiveViewParams:Lcom/samsung/app/video/editor/external/PerspectiveViewParams;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Element;->mPerspectiveViewParams:Lcom/samsung/app/video/editor/external/PerspectiveViewParams;

    .line 145
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->currPos:[F

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Element;->currPos:[F

    .line 146
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->currScale:[F

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Element;->currScale:[F

    .line 147
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->mediaRotation:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->mediaRotation:I

    .line 148
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->bufferRotation:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->bufferRotation:I

    .line 149
    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->rotateScaleFactor:F

    iput v1, v0, Lcom/samsung/app/video/editor/external/Element;->rotateScaleFactor:F

    .line 150
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->toneParams:Lcom/samsung/app/video/editor/external/ToneParams;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Element;->toneParams:Lcom/samsung/app/video/editor/external/ToneParams;

    .line 151
    iget-boolean v1, p0, Lcom/samsung/app/video/editor/external/Element;->isAlreadyAnalysed:Z

    iput-boolean v1, v0, Lcom/samsung/app/video/editor/external/Element;->isAlreadyAnalysed:Z

    .line 153
    return-object v0
.end method

.method public copyEnumElementType()V
    .registers 7

    .line 602
    invoke-static {}, Lcom/samsung/app/video/editor/external/ElementType;->values()[Lcom/samsung/app/video/editor/external/ElementType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_34

    aget-object v3, v0, v2

    .line 603
    .local v3, "et":Lcom/samsung/app/video/editor/external/ElementType;
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/ElementType;->getValue()I

    move-result v4

    iget v5, p0, Lcom/samsung/app/video/editor/external/Element;->type:I

    if-ne v4, v5, :cond_31

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElementType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/ElementType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Element"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iput-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->mType:Lcom/samsung/app/video/editor/external/ElementType;

    .line 606
    return-void

    .line 602
    .end local v3    # "et":Lcom/samsung/app/video/editor/external/ElementType;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 609
    :cond_34
    const-string v0, "TAG"

    const-string v1, "No matching Enum found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return-void
.end method

.method public getBeautyParams(Lcom/samsung/app/video/editor/external/BeautyProperty;)Ljava/lang/Integer;
    .registers 4
    .param p1, "bp"    # Lcom/samsung/app/video/editor/external/BeautyProperty;

    .line 839
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->beautyParams:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/BeautyProperty;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getBitmapAnimationsDataList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/BitmapAnimationData;",
            ">;"
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->bitmapAnimationsDataList:Ljava/util/List;

    return-object v0
.end method

.method public getBufferRotation()I
    .registers 2

    .line 1102
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->bufferRotation:I

    return v0
.end method

.method public getCurrPos()[F
    .registers 2

    .line 1082
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->currPos:[F

    return-object v0
.end method

.method public getCurrScale()[F
    .registers 2

    .line 1074
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->currScale:[F

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    .line 311
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->duration:I

    return v0
.end method

.method public getEdit(Lcom/samsung/app/video/editor/external/EditType;)Lcom/samsung/app/video/editor/external/Edit;
    .registers 5
    .param p1, "type"    # Lcom/samsung/app/video/editor/external/EditType;

    .line 518
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 519
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Edit;

    .line 520
    .local v1, "edit":Lcom/samsung/app/video/editor/external/Edit;
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getType()Lcom/samsung/app/video/editor/external/EditType;

    move-result-object v2

    if-ne v2, p1, :cond_18

    .line 521
    return-object v1

    .line 518
    .end local v1    # "edit":Lcom/samsung/app/video/editor/external/Edit;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 524
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEdit(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;)Lcom/samsung/app/video/editor/external/Edit;
    .registers 6
    .param p1, "et"    # Lcom/samsung/app/video/editor/external/EditType;
    .param p2, "est"    # Lcom/samsung/app/video/editor/external/EditSubType;

    .line 533
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 534
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Edit;

    .line 535
    .local v1, "edit":Lcom/samsung/app/video/editor/external/Edit;
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getType()Lcom/samsung/app/video/editor/external/EditType;

    move-result-object v2

    if-ne v2, p1, :cond_1e

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v2

    if-ne v2, p2, :cond_1e

    .line 536
    return-object v1

    .line 533
    .end local v1    # "edit":Lcom/samsung/app/video/editor/external/Edit;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 539
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/Edit;",
            ">;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    return-object v0
.end method

.method public getEndTime()I
    .registers 2

    .line 304
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFlipMode()Z
    .registers 2

    .line 1029
    iget-boolean v0, p0, Lcom/samsung/app/video/editor/external/Element;->flipMode:Z

    return v0
.end method

.method public getGraphicLayerType()I
    .registers 2

    .line 1045
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->g_layertype:I

    return v0
.end method

.method public getGroupID()I
    .registers 2

    .line 554
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->groupID:I

    return v0
.end method

.method public getID()I
    .registers 2

    .line 234
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->ID:I

    return v0
.end method

.method public getLayerTransform()Lcom/samsung/app/video/editor/external/LayerTransformParams;
    .registers 2

    .line 1033
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->mLayerTransformParams:Lcom/samsung/app/video/editor/external/LayerTransformParams;

    .line 1039
    return-object v0
.end method

.method public getMediaRotation()I
    .registers 2

    .line 1094
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->mediaRotation:I

    return v0
.end method

.method public getNumOfSVCLayers()I
    .registers 2

    .line 404
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->numSvcLayers:I

    return v0
.end method

.method public getOrientation()Lcom/samsung/app/video/editor/external/Orientation;
    .registers 2

    .line 576
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->mOrientation:Lcom/samsung/app/video/editor/external/Orientation;

    return-object v0
.end method

.method public getOverLapAtEnd()I
    .registers 2

    .line 259
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->overLapAtEnd:I

    return v0
.end method

.method public getOverLapAtStart()I
    .registers 2

    .line 252
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->overLapAtStart:I

    return v0
.end method

.method public getPerspectiveViewParams()Lcom/samsung/app/video/editor/external/PerspectiveViewParams;
    .registers 2

    .line 915
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->mPerspectiveViewParams:Lcom/samsung/app/video/editor/external/PerspectiveViewParams;

    return-object v0
.end method

.method public getRecordingFramerate()I
    .registers 2

    .line 1123
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->recordingFramerate:I

    return v0
.end method

.method public getRecordingMode()Lcom/samsung/app/video/editor/external/RecordingMode;
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    return-object v0
.end method

.method public getRegions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/Region;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->regions:Ljava/util/List;

    return-object v0
.end method

.method public getRotateScaleFactor()F
    .registers 2

    .line 1112
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->rotateScaleFactor:F

    return v0
.end method

.method public getSpeedMapForV2120(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;
    .registers 4
    .param p1, "speed"    # Lcom/samsung/app/video/editor/external/Speed;

    .line 965
    sget-object v0, Lcom/samsung/app/video/editor/external/Element$1;->$SwitchMap$com$samsung$app$video$editor$external$Speed:[I

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Speed;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 975
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->NORMAL:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 973
    :pswitch_e
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->HALF:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 971
    :pswitch_11
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->NORMAL:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 969
    :pswitch_14
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->TWO_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 967
    :pswitch_17
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->FOUR_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method public getSpeedMapForV2240(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;
    .registers 4
    .param p1, "speed"    # Lcom/samsung/app/video/editor/external/Speed;

    .line 980
    sget-object v0, Lcom/samsung/app/video/editor/external/Element$1;->$SwitchMap$com$samsung$app$video$editor$external$Speed:[I

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Speed;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 990
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->NORMAL:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 988
    :pswitch_e
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->NORMAL:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 986
    :pswitch_11
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->TWO_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 984
    :pswitch_14
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->FOUR_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 982
    :pswitch_17
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->EIGHT_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method public getStartTime()I
    .registers 2

    .line 297
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    return v0
.end method

.method public getStoryBoardEndTime()I
    .registers 2

    .line 568
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->storyboardEndTime:I

    return v0
.end method

.method public getStoryBoardStartTime()I
    .registers 2

    .line 561
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->storyboardStartTime:I

    return v0
.end method

.method protected getStoryboardEndTime()I
    .registers 2

    .line 325
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->storyboardEndTime:I

    return v0
.end method

.method protected getStoryboardStartTime()I
    .registers 2

    .line 318
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->storyboardStartTime:I

    return v0
.end method

.method public getToneParams()Lcom/samsung/app/video/editor/external/ToneParams;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->toneParams:Lcom/samsung/app/video/editor/external/ToneParams;

    return-object v0
.end method

.method public getType()Lcom/samsung/app/video/editor/external/ElementType;
    .registers 2

    .line 546
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->mType:Lcom/samsung/app/video/editor/external/ElementType;

    return-object v0
.end method

.method public getViewSize()[I
    .registers 3

    .line 1069
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->viewWidth:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->viewHeight:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 1070
    .local v0, "resolution":[I
    return-object v0
.end method

.method public getZoomFramePos()[I
    .registers 5

    .line 1020
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->zoom_frame_x1:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->zoom_frame_y1:I

    iget v2, p0, Lcom/samsung/app/video/editor/external/Element;->zoom_frame_x2:I

    iget v3, p0, Lcom/samsung/app/video/editor/external/Element;->zoom_frame_y2:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    .line 1021
    .local v0, "zoomFramePos":[I
    return-object v0
.end method

.method public isAlreadyAnalysed()Z
    .registers 2

    .line 1127
    iget-boolean v0, p0, Lcom/samsung/app/video/editor/external/Element;->isAlreadyAnalysed:Z

    return v0
.end method

.method public isAnalysed()Z
    .registers 3

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAnalysed :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/app/video/editor/external/Element;->isAnalysed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Element"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-boolean v0, p0, Lcom/samsung/app/video/editor/external/Element;->isAnalysed:Z

    return v0
.end method

.method public isAudioOff()Z
    .registers 2

    .line 340
    iget-boolean v0, p0, Lcom/samsung/app/video/editor/external/Element;->isAudioOff:Z

    return v0
.end method

.method public isBeautyParamsEnable()Z
    .registers 2

    .line 831
    iget-boolean v0, p0, Lcom/samsung/app/video/editor/external/Element;->beautyParamsEnable:Z

    return v0
.end method

.method public isDeflickerOn()Z
    .registers 3

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDeflickerOn :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/app/video/editor/external/Element;->isDeflickerOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Element"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-boolean v0, p0, Lcom/samsung/app/video/editor/external/Element;->isDeflickerOn:Z

    return v0
.end method

.method public isSlowTVideo()Z
    .registers 2

    .line 389
    iget-boolean v0, p0, Lcom/samsung/app/video/editor/external/Element;->isSlowTVideo:Z

    return v0
.end method

.method public isSlowV2_120(Lcom/samsung/app/video/editor/external/RecordingMode;)Z
    .registers 3
    .param p1, "recordingMode"    # Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 417
    sget-object v0, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2_120:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-eq p1, v0, :cond_b

    sget-object v0, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2_120_NONE_SVC:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-ne p1, v0, :cond_9

    goto :goto_b

    .line 421
    :cond_9
    const/4 v0, 0x0

    return v0

    .line 418
    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public isSuperSlow(Lcom/samsung/app/video/editor/external/RecordingMode;)Z
    .registers 3
    .param p1, "recordingMode"    # Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 408
    sget-object v0, Lcom/samsung/app/video/editor/external/RecordingMode;->SUPERSLOW_SINGLE_960:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-eq p1, v0, :cond_f

    sget-object v0, Lcom/samsung/app/video/editor/external/RecordingMode;->SUPERSLOW_SINGLE_FRC_DEFLICKER:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-eq p1, v0, :cond_f

    sget-object v0, Lcom/samsung/app/video/editor/external/RecordingMode;->SUPERSLOW_NONE_SVC:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-ne p1, v0, :cond_d

    goto :goto_f

    .line 413
    :cond_d
    const/4 v0, 0x0

    return v0

    .line 410
    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public onSlowRegionSpeedChange(Lcom/samsung/app/video/editor/external/Region;Lcom/samsung/app/video/editor/external/Speed;)V
    .registers 8
    .param p1, "region"    # Lcom/samsung/app/video/editor/external/Region;
    .param p2, "speed"    # Lcom/samsung/app/video/editor/external/Speed;

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSlowRegionSpeedChange from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Element"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    if-eqz v0, :cond_13e

    .line 852
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/external/Element;->isSuperSlow(Lcom/samsung/app/video/editor/external/RecordingMode;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 853
    const-string v0, "RecordingMode.SUPERSLOW"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-ge v0, v1, :cond_61

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-ge v0, v1, :cond_61

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-lt v0, v1, :cond_61

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-ge v0, v1, :cond_61

    .line 855
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v2

    iget v3, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, p2, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onSlowRegionSpeedChange(Lcom/samsung/app/video/editor/external/Speed;Lcom/samsung/app/video/editor/external/Speed;I)V

    goto/16 :goto_13e

    .line 856
    :cond_61
    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-lt v0, v1, :cond_8d

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-ge v0, v1, :cond_8d

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-lt v0, v1, :cond_8d

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-ge v0, v1, :cond_8d

    .line 857
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, p2, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onSlowRegionSpeedChange(Lcom/samsung/app/video/editor/external/Speed;Lcom/samsung/app/video/editor/external/Speed;I)V

    goto/16 :goto_13e

    .line 858
    :cond_8d
    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-lt v0, v1, :cond_b7

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-ge v0, v1, :cond_b7

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-lt v0, v1, :cond_b7

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-lt v0, v1, :cond_b7

    .line 859
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v1

    iget v2, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, p2, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onSlowRegionSpeedChange(Lcom/samsung/app/video/editor/external/Speed;Lcom/samsung/app/video/editor/external/Speed;I)V

    goto/16 :goto_13e

    .line 860
    :cond_b7
    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-ge v0, v1, :cond_13e

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-ge v0, v1, :cond_13e

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-lt v0, v1, :cond_13e

    iget v0, p1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-lt v0, v1, :cond_13e

    .line 861
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v1

    iget v2, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    iget v3, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, p2, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onSlowRegionSpeedChange(Lcom/samsung/app/video/editor/external/Speed;Lcom/samsung/app/video/editor/external/Speed;I)V

    goto :goto_13e

    .line 863
    :cond_de
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/external/Element;->isSlowV2_120(Lcom/samsung/app/video/editor/external/RecordingMode;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 864
    const-string v0, "RecordingMode.SLOW_V2_120"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/app/video/editor/external/Element;->getSpeedMapForV2120(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/samsung/app/video/editor/external/Element;->getSpeedMapForV2120(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onSlowRegionSpeedChange(Lcom/samsung/app/video/editor/external/Speed;Lcom/samsung/app/video/editor/external/Speed;I)V

    goto :goto_13e

    .line 866
    :cond_106
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    sget-object v2, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-ne v0, v2, :cond_12c

    .line 867
    const-string v0, "RecordingMode.SLOW_V2_240"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/app/video/editor/external/Element;->getSpeedMapForV2240(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/samsung/app/video/editor/external/Element;->getSpeedMapForV2120(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onSlowRegionSpeedChange(Lcom/samsung/app/video/editor/external/Speed;Lcom/samsung/app/video/editor/external/Speed;I)V

    goto :goto_13e

    .line 870
    :cond_12c
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, p2, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onSlowRegionSpeedChange(Lcom/samsung/app/video/editor/external/Speed;Lcom/samsung/app/video/editor/external/Speed;I)V

    .line 873
    :cond_13e
    :goto_13e
    return-void
.end method

.method public removeAllEdits()V
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 291
    return-void
.end method

.method public removeEdit(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;)Lcom/samsung/app/video/editor/external/Edit;
    .registers 7
    .param p1, "type"    # Lcom/samsung/app/video/editor/external/EditType;
    .param p2, "subType"    # Lcom/samsung/app/video/editor/external/EditSubType;

    .line 273
    const/4 v0, 0x0

    if-eqz p1, :cond_40

    if-nez p2, :cond_6

    goto :goto_40

    .line 275
    :cond_6
    const/4 v1, 0x0

    .line 277
    .local v1, "isNone":Z
    sget-object v2, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    if-ne p2, v2, :cond_c

    .line 278
    const/4 v1, 0x1

    .line 280
    :cond_c
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3f

    .line 282
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Edit;->getType()Lcom/samsung/app/video/editor/external/EditType;

    move-result-object v3

    if-ne v3, p1, :cond_3c

    if-nez v1, :cond_33

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v3

    if-ne v3, p2, :cond_3c

    .line 283
    :cond_33
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Edit;

    return-object v0

    .line 280
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 286
    .end local v2    # "i":I
    :cond_3f
    return-object v0

    .line 274
    .end local v1    # "isNone":Z
    :cond_40
    :goto_40
    return-object v0
.end method

.method public removeRegions()V
    .registers 8

    .line 461
    const-string v0, "removeRegions"

    const-string v1, "Element"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    if-eqz v0, :cond_12f

    .line 463
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->regions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Region;

    .line 464
    .local v2, "re":Lcom/samsung/app/video/editor/external/Region;
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    invoke-virtual {p0, v3}, Lcom/samsung/app/video/editor/external/Element;->isSuperSlow(Lcom/samsung/app/video/editor/external/RecordingMode;)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 465
    const-string v3, "RecordingMode.SUPERSLOW"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget v3, v2, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v4, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-ge v3, v4, :cond_54

    iget v3, v2, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v4, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-ge v3, v4, :cond_54

    iget v3, v2, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v4, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-lt v3, v4, :cond_54

    iget v3, v2, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v4, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-ge v3, v4, :cond_54

    .line 467
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v5

    iget v6, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    sub-int/2addr v5, v6

    invoke-interface {v3, v4, v5}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnRemoveRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto/16 :goto_129

    .line 468
    :cond_54
    iget v3, v2, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v4, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-lt v3, v4, :cond_80

    iget v3, v2, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v4, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-ge v3, v4, :cond_80

    iget v3, v2, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v4, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-lt v3, v4, :cond_80

    iget v3, v2, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v4, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-ge v3, v4, :cond_80

    .line 469
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-interface {v3, v4, v5}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnRemoveRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto/16 :goto_129

    .line 470
    :cond_80
    iget v3, v2, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v4, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-lt v3, v4, :cond_aa

    iget v3, v2, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v4, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-ge v3, v4, :cond_aa

    iget v3, v2, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v4, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-lt v3, v4, :cond_aa

    iget v3, v2, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v4, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-lt v3, v4, :cond_aa

    .line 471
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v4

    iget v5, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-interface {v3, v4, v5}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnRemoveRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto/16 :goto_129

    .line 472
    :cond_aa
    iget v3, v2, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v4, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-ge v3, v4, :cond_129

    iget v3, v2, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget v4, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-ge v3, v4, :cond_129

    iget v3, v2, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v4, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    if-lt v3, v4, :cond_129

    iget v3, v2, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v4, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    if-lt v3, v4, :cond_129

    .line 473
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v4

    iget v5, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    iget v6, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    sub-int/2addr v5, v6

    invoke-interface {v3, v4, v5}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnRemoveRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto :goto_129

    .line 475
    :cond_d1
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    invoke-virtual {p0, v3}, Lcom/samsung/app/video/editor/external/Element;->isSlowV2_120(Lcom/samsung/app/video/editor/external/RecordingMode;)Z

    move-result v3

    if-eqz v3, :cond_f5

    .line 476
    const-string v3, "RecordingMode.SLOW_V2_120"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/app/video/editor/external/Element;->getSpeedMapForV2120(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-interface {v3, v4, v5}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnRemoveRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto :goto_129

    .line 478
    :cond_f5
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    sget-object v4, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-ne v3, v4, :cond_117

    .line 479
    const-string v3, "RecordingMode.SLOW_V2_240"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/app/video/editor/external/Element;->getSpeedMapForV2240(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-interface {v3, v4, v5}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnRemoveRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto :goto_129

    .line 482
    :cond_117
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-interface {v3, v4, v5}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnRemoveRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    .line 484
    :cond_129
    :goto_129
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/app/video/editor/external/Region;->setParentElement(Lcom/samsung/app/video/editor/external/Element;)V

    .line 485
    .end local v2    # "re":Lcom/samsung/app/video/editor/external/Region;
    goto/16 :goto_11

    .line 487
    :cond_12f
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->regions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 488
    return-void
.end method

.method public setAlreadyAnalysed(Z)V
    .registers 2
    .param p1, "alreadyAnalysed"    # Z

    .line 1131
    iput-boolean p1, p0, Lcom/samsung/app/video/editor/external/Element;->isAlreadyAnalysed:Z

    .line 1132
    return-void
.end method

.method public setAudioEnable(Z)V
    .registers 2
    .param p1, "audioOff"    # Z

    .line 344
    iput-boolean p1, p0, Lcom/samsung/app/video/editor/external/Element;->isAudioOff:Z

    .line 345
    return-void
.end method

.method public setBeautyParams(Lcom/samsung/app/video/editor/external/BeautyProperty;I)Z
    .registers 6
    .param p1, "bp"    # Lcom/samsung/app/video/editor/external/BeautyProperty;
    .param p2, "val"    # I

    .line 843
    if-ltz p2, :cond_1a

    const/16 v0, 0x8

    if-le p2, v0, :cond_7

    goto :goto_1a

    .line 845
    :cond_7
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->beautyParams:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/BeautyProperty;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    const/4 v0, 0x1

    return v0

    .line 844
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method public setBeautyParamsEnable(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 835
    iput-boolean p1, p0, Lcom/samsung/app/video/editor/external/Element;->beautyParamsEnable:Z

    .line 836
    return-void
.end method

.method public setBufferRotation(I)V
    .registers 2
    .param p1, "rotation"    # I

    .line 1098
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->bufferRotation:I

    .line 1099
    return-void
.end method

.method public setCurrPos([F)V
    .registers 2
    .param p1, "currPos"    # [F

    .line 1086
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Element;->currPos:[F

    .line 1087
    return-void
.end method

.method public setCurrScale([F)V
    .registers 2
    .param p1, "currScale"    # [F

    .line 1078
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Element;->currScale:[F

    .line 1079
    return-void
.end method

.method public setDeflicker(Z)V
    .registers 4
    .param p1, "deflickerOn"    # Z

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeflicker :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Element"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iput-boolean p1, p0, Lcom/samsung/app/video/editor/external/Element;->isDeflickerOn:Z

    .line 350
    return-void
.end method

.method public setDuration(I)Z
    .registers 4
    .param p1, "duration"    # I

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDuration : Recordingmode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Element"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    if-gez p1, :cond_1e

    .line 780
    const/4 v0, 0x0

    return v0

    .line 781
    :cond_1e
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->duration:I

    sub-int v0, p1, v0

    .line 782
    .local v0, "delta":I
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->duration:I

    .line 783
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    if-eqz v1, :cond_2b

    .line 784
    invoke-interface {v1, v0}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onDurationChange(I)V

    .line 786
    :cond_2b
    const/4 v1, 0x1

    return v1
.end method

.method setElementChangeListener(Lcom/samsung/app/video/editor/external/ElementChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/app/video/editor/external/ElementChangeListener;

    .line 166
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    .line 167
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->regions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Region;

    .line 168
    .local v1, "re":Lcom/samsung/app/video/editor/external/Region;
    invoke-virtual {v1, p1}, Lcom/samsung/app/video/editor/external/Region;->setListener(Lcom/samsung/app/video/editor/external/ElementChangeListener;)V

    .line 169
    .end local v1    # "re":Lcom/samsung/app/video/editor/external/Region;
    goto :goto_8

    .line 170
    :cond_18
    return-void
.end method

.method public setEndTime(I)Z
    .registers 8
    .param p1, "endTime"    # I

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEndTime : prevEndTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new endTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Element"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    if-gez p1, :cond_28

    .line 705
    const/4 v0, 0x0

    return v0

    .line 706
    :cond_28
    const/4 v0, 0x0

    .line 707
    .local v0, "delta":I
    iget v2, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    .line 708
    .local v2, "prevEndTime":I
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    .line 709
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    invoke-virtual {p0, v3}, Lcom/samsung/app/video/editor/external/Element;->isSuperSlow(Lcom/samsung/app/video/editor/external/RecordingMode;)Z

    move-result v3

    if-eqz v3, :cond_1aa

    .line 710
    const-string v3, "RecordingMode.SUPERSLOW"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const-string v3, ", currEndtime = "

    if-ge v2, p1, :cond_f3

    .line 712
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Endtime Trimmed Out - 2 : prevEndtime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    sub-int v0, p1, v2

    .line 714
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->regions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/Region;

    .line 715
    .local v3, "re":Lcom/samsung/app/video/editor/external/Region;
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-lt v4, v2, :cond_93

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, p1, :cond_93

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, v2, :cond_93

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-ge v4, p1, :cond_93

    .line 716
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v5, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int/2addr v4, v5

    sub-int/2addr v0, v4

    .line 717
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v5, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int/2addr v4, v5

    iget-object v5, v3, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v4, v5}, Lcom/samsung/app/video/editor/external/Element;->getSpeedvalue(ILcom/samsung/app/video/editor/external/Speed;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_ef

    .line 718
    :cond_93
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-lt v4, v2, :cond_b4

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, p1, :cond_b4

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, v2, :cond_b4

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, p1, :cond_b4

    .line 719
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int v4, p1, v4

    sub-int/2addr v0, v4

    .line 720
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int v4, p1, v4

    iget-object v5, v3, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v4, v5}, Lcom/samsung/app/video/editor/external/Element;->getSpeedvalue(ILcom/samsung/app/video/editor/external/Speed;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_ef

    .line 721
    :cond_b4
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, v2, :cond_d3

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, p1, :cond_d3

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, v2, :cond_d3

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-ge v4, p1, :cond_d3

    .line 722
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    sub-int/2addr v4, v2

    sub-int/2addr v0, v4

    .line 723
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    sub-int/2addr v4, v2

    iget-object v5, v3, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v4, v5}, Lcom/samsung/app/video/editor/external/Element;->getSpeedvalue(ILcom/samsung/app/video/editor/external/Speed;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_ef

    .line 724
    :cond_d3
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, v2, :cond_ef

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, p1, :cond_ef

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, v2, :cond_ef

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, p1, :cond_ef

    .line 725
    sub-int v4, p1, v2

    sub-int/2addr v0, v4

    .line 726
    sub-int v4, p1, v2

    iget-object v5, v3, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v4, v5}, Lcom/samsung/app/video/editor/external/Element;->getSpeedvalue(ILcom/samsung/app/video/editor/external/Speed;)I

    move-result v4

    add-int/2addr v0, v4

    .line 728
    .end local v3    # "re":Lcom/samsung/app/video/editor/external/Region;
    :cond_ef
    :goto_ef
    goto/16 :goto_64

    :cond_f1
    goto/16 :goto_1ac

    .line 730
    :cond_f3
    if-ge p1, v2, :cond_1ac

    .line 731
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Endtime Trimmed In - 2 : prevEndtime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    sub-int v0, v2, p1

    .line 733
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->regions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/Region;

    .line 734
    .restart local v3    # "re":Lcom/samsung/app/video/editor/external/Region;
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-lt v4, p1, :cond_14a

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, v2, :cond_14a

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, p1, :cond_14a

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-ge v4, v2, :cond_14a

    .line 735
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v5, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int/2addr v4, v5

    sub-int/2addr v0, v4

    .line 736
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v5, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int/2addr v4, v5

    iget-object v5, v3, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v4, v5}, Lcom/samsung/app/video/editor/external/Element;->getSpeedvalue(ILcom/samsung/app/video/editor/external/Speed;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1a6

    .line 737
    :cond_14a
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-lt v4, p1, :cond_16b

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, v2, :cond_16b

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, p1, :cond_16b

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, v2, :cond_16b

    .line 738
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int v4, v2, v4

    sub-int/2addr v0, v4

    .line 739
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int v4, v2, v4

    iget-object v5, v3, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v4, v5}, Lcom/samsung/app/video/editor/external/Element;->getSpeedvalue(ILcom/samsung/app/video/editor/external/Speed;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1a6

    .line 740
    :cond_16b
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, p1, :cond_18a

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, v2, :cond_18a

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, p1, :cond_18a

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-ge v4, v2, :cond_18a

    .line 741
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    sub-int/2addr v4, p1

    sub-int/2addr v0, v4

    .line 742
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    sub-int/2addr v4, p1

    iget-object v5, v3, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v4, v5}, Lcom/samsung/app/video/editor/external/Element;->getSpeedvalue(ILcom/samsung/app/video/editor/external/Speed;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1a6

    .line 743
    :cond_18a
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, p1, :cond_1a6

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, v2, :cond_1a6

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, p1, :cond_1a6

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, v2, :cond_1a6

    .line 744
    sub-int v4, v2, p1

    sub-int/2addr v0, v4

    .line 745
    sub-int v4, v2, p1

    iget-object v5, v3, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v4, v5}, Lcom/samsung/app/video/editor/external/Element;->getSpeedvalue(ILcom/samsung/app/video/editor/external/Speed;)I

    move-result v4

    add-int/2addr v0, v4

    .line 747
    .end local v3    # "re":Lcom/samsung/app/video/editor/external/Region;
    :cond_1a6
    :goto_1a6
    goto/16 :goto_11b

    .line 748
    :cond_1a8
    neg-int v0, v0

    goto :goto_1ac

    .line 766
    :cond_1aa
    sub-int v0, p1, v2

    .line 768
    :cond_1ac
    :goto_1ac
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    if-eqz v1, :cond_1b3

    .line 769
    invoke-interface {v1, v0}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onDurationChange(I)V

    .line 771
    :cond_1b3
    const/4 v1, 0x1

    return v1
.end method

.method public setFilePath(Ljava/lang/String;)Z
    .registers 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 616
    if-nez p1, :cond_4

    .line 617
    const/4 v0, 0x0

    return v0

    .line 618
    :cond_4
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Element;->filePath:Ljava/lang/String;

    .line 619
    const/4 v0, 0x1

    return v0
.end method

.method public setFlipMode(Z)V
    .registers 2
    .param p1, "mode"    # Z

    .line 1025
    iput-boolean p1, p0, Lcom/samsung/app/video/editor/external/Element;->flipMode:Z

    .line 1026
    return-void
.end method

.method public setGroupID(I)Z
    .registers 3
    .param p1, "id"    # I

    .line 332
    if-gez p1, :cond_4

    .line 333
    const/4 v0, 0x0

    return v0

    .line 334
    :cond_4
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->groupID:I

    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public setID(I)Z
    .registers 3
    .param p1, "id"    # I

    .line 241
    if-gez p1, :cond_4

    .line 242
    const/4 v0, 0x0

    return v0

    .line 243
    :cond_4
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->ID:I

    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public setIsAnalysed(Z)V
    .registers 2
    .param p1, "isAnalysed"    # Z

    .line 1004
    iput-boolean p1, p0, Lcom/samsung/app/video/editor/external/Element;->isAnalysed:Z

    .line 1005
    return-void
.end method

.method public setLayerTransform(Lcom/samsung/app/video/editor/external/LayerTransformParams;)V
    .registers 4
    .param p1, "rp"    # Lcom/samsung/app/video/editor/external/LayerTransformParams;

    .line 1049
    if-eqz p1, :cond_f

    .line 1054
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Element;->mLayerTransformParams:Lcom/samsung/app/video/editor/external/LayerTransformParams;

    .line 1055
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/LayerTransformParams;->getLayerType()Lcom/samsung/app/video/editor/external/GraphicLayerType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/GraphicLayerType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->g_layertype:I

    goto :goto_16

    .line 1058
    :cond_f
    const-string v0, "Element"

    const-string v1, "setLayerTransform : input is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :goto_16
    return-void
.end method

.method public setMediaRotation(I)V
    .registers 2
    .param p1, "rotation"    # I

    .line 1090
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->mediaRotation:I

    .line 1091
    return-void
.end method

.method public setNumOfSVCLayers(I)Z
    .registers 3
    .param p1, "numSvcLayers"    # I

    .line 397
    if-gez p1, :cond_4

    .line 398
    const/4 v0, 0x0

    return v0

    .line 399
    :cond_4
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->numSvcLayers:I

    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method public setOrientation(Lcom/samsung/app/video/editor/external/Orientation;)V
    .registers 3
    .param p1, "orientation"    # Lcom/samsung/app/video/editor/external/Orientation;

    .line 362
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Orientation;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->orientation:I

    .line 363
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Element;->mOrientation:Lcom/samsung/app/video/editor/external/Orientation;

    .line 364
    return-void
.end method

.method public setOverLapAtEnd(I)Z
    .registers 3
    .param p1, "overLapAtEnd"    # I

    .line 803
    if-gez p1, :cond_4

    .line 804
    const/4 v0, 0x0

    return v0

    .line 805
    :cond_4
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->overLapAtEnd:I

    .line 806
    const/4 v0, 0x1

    return v0
.end method

.method public setOverLapAtStart(I)Z
    .registers 3
    .param p1, "overLapAtStart"    # I

    .line 793
    if-gez p1, :cond_4

    .line 794
    const/4 v0, 0x0

    return v0

    .line 795
    :cond_4
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->overLapAtStart:I

    .line 796
    const/4 v0, 0x1

    return v0
.end method

.method public setPerspectiveViewParams(Lcom/samsung/app/video/editor/external/PerspectiveViewParams;)V
    .registers 2
    .param p1, "mPerspectiveViewParams"    # Lcom/samsung/app/video/editor/external/PerspectiveViewParams;

    .line 919
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Element;->mPerspectiveViewParams:Lcom/samsung/app/video/editor/external/PerspectiveViewParams;

    .line 920
    return-void
.end method

.method public setRecordingFramerate(I)Z
    .registers 3
    .param p1, "framerate"    # I

    .line 1116
    if-gez p1, :cond_4

    .line 1117
    const/4 v0, 0x0

    return v0

    .line 1118
    :cond_4
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->recordingFramerate:I

    .line 1119
    const/4 v0, 0x1

    return v0
.end method

.method public setRecordingMode(Lcom/samsung/app/video/editor/external/RecordingMode;)Z
    .registers 3
    .param p1, "recordingMode"    # Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 370
    if-nez p1, :cond_4

    .line 371
    const/4 v0, 0x0

    return v0

    .line 372
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/RecordingMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->recordingMode:I

    .line 373
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public setRotateScaleFactor(F)V
    .registers 2
    .param p1, "rotatescalefactor"    # F

    .line 1107
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->rotateScaleFactor:F

    .line 1108
    return-void
.end method

.method public setSlowTVideo(Z)V
    .registers 2
    .param p1, "slowTVideo"    # Z

    .line 385
    iput-boolean p1, p0, Lcom/samsung/app/video/editor/external/Element;->isSlowTVideo:Z

    .line 386
    return-void
.end method

.method public setStartTime(I)Z
    .registers 8
    .param p1, "startTime"    # I

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStartTime : prevStartTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new startTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Element"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    if-gez p1, :cond_28

    .line 628
    const/4 v0, 0x0

    return v0

    .line 630
    :cond_28
    const/4 v0, 0x0

    .line 631
    .local v0, "delta":I
    iget v2, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    .line 632
    .local v2, "prevStartTime":I
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    .line 633
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    invoke-virtual {p0, v3}, Lcom/samsung/app/video/editor/external/Element;->isSuperSlow(Lcom/samsung/app/video/editor/external/RecordingMode;)Z

    move-result v3

    if-eqz v3, :cond_1aa

    .line 634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RecordingMode.SUPERSLOW - 2 : prevStartTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currStartTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    if-ge v2, p1, :cond_f4

    .line 636
    const-string v3, "StartTime Trimmed In"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    sub-int v0, p1, v2

    .line 638
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->regions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/Region;

    .line 639
    .local v3, "re":Lcom/samsung/app/video/editor/external/Region;
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-lt v4, v2, :cond_93

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, p1, :cond_93

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, v2, :cond_93

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-ge v4, p1, :cond_93

    .line 640
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v5, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int/2addr v4, v5

    sub-int/2addr v0, v4

    .line 641
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v5, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int/2addr v4, v5

    iget-object v5, v3, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v4, v5}, Lcom/samsung/app/video/editor/external/Element;->getSpeedvalue(ILcom/samsung/app/video/editor/external/Speed;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_ef

    .line 642
    :cond_93
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-lt v4, v2, :cond_b4

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, p1, :cond_b4

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, v2, :cond_b4

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, p1, :cond_b4

    .line 643
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int v4, p1, v4

    sub-int/2addr v0, v4

    .line 644
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int v4, p1, v4

    iget-object v5, v3, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v4, v5}, Lcom/samsung/app/video/editor/external/Element;->getSpeedvalue(ILcom/samsung/app/video/editor/external/Speed;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_ef

    .line 645
    :cond_b4
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, v2, :cond_d3

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, p1, :cond_d3

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, v2, :cond_d3

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-ge v4, p1, :cond_d3

    .line 646
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    sub-int/2addr v4, v2

    sub-int/2addr v0, v4

    .line 647
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    sub-int/2addr v4, v2

    iget-object v5, v3, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v4, v5}, Lcom/samsung/app/video/editor/external/Element;->getSpeedvalue(ILcom/samsung/app/video/editor/external/Speed;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_ef

    .line 648
    :cond_d3
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, v2, :cond_ef

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, p1, :cond_ef

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, v2, :cond_ef

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, p1, :cond_ef

    .line 649
    sub-int v4, p1, v2

    sub-int/2addr v0, v4

    .line 650
    sub-int v4, p1, v2

    iget-object v5, v3, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v4, v5}, Lcom/samsung/app/video/editor/external/Element;->getSpeedvalue(ILcom/samsung/app/video/editor/external/Speed;)I

    move-result v4

    add-int/2addr v0, v4

    .line 652
    .end local v3    # "re":Lcom/samsung/app/video/editor/external/Region;
    :cond_ef
    :goto_ef
    goto/16 :goto_64

    .line 653
    :cond_f1
    neg-int v0, v0

    goto/16 :goto_1ac

    .line 655
    :cond_f4
    if-ge p1, v2, :cond_1ac

    .line 656
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StartTime Trimmed Out - 2 : prevStartTime = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    sub-int v0, v2, p1

    .line 658
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->regions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/Region;

    .line 659
    .restart local v3    # "re":Lcom/samsung/app/video/editor/external/Region;
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-lt v4, p1, :cond_14b

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, v2, :cond_14b

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, p1, :cond_14b

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-ge v4, v2, :cond_14b

    .line 660
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v5, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int/2addr v4, v5

    sub-int/2addr v0, v4

    .line 661
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget v5, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int/2addr v4, v5

    iget-object v5, v3, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v4, v5}, Lcom/samsung/app/video/editor/external/Element;->getSpeedvalue(ILcom/samsung/app/video/editor/external/Speed;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1a7

    .line 662
    :cond_14b
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-lt v4, p1, :cond_16c

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, v2, :cond_16c

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, p1, :cond_16c

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, v2, :cond_16c

    .line 663
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int v4, v2, v4

    sub-int/2addr v0, v4

    .line 664
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int v4, v2, v4

    iget-object v5, v3, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v4, v5}, Lcom/samsung/app/video/editor/external/Element;->getSpeedvalue(ILcom/samsung/app/video/editor/external/Speed;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1a7

    .line 665
    :cond_16c
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, p1, :cond_18b

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, v2, :cond_18b

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, p1, :cond_18b

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-ge v4, v2, :cond_18b

    .line 666
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    sub-int/2addr v4, p1

    sub-int/2addr v0, v4

    .line 667
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    sub-int/2addr v4, p1

    iget-object v5, v3, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v4, v5}, Lcom/samsung/app/video/editor/external/Element;->getSpeedvalue(ILcom/samsung/app/video/editor/external/Speed;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1a7

    .line 668
    :cond_18b
    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, p1, :cond_1a7

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    if-ge v4, v2, :cond_1a7

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, p1, :cond_1a7

    iget v4, v3, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    if-lt v4, v2, :cond_1a7

    .line 669
    sub-int v4, v2, p1

    sub-int/2addr v0, v4

    .line 670
    sub-int v4, v2, p1

    iget-object v5, v3, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v4, v5}, Lcom/samsung/app/video/editor/external/Element;->getSpeedvalue(ILcom/samsung/app/video/editor/external/Speed;)I

    move-result v4

    add-int/2addr v0, v4

    .line 672
    .end local v3    # "re":Lcom/samsung/app/video/editor/external/Region;
    :cond_1a7
    :goto_1a7
    goto/16 :goto_11c

    :cond_1a9
    goto :goto_1ac

    .line 690
    :cond_1aa
    sub-int v0, v2, p1

    .line 693
    :cond_1ac
    :goto_1ac
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    if-eqz v1, :cond_1b3

    .line 694
    invoke-interface {v1, v0}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onDurationChange(I)V

    .line 696
    :cond_1b3
    const/4 v1, 0x1

    return v1
.end method

.method public setStoryBoardEndTime(I)Z
    .registers 3
    .param p1, "storyboardEndTime"    # I

    .line 823
    if-gez p1, :cond_4

    .line 824
    const/4 v0, 0x0

    return v0

    .line 825
    :cond_4
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->storyboardEndTime:I

    .line 826
    const/4 v0, 0x1

    return v0
.end method

.method public setStoryBoardStartTime(I)Z
    .registers 3
    .param p1, "storyboardStartTime"    # I

    .line 813
    if-gez p1, :cond_4

    .line 814
    const/4 v0, 0x0

    return v0

    .line 815
    :cond_4
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->storyboardStartTime:I

    .line 816
    const/4 v0, 0x1

    return v0
.end method

.method public setToneParams(Lcom/samsung/app/video/editor/external/ToneParams;)V
    .registers 2
    .param p1, "toneParams"    # Lcom/samsung/app/video/editor/external/ToneParams;

    .line 162
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Element;->toneParams:Lcom/samsung/app/video/editor/external/ToneParams;

    .line 163
    return-void
.end method

.method public setType(Lcom/samsung/app/video/editor/external/ElementType;)Z
    .registers 3
    .param p1, "elementType"    # Lcom/samsung/app/video/editor/external/ElementType;

    .line 592
    if-nez p1, :cond_4

    .line 593
    const/4 v0, 0x0

    return v0

    .line 594
    :cond_4
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Element;->mType:Lcom/samsung/app/video/editor/external/ElementType;

    .line 595
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/ElementType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->type:I

    .line 596
    const/4 v0, 0x1

    return v0
.end method

.method public setViewSize(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewSize width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Element"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->viewWidth:I

    .line 1065
    iput p2, p0, Lcom/samsung/app/video/editor/external/Element;->viewHeight:I

    .line 1066
    return-void
.end method

.method public setZoomFramePos(IIII)V
    .registers 5
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .line 1013
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->zoom_frame_x1:I

    .line 1014
    iput p3, p0, Lcom/samsung/app/video/editor/external/Element;->zoom_frame_x2:I

    .line 1015
    iput p2, p0, Lcom/samsung/app/video/editor/external/Element;->zoom_frame_y1:I

    .line 1016
    iput p4, p0, Lcom/samsung/app/video/editor/external/Element;->zoom_frame_y2:I

    .line 1017
    return-void
.end method
