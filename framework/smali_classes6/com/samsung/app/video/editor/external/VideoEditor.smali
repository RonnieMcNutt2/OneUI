.class public Lcom/samsung/app/video/editor/external/VideoEditor;
.super Ljava/lang/Object;
.source "VideoEditor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoEditor"

.field public static final VERSION:Ljava/lang/String; = "5.2.00"

.field private static instance:Lcom/samsung/app/video/editor/external/VideoEditor;


# instance fields
.field private mMainController:Lcom/samsung/app/video/editor/external/VEController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/app/video/editor/external/VideoEditor;->instance:Lcom/samsung/app/video/editor/external/VideoEditor;

    return-void
.end method

.method protected constructor <init>(Landroid/content/res/AssetManager;Landroid/content/Context;)V
    .registers 6
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "c"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "Creating VideoEditor instance"

    const-string v1, "VideoEditor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object v0, Lcom/samsung/app/video/editor/external/VideoEditor;->instance:Lcom/samsung/app/video/editor/external/VideoEditor;

    if-nez v0, :cond_42

    .line 37
    const-string v0, "SDK Version Name = 5.2.00"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Lcom/samsung/app/video/editor/external/VEController;

    invoke-direct {v0, p1}, Lcom/samsung/app/video/editor/external/VEController;-><init>(Landroid/content/res/AssetManager;)V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data path setting as "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/external/VideoEditor;->updatePackagePath(Ljava/lang/String;)Z

    .line 43
    return-void

    .line 34
    :cond_42
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot create, please use getInstance"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addEffectToVideoThumbnail(I[BIIILcom/samsung/app/video/editor/external/LUTInfo;ILcom/samsung/app/video/editor/external/LayerTransformParams;Lcom/samsung/app/video/editor/external/ThumbnailListener;)Z
    .registers 22
    .param p1, "id"    # I
    .param p2, "bytes"    # [B
    .param p3, "videoWidth"    # I
    .param p4, "videoHeight"    # I
    .param p5, "effectType"    # I
    .param p6, "lutInfo"    # Lcom/samsung/app/video/editor/external/LUTInfo;
    .param p7, "isEffect"    # I
    .param p8, "layerTransformInfo"    # Lcom/samsung/app/video/editor/external/LayerTransformParams;
    .param p9, "l"    # Lcom/samsung/app/video/editor/external/ThumbnailListener;

    .line 224
    const-string v0, "VideoEditor"

    const-string v1, "In addEffectToVideoThumbnailWithTransform()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-eqz p2, :cond_26

    if-ltz p3, :cond_26

    if-gez p4, :cond_f

    move-object v0, p0

    goto :goto_27

    .line 227
    :cond_f
    move-object v0, p0

    iget-object v2, v0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/samsung/app/video/editor/external/VEController;->addEffectToVideoThumbnailRequest(I[BIIILcom/samsung/app/video/editor/external/LUTInfo;ILcom/samsung/app/video/editor/external/LayerTransformParams;Lcom/samsung/app/video/editor/external/ThumbnailListener;)V

    .line 228
    const/4 v1, 0x1

    return v1

    .line 225
    :cond_26
    move-object v0, p0

    .line 226
    :goto_27
    const/4 v1, 0x0

    return v1
.end method

.method public changeSphericalSurface(Z)V
    .registers 3
    .param p1, "isSpherical"    # Z

    .line 455
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/VEController;->changeSphericalSurface(Z)V

    .line 456
    return-void
.end method

.method public clearEffectToVideoThumbnailRequest()V
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->clearEffectToVideoThumbnailRequest()V

    .line 416
    return-void
.end method

.method public clearStoryBoardThumbnailRequest()V
    .registers 2

    .line 422
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->clearStoryBoardThumbnailRequest()V

    .line 423
    return-void
.end method

.method public controlTone(Lcom/samsung/app/video/editor/external/ToneParams;)V
    .registers 4
    .param p1, "toneParams"    # Lcom/samsung/app/video/editor/external/ToneParams;

    .line 616
    const-string v0, "In controlTone()"

    const-string v1, "VideoEditor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    if-nez p1, :cond_e

    .line 618
    const-string v0, "controlTone: Null toneParams"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_e
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/VEController;->controlTone(Lcom/samsung/app/video/editor/external/ToneParams;)V

    .line 621
    return-void
.end method

.method public createFreeHandLayer(Lcom/samsung/app/video/editor/external/DoodleStroke;)V
    .registers 4
    .param p1, "doodleStroke"    # Lcom/samsung/app/video/editor/external/DoodleStroke;

    .line 466
    const-string v0, "VideoEditor"

    const-string v1, "In createFreeHandLayer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/VEController;->createFreeHandLayer(Lcom/samsung/app/video/editor/external/DoodleStroke;)V

    .line 468
    return-void
.end method

.method public createSummary(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;D)Z
    .registers 7
    .param p1, "input"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p2, "output"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p3, "mSummaryDuration"    # D

    .line 651
    const-string v0, "VideoEditor"

    const-string v1, "createSummary- Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v0, 0x0

    return v0
.end method

.method public createSummary(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;DLcom/samsung/app/video/editor/external/SummaryMode;)Z
    .registers 13
    .param p1, "input"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p2, "output"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p3, "mSummaryDuration"    # D
    .param p5, "mode"    # Lcom/samsung/app/video/editor/external/SummaryMode;

    .line 427
    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_b

    goto :goto_16

    .line 429
    :cond_b
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/app/video/editor/external/VEController;->createSummary(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;DLcom/samsung/app/video/editor/external/SummaryMode;)Z

    move-result v0

    return v0

    .line 428
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method public deinit()Z
    .registers 3

    .line 360
    const-string v0, "VideoEditor"

    const-string v1, "In deinit()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->deinit()V

    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method public destroySummary()Z
    .registers 2

    .line 433
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->destroySummary()Z

    move-result v0

    return v0
.end method

.method public export(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;)Z
    .registers 8
    .param p1, "inp"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p2, "exportParams"    # Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;

    .line 96
    const-string v0, "In export()"

    const-string v1, "VideoEditor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    if-eqz p1, :cond_68

    if-nez p2, :cond_c

    goto :goto_68

    .line 102
    :cond_c
    iget-object v0, p2, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->outputFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1d

    .line 103
    const-string v0, "export() - get outputFd from App"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    iget-object v1, p2, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->outputFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/app/video/editor/external/VEController;->export(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;Ljava/io/FileDescriptor;)V

    goto :goto_54

    .line 108
    :cond_1d
    const/4 v0, 0x0

    .line 109
    .local v0, "outputFd":Ljava/io/FileDescriptor;
    const/4 v1, 0x0

    .line 110
    .local v1, "file":Ljava/io/RandomAccessFile;
    iget-object v2, p2, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->outputFileName:Ljava/lang/String;

    .line 112
    .local v2, "FileName":Ljava/lang/String;
    :try_start_21
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rws"

    invoke-direct {v3, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 113
    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 114
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_32} :catch_3f
    .catchall {:try_start_21 .. :try_end_32} :catchall_3d

    move-object v0, v3

    .line 119
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v3, p1, p2, v0}, Lcom/samsung/app/video/editor/external/VEController;->export(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;Ljava/io/FileDescriptor;)V

    .line 121
    nop

    .line 122
    :try_start_39
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_4e

    goto :goto_53

    .line 119
    :catchall_3d
    move-exception v3

    goto :goto_56

    .line 115
    :catch_3f
    move-exception v3

    .line 116
    .local v3, "e":Ljava/lang/Exception;
    :try_start_40
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_3d

    .line 119
    .end local v3    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v3, p1, p2, v0}, Lcom/samsung/app/video/editor/external/VEController;->export(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;Ljava/io/FileDescriptor;)V

    .line 121
    if-eqz v1, :cond_53

    .line 122
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_53

    .line 123
    :catch_4e
    move-exception v3

    .line 124
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_54

    .line 125
    :cond_53
    :goto_53
    nop

    .line 129
    .end local v0    # "outputFd":Ljava/io/FileDescriptor;
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    .end local v2    # "FileName":Ljava/lang/String;
    :goto_54
    const/4 v0, 0x1

    return v0

    .line 119
    .restart local v0    # "outputFd":Ljava/io/FileDescriptor;
    .restart local v1    # "file":Ljava/io/RandomAccessFile;
    .restart local v2    # "FileName":Ljava/lang/String;
    :goto_56
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v4, p1, p2, v0}, Lcom/samsung/app/video/editor/external/VEController;->export(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;Ljava/io/FileDescriptor;)V

    .line 121
    if-eqz v1, :cond_66

    .line 122
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_66

    .line 123
    :catch_61
    move-exception v4

    .line 124
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_67

    .line 125
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_66
    :goto_66
    nop

    .line 126
    :goto_67
    throw v3

    .line 98
    .end local v0    # "outputFd":Ljava/io/FileDescriptor;
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    .end local v2    # "FileName":Ljava/lang/String;
    :cond_68
    :goto_68
    const/4 v0, 0x0

    return v0
