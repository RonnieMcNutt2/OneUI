.class public Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
.super Ljava/lang/Object;
.source "SemPhotoRemasterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;,
        Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;,
        Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IBitmapParamGetter;,
        Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;,
        Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ILongParamGetter;
    }
.end annotation


# static fields
.field public static final PARAMETER_AMOUNT_REMASTER_IMAGES:I = 0x3ee

.field private static final PARAMETER_ENGINE_VERSION:I = 0x3e8

.field private static final PARAMETER_ENHANCEMENT_STRENGTH:I = 0x3f4

.field private static final PARAMETER_ENHANCERS_EXCLUDE_LIST:I = 0x3f1

.field private static final PARAMETER_ENHANCERS_INCLUDE_LIST:I = 0x3f5

.field public static final PARAMETER_ENUM_ENHANCE_TYPE:I = 0x899

.field private static final PARAMETER_GIF_SAVE_FORMAT:I = 0x3f2

.field private static final PARAMETER_INPUT_BITMAP:I = 0x3f6

.field public static final PARAMETER_JPEG_QUALITY:I = 0x3f0

.field public static final PARAMETER_LAST_MODIFIED_DATETIME_INPUT:I = 0x3ec

.field private static final PARAMETER_OUTPUT_BITMAP:I = 0x89b

.field public static final PARAMETER_PATH_INPUT:I = 0x3ea

.field public static final PARAMETER_PATH_RESULT:I = 0x3eb

.field public static final PARAMETER_SCENETYPE_INPUT:I = 0x3ed

.field private static final PARAMETER_SERVICE_PURPOSE:I = 0x3f3

.field public static final PARAMETER_SET_OUTPUT_DIR:I = 0x3ef

.field public static final PARAMETER_TAG_ANALYZED_FULL:I = 0x835

.field public static final PARAMETER_TAG_ENHANCE_TYPE:I = 0x836

.field public static final PARAMETER_TAG_REVITALIZED:I = 0x837

.field private static final PARAMETER_TAG_SUGGESTION_ENHANCE_LIST:I = 0x89a

.field public static final PARAMETER_URI_INPUT:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "SemPhotoRemasterManager"

.field private static sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;