.end method

.method public fetchLutInfo(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/LUTInfo;",
            ">;)V"
        }
    .end annotation

    .line 496
    .local p1, "lutInfo":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/LUTInfo;>;"
    const-string v0, "VideoEditor"

    const-string v1, "In fetchLutInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/VEController;->fetchLutInfo(Ljava/util/List;)V

    .line 498
    return-void
.end method

.method public forceStopSummaryCreation()Z
    .registers 2

    .line 437
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->forceStopSummaryCreation()Z

    move-result v0

    return v0
.end method

.method public getCurScalePosInfo([F[F)V
    .registers 5
    .param p1, "currScale"    # [F
    .param p2, "currPosition"    # [F

    .line 601
    const-string v0, "VideoEditor"

    const-string v1, "In getCurScalePosInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/app/video/editor/external/VEController;->getCurScalePosInfo([F[F)V

    .line 603
    return-void
.end method

.method public getCurrentPlayPosition()I
    .registers 3

    .line 280
    const-string v0, "VideoEditor"

    const-string v1, "In getCurrentPlayPosition()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->getCurrentPlayPosition()I

    move-result v0

    return v0
.end method

.method public getEngineVersion()Ljava/lang/String;
    .registers 3

    .line 639
    const-string v0, "VideoEditor"

    const-string v1, "In getEngineVersion()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->getEngineVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayerTransformInfo(Lcom/samsung/app/video/editor/external/GraphicLayerType;IZ)Lcom/samsung/app/video/editor/external/LayerTransformParams;
    .registers 6
    .param p1, "type"    # Lcom/samsung/app/video/editor/external/GraphicLayerType;
    .param p2, "index"    # I
    .param p3, "clearRotation"    # Z

    .line 520
    const-string v0, "VideoEditor"

    const-string v1, "In getLayerTransformInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/app/video/editor/external/VEController;->getLayerTransformInfo(Lcom/samsung/app/video/editor/external/GraphicLayerType;IZ)Lcom/samsung/app/video/editor/external/LayerTransformParams;

    move-result-object v0

    return-object v0
.end method

.method public getMediaLayerVertices()[F
    .registers 3

    .line 666
    const-string v0, "VideoEditor"

    const-string v1, "getMediaLayerVertices- Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinBestMaxSummaryDurations()[I
    .registers 3

    .line 486
    const-string v0, "VideoEditor"

    const-string v1, "In getMinBestMaxSummaryDurations()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->getMinBestMaxSummaryDurations()[I

    move-result-object v0

    return-object v0
.end method

.method public getPerspectiveViewInfo()Lcom/samsung/app/video/editor/external/PerspectiveViewParams;
    .registers 2

    .line 539
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->getPerspectiveViewInfo()Lcom/samsung/app/video/editor/external/PerspectiveViewParams;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewThumbnail(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIZLcom/samsung/app/video/editor/external/PreviewFrameType;FLjava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/List;)Z
    .registers 31
    .param p1, "firstElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p2, "secondElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p3, "time"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "isDetailedMode"    # Z
    .param p8, "type"    # Lcom/samsung/app/video/editor/external/PreviewFrameType;
    .param p9, "storyBoardTime"    # F
    .param p13, "framekey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "Lcom/samsung/app/video/editor/external/Element;",
            "JIIZ",
            "Lcom/samsung/app/video/editor/external/PreviewFrameType;",
            "F",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/StickerParams;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodleParams;",
            ">;)Z"
        }
    .end annotation

    .line 404
    .local p10, "clipartList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p11, "drawList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p12, "gifList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/StickerParams;>;"
    .local p14, "doodleList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    move-wide/from16 v14, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In getPreviewFrame() framekey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v13, p13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEditor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    if-eqz p1, :cond_56

    const-wide/16 v0, 0x0

    cmp-long v0, v14, v0

    if-ltz v0, :cond_56

    if-ltz p5, :cond_56

    if-gez p6, :cond_33

    goto :goto_56

    .line 407
    :cond_33
    move-object/from16 v12, p0

    iget-object v0, v12, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    invoke-virtual/range {v0 .. v14}, Lcom/samsung/app/video/editor/external/VEController;->getPreviewThumbnail(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIZLcom/samsung/app/video/editor/external/PreviewFrameType;FLjava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/List;)V

    .line 408
    const/4 v0, 0x1

    return v0

    .line 406
    :cond_56
    :goto_56
    const/4 v0, 0x0

    return v0
.end method

.method public getStaticDoodleBuffer(Ljava/util/List;III)[B
    .registers 7
    .param p1, "doodleParams"    # Ljava/util/List;
    .param p2, "timeStamp"    # I
    .param p3, "doodleWidth"    # I
    .param p4, "doodleHeight"    # I

    .line 476
    const-string v0, "VideoEditor"

    const-string v1, "In getStaticDoodleBuffer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/app/video/editor/external/VEController;->getStaticDoodleBuffer(Ljava/util/List;III)[B

    move-result-object v0

    return-object v0
.end method

.method public getStoryboardThumbnail(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIZLcom/samsung/app/video/editor/external/ThumbnailType;FLjava/util/List;Ljava/util/List;Lcom/samsung/app/video/editor/external/ThumbnailListener;Ljava/util/List;)Z
    .registers 30
    .param p1, "firstElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p2, "secondElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p3, "time"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "isDetailedMode"    # Z
    .param p8, "type"    # Lcom/samsung/app/video/editor/external/ThumbnailType;
    .param p9, "storyBoardTime"    # F
    .param p12, "l"    # Lcom/samsung/app/video/editor/external/ThumbnailListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "Lcom/samsung/app/video/editor/external/Element;",
            "JIIZ",
            "Lcom/samsung/app/video/editor/external/ThumbnailType;",
            "F",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Lcom/samsung/app/video/editor/external/ThumbnailListener;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodleParams;",
            ">;)Z"
        }
    .end annotation

    .line 394
    .local p10, "clipartList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p11, "drawList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p13, "doodleList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    move-wide/from16 v14, p3

    move/from16 v13, p5

    move/from16 v12, p6

    const-string v0, "In getStoryboardThumbnail()"

    const-string v1, "VideoEditor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    if-eqz p1, :cond_3b

    const-wide/16 v2, 0x0

    cmp-long v0, v14, v2

    if-ltz v0, :cond_3b

    if-lez v13, :cond_3b

    if-gtz v12, :cond_1a

    goto :goto_3b

    .line 399
    :cond_1a
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-virtual/range {v0 .. v13}, Lcom/samsung/app/video/editor/external/VEController;->getStoryboardThumbnail(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIZLcom/samsung/app/video/editor/external/ThumbnailType;FLjava/util/List;Ljava/util/List;Lcom/samsung/app/video/editor/external/ThumbnailListener;Ljava/util/List;)V

    .line 400
    const/4 v0, 0x1

    return v0

    .line 396
    :cond_3b
    :goto_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In getStoryboardThumbnail: Invalid arguments time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; width = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v2, p5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; height = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v3, p6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public getSummaryElementInElementList(Lcom/samsung/app/video/editor/external/Element;I)Z
    .registers 4
    .param p1, "elem"    # Lcom/samsung/app/video/editor/external/Element;
    .param p2, "pos"    # I

    .line 441
    if-eqz p1, :cond_c

    if-gez p2, :cond_5

    goto :goto_c

    .line 443
    :cond_5
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/app/video/editor/external/VEController;->getSummaryElementInElementList(Lcom/samsung/app/video/editor/external/Element;I)Z

    move-result v0

    return v0

    .line 442
    :cond_c
    :goto_c
    const/4 v0, 0x0

    return v0
.end method

.method public getSupportFeature()I
    .registers 3

    .line 672
    const-string v0, "VideoEditor"

    const-string v1, "In getSupportFeature()- Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoDuration(Ljava/lang/String;)I
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 303
    const-string v0, "VideoEditor"

    const-string v1, "In getVideoDuration()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    if-nez p1, :cond_b

    .line 305
    const/4 v0, -0x1

    return v0

    .line 306
    :cond_b
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/VEController;->getVideoDuration(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVideoThumbnail([BIIILcom/samsung/app/video/editor/external/LUTInfo;ILcom/samsung/app/video/editor/external/LayerTransformParams;)Landroid/graphics/Bitmap;
    .registers 18
    .param p1, "bytes"    # [B
    .param p2, "videoWidth"    # I
    .param p3, "videoHeight"    # I
    .param p4, "effectType"    # I
    .param p5, "lutInfo"    # Lcom/samsung/app/video/editor/external/LUTInfo;
    .param p6, "isEffect"    # I
    .param p7, "layerTransformInfo"    # Lcom/samsung/app/video/editor/external/LayerTransformParams;

    .line 232
    const-string v0, "VideoEditor"

    const-string v1, "In getVideoThumbnail()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-eqz p1, :cond_20

    if-ltz p2, :cond_20

    if-gez p3, :cond_f

    move-object v0, p0

    goto :goto_21

    .line 236
    :cond_f
    move-object v0, p0

    iget-object v2, v0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/app/video/editor/external/VEController;->getVideoThumbnail([BIIILcom/samsung/app/video/editor/external/LUTInfo;ILcom/samsung/app/video/editor/external/LayerTransformParams;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 233
    :cond_20
    move-object v0, p0

    .line 234
    :goto_21
    const/4 v1, 0x0

    return-object v1
.end method

.method public getVideoTimestamp()I
    .registers 3

    .line 291
    const-string v0, "VideoEditor"

    const-string v1, "In getVideoTimestamp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->getVideoTimestamp()I

    move-result v0

    return v0
.end method

.method public init()Z
    .registers 3

    .line 67
    const-string v0, "VideoEditor"

    const-string v1, "In init() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->init()V

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedImage(Ljava/lang/String;)I
    .registers 4
    .param p1, "filepath"    # Ljava/lang/String;

    .line 192
    const-string v0, "VideoEditor"

    const-string v1, "In isSupportedImage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-nez p1, :cond_b

    .line 194
    const/4 v0, -0x2

    return v0

    .line 195
    :cond_b
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/VEController;->findIfJpeg(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isSupportedVideo(Ljava/lang/String;)I
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .line 334
    const-string v0, "VideoEditor"

    const-string v1, "In isSupportedVideo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    if-nez p1, :cond_b

    .line 336
    const/4 v0, -0x1

    return v0

    .line 337
    :cond_b
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/VEController;->getFileProperties(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isUHDFileSupported()Lcom/samsung/app/video/editor/external/UHDMode;
    .registers 2

    .line 461
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->isUHDFileSupported()Lcom/samsung/app/video/editor/external/UHDMode;

    move-result-object v0

    return-object v0
.end method

.method public launch()V
    .registers 3

    .line 79
    const-string v0, "VideoEditor"

    const-string v1, "In launch() SDK Version Name = 5.2.00"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->launch()V

    .line 84
    sget-object v0, Lcom/samsung/app/video/editor/external/AppName;->APP_NAME_VE_FULL:Lcom/samsung/app/video/editor/external/AppName;

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/external/VideoEditor;->setAppName(Lcom/samsung/app/video/editor/external/AppName;)Z

    .line 86
    return-void
.end method

.method public pause(Z)I
    .registers 4
    .param p1, "mode"    # Z

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In pause() -  mode :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEditor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-nez p1, :cond_24

    .line 258
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->pausePreview()V

    .line 259
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/VideoEditor;->getCurrentPlayPosition()I

    move-result v0

    return v0

    .line 262
    :cond_24
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->pauseExport()I

    move-result v0

    return v0
.end method

.method public performCrop(Lcom/samsung/app/video/editor/external/ROIInfo;II[F[F[F)V
    .registers 16
    .param p1, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;
    .param p2, "initROIWidth"    # I
    .param p3, "initROIHeight"    # I
    .param p4, "pan"    # [F
    .param p5, "scale"    # [F
    .param p6, "pivot"    # [F

    .line 565
    const-string v0, "VideoEditor"

    const-string v1, "In performCrop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/app/video/editor/external/VEController;->performCrop(Lcom/samsung/app/video/editor/external/ROIInfo;II[F[F[F)V

    .line 567
    return-void
.end method

.method public performCrop(Lcom/samsung/app/video/editor/external/ROIInfo;II[F[F[FZ)V
    .registers 17
    .param p1, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;
    .param p2, "initROIWidth"    # I
    .param p3, "initROIHeight"    # I
    .param p4, "pan"    # [F
    .param p5, "scale"    # [F
    .param p6, "pivot"    # [F
    .param p7, "isROIDeltaReset"    # Z

    .line 571
    const-string v0, "VideoEditor"

    const-string v1, "In performCrop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/app/video/editor/external/VEController;->performCrop(Lcom/samsung/app/video/editor/external/ROIInfo;II[F[F[FZ)V

    .line 573
    return-void
.end method

.method public performFlip(ZZZ)V
    .registers 6
    .param p1, "axisX"    # Z
    .param p2, "axisY"    # Z
    .param p3, "axisZ"    # Z

    .line 514
    const-string v0, "VideoEditor"

    const-string v1, "In performFlip()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/app/video/editor/external/VEController;->performFlip(ZZZ)V

    .line 517
    return-void
.end method

.method public performPanning(FF)V
    .registers 5
    .param p1, "dX"    # F
    .param p2, "dY"    # F

    .line 508
    const-string v0, "VideoEditor"

    const-string v1, "In performPanning()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/app/video/editor/external/VEController;->performPanning(FF)V

    .line 510
    return-void
.end method

.method public performRotation(Lcom/samsung/app/video/editor/external/RotationType;[FLcom/samsung/app/video/editor/external/ROIInfo;II[F[FLcom/samsung/app/video/editor/external/TransformOrder;)F
    .registers 19
    .param p1, "type"    # Lcom/samsung/app/video/editor/external/RotationType;
    .param p2, "degree"    # [F
    .param p3, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;
    .param p4, "initROIWidth"    # I
    .param p5, "initROIHeight"    # I
    .param p6, "roiScale"    # [F
    .param p7, "userScale"    # [F
    .param p8, "order"    # Lcom/samsung/app/video/editor/external/TransformOrder;

    .line 553
    const-string v0, "VideoEditor"

    const-string v1, "In performRotation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/app/video/editor/external/VEController;->performRotation(Lcom/samsung/app/video/editor/external/RotationType;[FLcom/samsung/app/video/editor/external/ROIInfo;II[F[FLcom/samsung/app/video/editor/external/TransformOrder;)F

    move-result v1

    return v1
.end method

.method public performRotation(Lcom/samsung/app/video/editor/external/RotationType;[FLcom/samsung/app/video/editor/external/ROIInfo;II[F[FLcom/samsung/app/video/editor/external/TransformOrder;Z)F
    .registers 21
    .param p1, "type"    # Lcom/samsung/app/video/editor/external/RotationType;
    .param p2, "degree"    # [F
    .param p3, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;
    .param p4, "initROIWidth"    # I
    .param p5, "initROIHeight"    # I
    .param p6, "roiScale"    # [F
    .param p7, "userScale"    # [F
    .param p8, "order"    # Lcom/samsung/app/video/editor/external/TransformOrder;
    .param p9, "isROIDeltaReset"    # Z

    .line 559
    const-string v0, "VideoEditor"

    const-string v1, "In performRotation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/app/video/editor/external/VEController;->performRotation(Lcom/samsung/app/video/editor/external/RotationType;[FLcom/samsung/app/video/editor/external/ROIInfo;II[F[FLcom/samsung/app/video/editor/external/TransformOrder;Z)F

    move-result v1

    return v1
.end method

.method public performSkew([FLcom/samsung/app/video/editor/external/TransformOrder;Z[F)V
    .registers 7
    .param p1, "degree"    # [F
    .param p2, "order"    # Lcom/samsung/app/video/editor/external/TransformOrder;
    .param p3, "isPrespectiveEnable"    # Z
    .param p4, "prespectiveMatrix"    # [F

    .line 596
    const-string v0, "VideoEditor"

    const-string v1, "In performSkew()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/app/video/editor/external/VEController;->performSkew([FLcom/samsung/app/video/editor/external/TransformOrder;Z[F)V

    .line 598
    return-void
.end method

.method public performZoom(FFFFFF)V
    .registers 16
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "scaleZ"    # F
    .param p4, "pivotX"    # F
    .param p5, "pivotY"    # F
    .param p6, "pivotZ"    # F

    .line 502
    const-string v0, "VideoEditor"

    const-string v1, "In performZoom()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/app/video/editor/external/VEController;->performZoom(FFFFFF)V

    .line 504
    return-void
.end method

.method public play(ILcom/samsung/app/video/editor/external/TranscodeElement;)Z
    .registers 5
    .param p1, "currTime"    # I
    .param p2, "transcodeElement"    # Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 179
    const-string v0, "VideoEditor"

    const-string v1, "In play()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-ltz p1, :cond_13

    if-nez p2, :cond_c

    goto :goto_13

    .line 182
    :cond_c
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/app/video/editor/external/VEController;->play(ILcom/samsung/app/video/editor/external/TranscodeElement;)Z

    move-result v0

    return v0

    .line 181
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method public prepareSurface(Landroid/view/Surface;IIIIIILcom/samsung/app/video/editor/external/ROIInfo;Lcom/samsung/app/video/editor/external/ROIDeltaInfo;II)Z
    .registers 14
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "graphicbufferWidth"    # I
    .param p3, "graphicbufferHeight"    # I
    .param p4, "thumbnailWidth"    # I
    .param p5, "thumbnailHeight"    # I
    .param p6, "viewportWidth"    # I
    .param p7, "viewportHeight"    # I
    .param p8, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;
    .param p9, "roiDeltaInfo"    # Lcom/samsung/app/video/editor/external/ROIDeltaInfo;
    .param p10, "initRoiW"    # I
    .param p11, "initRoiH"    # I

    .line 647
    const-string v0, "VideoEditor"

    const-string v1, "In prepareSurface() - roiDeltaInfo - Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v0, 0x0

    return v0
.end method

.method public prepareSurface(Landroid/view/Surface;IIIIIILcom/samsung/app/video/editor/external/ROIInfo;Lcom/samsung/app/video/editor/external/ROIDeltaInfo;IIZ)Z
    .registers 27
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "graphicbufferWidth"    # I
    .param p3, "graphicbufferHeight"    # I
    .param p4, "thumbnailWidth"    # I
    .param p5, "thumbnailHeight"    # I
    .param p6, "viewportWidth"    # I
    .param p7, "viewportHeight"    # I
    .param p8, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;
    .param p9, "roiDeltaInfo"    # Lcom/samsung/app/video/editor/external/ROIDeltaInfo;
    .param p10, "initRoiW"    # I
    .param p11, "initRoiH"    # I
    .param p12, "isReconfigureMode"    # Z

    .line 162
    move-object v0, p0

    const-string v1, "VideoEditor"

    const-string v2, "In prepareSurface() - roiDeltaInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-eqz p1, :cond_36

    if-ltz p2, :cond_36

    if-gez p3, :cond_13

    move/from16 v2, p4

    move/from16 v3, p5

    goto :goto_3a

    .line 165
    :cond_13
    iget-object v3, v0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v3 .. v13}, Lcom/samsung/app/video/editor/external/VEController;->prepareSurface(Landroid/view/Surface;IIIILcom/samsung/app/video/editor/external/ROIInfo;Lcom/samsung/app/video/editor/external/ROIDeltaInfo;IIZ)V

    .line 166
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v1, v2, v3}, Lcom/samsung/app/video/editor/external/VEController;->setThumbnailParams(II)V

    .line 167
    const/4 v1, 0x1

    return v1

    .line 163
    :cond_36
    move/from16 v2, p4

    move/from16 v3, p5

    .line 164
    :goto_3a
    const/4 v1, 0x0

    return v1
.end method

.method public releaseSurface()V
    .registers 3

    .line 202
    const-string v0, "VideoEditor"

    const-string v1, "In releasesurface()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->destroySurface()V

    .line 207
    return-void
.end method

.method public resetSphericalSurface(Z)V
    .registers 3
    .param p1, "isSpherical"    # Z

    .line 458
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/VEController;->resetSphericalSurface(Z)V

    .line 459
    return-void
.end method

.method public resume(ZI)Z
    .registers 5
    .param p1, "mode"    # Z
    .param p2, "time"    # I

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In resume - mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEditor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    .line 141
    if-gez p2, :cond_28

    .line 142
    return v0

    .line 143
    :cond_28
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p2}, Lcom/samsung/app/video/editor/external/VEController;->resumeExport(I)V

    .line 144
    const/4 v0, 0x1

    return v0

    .line 147
    :cond_2f
    return v0
.end method

.method public rotateMediaLayer([FFLcom/samsung/app/video/editor/external/TransformOrder;Z[F)V
    .registers 8
    .param p1, "axis"    # [F
    .param p2, "degree"    # F
    .param p3, "order"    # Lcom/samsung/app/video/editor/external/TransformOrder;
    .param p4, "isPrespectiveEnable"    # Z
    .param p5, "prespectiveMatrix"    # [F

    .line 663
    const-string v0, "VideoEditor"

    const-string v1, "In rotateMediaLayer()- Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    return-void
.end method

.method public setAppName(Lcom/samsung/app/video/editor/external/AppName;)Z
    .registers 4
    .param p1, "name"    # Lcom/samsung/app/video/editor/external/AppName;

    .line 240
    if-nez p1, :cond_4

    .line 241
    const/4 v0, 0x0

    return v0

    .line 242
    :cond_4
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/AppName;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/VEController;->setAppName(I)V

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public setLayerTransformInfo(Lcom/samsung/app/video/editor/external/LayerTransformParams;)V
    .registers 4
    .param p1, "params"    # Lcom/samsung/app/video/editor/external/LayerTransformParams;

    .line 526
    const-string v0, "VideoEditor"

    const-string v1, "In setLayerTransformParams()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/VEController;->setLayerTransformInfo(Lcom/samsung/app/video/editor/external/LayerTransformParams;)V

    .line 528
    return-void
.end method

.method public setSurfaceZoom(FFFF)V
    .registers 7
    .param p1, "anchorPointX1"    # F
    .param p2, "anchorPointY1"    # F
    .param p3, "anchorPointX2"    # F
    .param p4, "anchorPointY2"    # F

    .line 659
    const-string v0, "VideoEditor"

    const-string v1, "In setSurfaceZoom()- Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return-void
.end method

.method public setVEStateChangeListener(Lcom/samsung/app/video/editor/external/VECallbackListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/app/video/editor/external/VECallbackListener;

    .line 51
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/VEController;->setVEStateChangeListener(Lcom/samsung/app/video/editor/external/VECallbackListener;)V

    .line 52
    return-void
.end method

.method public setZoomLimitation(FFZ)V
    .registers 6
    .param p1, "minZoom"    # F
    .param p2, "maxZoom"    # F
    .param p3, "isInAppMode"    # Z

    .line 534
    const-string v0, "VideoEditor"

    const-string v1, "In setZoomLimitation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/app/video/editor/external/VEController;->setZoomLimitation(FFZ)V

    .line 536
    return-void
.end method

.method public stop()Z
    .registers 3

    .line 346
    const-string v0, "VideoEditor"

    const-string v1, "In stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->stop()V

    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method public terminate()V
    .registers 3

    .line 372
    const-string v0, "VideoEditor"

    const-string v1, "In terminate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->terminate()V

    .line 377
    return-void
.end method

.method public update(Lcom/samsung/app/video/editor/external/TranscodeElement;II)Z
    .registers 5
    .param p1, "transcodeElm"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p2, "param"    # I
    .param p3, "value"    # I

    .line 268
    if-eqz p1, :cond_e

    if-ltz p2, :cond_e

    if-gez p3, :cond_7

    goto :goto_e

    .line 270
    :cond_7
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/app/video/editor/external/VEController;->update(Lcom/samsung/app/video/editor/external/TranscodeElement;II)V

    .line 271
    const/4 v0, 0x1

    return v0

    .line 269
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method public updateDoodleSurfaceOnTouch(FFFFFFF)V
    .registers 10
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F
    .param p3, "touchZ"    # F
    .param p4, "tanX"    # F
    .param p5, "tanY"    # F
    .param p6, "pressure"    # F
    .param p7, "time"    # F

    .line 655
    const-string v0, "VideoEditor"

    const-string v1, "In updateDoodleSurfaceOnTouch() - Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return-void
.end method

.method public updateDoodleSurfaceOnTouch(Ljava/util/List;)V
    .registers 4
    .param p1, "doodlePoints"    # Ljava/util/List;

    .line 471
    const-string v0, "VideoEditor"

    const-string v1, "In updateDoodleSurfaceOnTouch()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/VEController;->updateDoodleSurfaceOnTouch(Ljava/util/List;)V

    .line 473
    return-void
.end method

.method public updateEngineDoodle(Lcom/samsung/app/video/editor/external/DoodleCommandInfo;)V
    .registers 4
    .param p1, "doodleCommandInfo"    # Lcom/samsung/app/video/editor/external/DoodleCommandInfo;

    .line 481
    const-string v0, "VideoEditor"

    const-string v1, "In updateEngineDoodle()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/VEController;->updateEngineDoodle(Lcom/samsung/app/video/editor/external/DoodleCommandInfo;)V

    .line 483
    return-void
.end method

.method public updateFrame()V
    .registers 3

    .line 625
    const-string v0, "VideoEditor"

    const-string v1, "In updateFrame()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->updateFrame()V

    .line 627
    return-void
.end method

.method public updateFrame(Lcom/samsung/app/video/editor/external/Element;JFIILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 26
    .param p1, "firstElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p2, "time"    # J
    .param p4, "storyBoardTime"    # F
    .param p5, "width"    # I
    .param p6, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "JFII",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/StickerParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodleParams;",
            ">;)Z"
        }
    .end annotation

    .line 631
    .local p7, "clipartList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p8, "drawList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p9, "gifList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/StickerParams;>;"
    .local p10, "doodleList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    move-wide/from16 v11, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In updateFrame() frametime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", storyBoardTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v13, p4

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEditor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    if-eqz p1, :cond_4e

    const-wide/16 v0, 0x0

    cmp-long v0, v11, v0

    if-ltz v0, :cond_4e

    if-ltz p5, :cond_4e

    if-gez p6, :cond_34

    move-object v14, p0

    goto :goto_4f

    .line 634
    :cond_34
    move-object v14, p0

    iget-object v0, v14, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/samsung/app/video/editor/external/VEController;->updateFrame(Lcom/samsung/app/video/editor/external/Element;JFIILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 635
    const/4 v0, 0x1

    return v0

    .line 632
    :cond_4e
    move-object v14, p0

    .line 633
    :goto_4f
    const/4 v0, 0x0

    return v0
.end method

.method public updateNextRoi(Lcom/samsung/app/video/editor/external/ROIInfo;Lcom/samsung/app/video/editor/external/TranscodeElement;)[F
    .registers 5
    .param p1, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;
    .param p2, "transcodeElement"    # Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 608
    const-string v0, "In updateNextRoi()"

    const-string v1, "VideoEditor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    if-nez p2, :cond_e

    .line 610
    const-string v0, "updateNextRoi: Null transcodeElement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_e
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/app/video/editor/external/VEController;->updateNextRoi(Lcom/samsung/app/video/editor/external/ROIInfo;Lcom/samsung/app/video/editor/external/TranscodeElement;)[F

    move-result-object v0

    return-object v0
.end method

.method public updatePackagePath(Ljava/lang/String;)Z
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 55
    if-nez p1, :cond_4

    .line 56
    const/4 v0, 0x0

    return v0

    .line 57
    :cond_4
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->updatePackagePathNative(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public updatePlayerParam(Lcom/samsung/app/video/editor/external/PlayerUpdateParams;)Z
    .registers 3
    .param p1, "params"    # Lcom/samsung/app/video/editor/external/PlayerUpdateParams;

    .line 545
    if-nez p1, :cond_4

    .line 546
    const/4 v0, 0x0

    return v0

    .line 547
    :cond_4
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/VEController;->updatePlayerParam(Lcom/samsung/app/video/editor/external/PlayerUpdateParams;)V

    .line 548
    const/4 v0, 0x1

    return v0
.end method

.method public updateRoi(Lcom/samsung/app/video/editor/external/ROIDeltaInfo;)Z
    .registers 3
    .param p1, "roiDeltaInfo"    # Lcom/samsung/app/video/editor/external/ROIDeltaInfo;

    .line 576
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/VEController;->updateRoi(Lcom/samsung/app/video/editor/external/ROIDeltaInfo;)V

    .line 577
    const/4 v0, 0x1

    return v0
.end method

.method public updateRoi(Lcom/samsung/app/video/editor/external/ROIDeltaInfo;Lcom/samsung/app/video/editor/external/ROIDeltaInfo;I)Z
    .registers 5
    .param p1, "fromRoiDeltaInfo"    # Lcom/samsung/app/video/editor/external/ROIDeltaInfo;
    .param p2, "toRoiDeltaInfo"    # Lcom/samsung/app/video/editor/external/ROIDeltaInfo;
    .param p3, "animDuration"    # I

    .line 581
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/app/video/editor/external/VEController;->updateRoi(Lcom/samsung/app/video/editor/external/ROIDeltaInfo;Lcom/samsung/app/video/editor/external/ROIDeltaInfo;I)V

    .line 582
    const/4 v0, 0x1

    return v0
.end method

.method public updateSummaryDuration(I)Z
    .registers 4
    .param p1, "duration"    # I

    .line 491
    const-string v0, "VideoEditor"

    const-string v1, "In updateSummaryDuration()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/VEController;->updateSummaryDuration(I)Z

    move-result v0

    return v0
.end method

.method public updateSurfaceOnTouch(FF)V
    .registers 4
    .param p1, "changeX"    # F
    .param p2, "changeY"    # F

    .line 447
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/app/video/editor/external/VEController;->updateSurfaceOnTouch(FF)V

    .line 448
    return-void
.end method

.method public updateSurfaceOnZoom(F)V
    .registers 3
    .param p1, "scalefactor"    # F

    .line 451
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/external/VEController;->updateSurfaceOnZoom(F)V

    .line 452
    return-void
.end method

.method public updateViewport(IILcom/samsung/app/video/editor/external/ROIDeltaInfo;)Z
    .registers 6
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "roiDeltaInfo"    # Lcom/samsung/app/video/editor/external/ROIDeltaInfo;

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In updateViewport() width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEditor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    if-ltz p1, :cond_2e

    if-gez p2, :cond_27

    goto :goto_2e

    .line 590
    :cond_27
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VideoEditor;->mMainController:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/app/video/editor/external/VEController;->updateViewport(IILcom/samsung/app/video/editor/external/ROIDeltaInfo;)V

    .line 591
    const/4 v0, 0x1

    return v0

    .line 589
    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    return v0
.end method