# instance fields
.field private final mParamGetterType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smgetEngineInstance()Lcom/samsung/android/photoremaster/IDirector;
    .registers 1

    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;-><init>(Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;)V

    iput-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->mParamGetterType:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized getBitmapParameter(I)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "id"    # I

    monitor-enter p0

    .line 493
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->mParamGetterType:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;

    .line 496
    .local v0, "paramGetter":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;
    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;->getParam()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_44

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_46

    .line 497
    .local v1, "bitmapParcel":Landroid/graphics/Bitmap;
    monitor-exit p0

    return-object v1

    .line 499
    .end local v1    # "bitmapParcel":Landroid/graphics/Bitmap;
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    :cond_44
    monitor-exit p0

    return-object v2

    .line 492
    .end local v0    # "paramGetter":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;
    .end local p1    # "id":I
    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static declared-synchronized getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;
    .registers 3

    const-class v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;

    monitor-enter v0

    .line 288
    :try_start_3
    sget-object v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;

    if-nez v1, :cond_15

    .line 289
    const-string v1, "SemPhotoRemasterManager"

    const-string v2, "New Instance is created in getEngineInstance"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance v1, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;

    invoke-direct {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;-><init>()V

    sput-object v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;

    .line 292
    :cond_15
    sget-object v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v0

    return-object v1

    .line 287
    :catchall_19
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized releaseEngineInstance()V
    .registers 5

    monitor-enter p0

    .line 301
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 303
    monitor-exit p0

    return-void

    .line 300
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized deinit()V
    .registers 5

    monitor-enter p0

    .line 330
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/photoremaster/IDirector;->deinit()V

    .line 333
    invoke-direct {p0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->releaseEngineInstance()V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 334
    monitor-exit p0

    return-void

    .line 329
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFocusRoi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "originalImage"    # Ljava/lang/String;
    .param p2, "remasteredImage"    # Ljava/lang/String;

    monitor-enter p0

    .line 560
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/photoremaster/IDirector;->getFocusRoi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    monitor-exit p0

    return-object v0

    .line 559
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    .end local p1    # "originalImage":Ljava/lang/String;
    .end local p2    # "remasteredImage":Ljava/lang/String;
    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getParameter(I)Ljava/lang/String;
    .registers 6
    .param p1, "id"    # I

    monitor-enter p0

    .line 471
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->mParamGetterType:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;

    .line 474
    .local v0, "paramGetter":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;
    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;->getParam()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_44

    check-cast v1, Ljava/lang/String;
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_46

    .line 475
    .local v1, "paramAsString":Ljava/lang/String;
    monitor-exit p0

    return-object v1

    .line 478
    .end local v1    # "paramAsString":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    :cond_44
    monitor-exit p0

    return-object v2

    .line 470
    .end local v0    # "paramGetter":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;
    .end local p1    # "id":I
    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 311
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->init(Landroid/content/Context;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 313
    monitor-exit p0

    return-void

    .line 310
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized processImage(ILjava/util/List;)Z
    .registers 7
    .param p1, "processMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .local p2, "enhanceModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 367
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    .line 370
    .local v0, "director":Lcom/samsung/android/photoremaster/IDirector;
    instance-of v1, v0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;

    if-nez v1, :cond_3b

    .line 371
    const-string v1, "SemPhotoRemasterManager"

    const-string/jumbo v2, "processImage(int, List<Integer>) is not supported below OneUI 4.1"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_44

    .line 372
    monitor-exit p0

    return v3

    .line 375
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    :cond_3b
    :try_start_3b
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;

    .line 376
    .local v1, "remasterDirector":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->processImage(ILjava/util/List;)Z

    move-result v2
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_44

    monitor-exit p0

    return v2

    .line 366
    .end local v0    # "director":Lcom/samsung/android/photoremaster/IDirector;
    .end local v1    # "remasterDirector":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    .end local p1    # "processMode":I
    .end local p2    # "enhanceModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParameter(IJ)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "value"    # J

    monitor-enter p0

    .line 442
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/photoremaster/IDirector;->setLongParam(IJ)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 444
    monitor-exit p0

    return-void

    .line 441
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    .end local p1    # "id":I
    .end local p2    # "value":J
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParameter(ILjava/lang/Object;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 392
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    instance-of v0, p2, Landroid/net/Uri;

    if-nez v0, :cond_47

    .line 394
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to setParameter, value not of \'Uri\' type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_53

    .line 395
    monitor-exit p0

    return-void

    .line 397
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    :cond_47
    :try_start_47
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/net/Uri;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/photoremaster/IDirector;->setUriParam(ILandroid/net/Uri;)V
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_53

    .line 398
    monitor-exit p0

    return-void

    .line 391
    .end local p1    # "id":I
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_53
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParameter(ILjava/lang/String;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 423
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/photoremaster/IDirector;->setStringParam(ILjava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 425
    monitor-exit p0

    return-void

    .line 422
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    .end local p1    # "id":I
    .end local p2    # "value":Ljava/lang/String;
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgressUpdateListener(Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;

    monitor-enter p0

    .line 531
    if-nez p1, :cond_d

    .line 532
    :try_start_3
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/photoremaster/IDirector;->setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    .line 533
    monitor-exit p0

    return-void

    .line 536
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$2;-><init>(Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/photoremaster/IDirector;->setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1b

    .line 549
    monitor-exit p0

    return-void

    .line 530
    .end local p1    # "listener":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stop()V
    .registers 4

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is called!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemPhotoRemasterManager"

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/photoremaster/IDirector;->stop()V

    .line 343
    return-void
.end method

.method public declared-synchronized tryInit(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 322
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->tryInit(Landroid/content/Context;)Z

    move-result v0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    monitor-exit p0

    return v0

    .line 321
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method
