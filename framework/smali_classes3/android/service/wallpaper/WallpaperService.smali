.class public abstract Landroid/service/wallpaper/WallpaperService;
.super Landroid/app/Service;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;,
        Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;,
        Landroid/service/wallpaper/WallpaperService$Engine;,
        Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DEFAULT_UPDATE_SCREENSHOT_DURATION:J = 0xea60L

.field private static final DIMMING_ANIMATION_DURATION_MS:J = 0x12cL

.field private static final DO_ATTACH:I = 0xa

.field private static final DO_DETACH:I = 0x14

.field private static final DO_IN_AMBIENT_MODE:I = 0x32

.field private static final DO_SET_DESIRED_SIZE:I = 0x1e

.field private static final DO_SET_DISPLAY_PADDING:I = 0x28

.field private static final ENABLE_WALLPAPER_DIMMING:Z = false

.field private static final LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

.field private static final MIN_BITMAP_SCREENSHOT_WIDTH:I = 0x40

.field static final MIN_PAGE_ALLOWED_MARGIN:F = 0.05f

.field private static final MSG_REPORT_SHOWN:I = 0x27a6

.field private static final MSG_REQUEST_WALLPAPER_COLORS:I = 0x2742

.field private static final MSG_RESIZE_PREVIEW:I = 0x277e

.field private static final MSG_TOUCH_EVENT:I = 0x2738

.field private static final MSG_UPDATE_DIMMING:I = 0x27d8

.field private static final MSG_UPDATE_SCREEN_TURNING_ON:I = 0x27ba

.field private static final MSG_UPDATE_SURFACE:I = 0x2710

.field private static final MSG_VISIBILITY_CHANGED:I = 0x271a

.field private static final MSG_WALLPAPER_COMMAND:I = 0x2729

.field private static final MSG_WALLPAPER_FLAGS_CHANGED:I = 0x27e2

.field private static final MSG_WALLPAPER_OFFSETS:I = 0x2724

.field private static final MSG_WINDOW_MOVED:I = 0x2733

.field private static final MSG_WINDOW_RESIZED:I = 0x272e

.field private static final MSG_ZOOM:I = 0x2774

.field private static final NOTIFY_COLORS_RATE_LIMIT_MS:I = 0x3e8

.field private static final PROCESS_LOCAL_COLORS_INTERVAL_MS:I = 0x7d0

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.wallpaper.WallpaperService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.service.wallpaper"

.field static final TAG:Ljava/lang/String; = "WallpaperService"


# instance fields
.field private final mActiveEngines:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mIsWearOs:Z

.field protected mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActiveEngines(Landroid/service/wallpaper/WallpaperService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackgroundHandler(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWearOs(Landroid/service/wallpaper/WallpaperService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/wallpaper/WallpaperService;->mIsWearOs:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService;->isValid(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 176
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Landroid/service/wallpaper/WallpaperService;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 152
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 217
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    return-void
.end method

.method private inRectFRange(F)Z
    .registers 3
    .param p1, "number"    # F

    .line 2831
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private isValid(Landroid/graphics/RectF;)Z
    .registers 5
    .param p1, "area"    # Landroid/graphics/RectF;

    .line 2824
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2825
    :cond_4
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1e

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1e

    sget-object v1, Landroid/service/wallpaper/WallpaperService;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 2826
    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 2827
    .local v0, "valid":Z
    :goto_1f
    return v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3365
    const-string v0, "State of wallpaper "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3366
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3367
    :try_start_10
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 3368
    .local v2, "engineWrapper":Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
    iget-object v3, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 3369
    .local v3, "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    if-nez v3, :cond_49

    .line 3370
    const-string v4, "WallpaperService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Engine for wrapper "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not attached"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    goto :goto_1a

    .line 3373
    :cond_49
    const-string v4, "  Engine "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3374
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3375
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3376
    const-string v4, "    "

    invoke-virtual {v3, v4, p1, p2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3377
    .end local v2    # "engineWrapper":Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
    .end local v3    # "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    goto :goto_1a

    .line 3378
    :cond_5c
    monitor-exit v0

    .line 3379
    return-void

    .line 3378
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_10 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3342
    const-string v0, "WallpaperService"

    const-string/jumbo v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    new-instance v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;

    invoke-direct {v0, p0, p0}, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;-><init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;)V

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .line 3304
    const-string v0, "WPMS.onCreate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3305
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DefaultWallpaperLocalColorExtractor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 3306
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3307
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mBackgroundHandler:Landroid/os/Handler;

    .line 3308
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService;->mIsWearOs:Z

    .line 3309
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 3310
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3312
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 3314
    return-void
.end method

.method public abstract onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
.end method

.method public onCreateSubEngine(I)Landroid/service/wallpaper/WallpaperService$Engine;
    .registers 3
    .param p1, "displayId"    # I

    .line 3359
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 4

    .line 3318
    const-string v0, "WPMS.onDestroy"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3319
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 3320
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3321
    :try_start_b
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 3322
    .local v2, "engineWrapper":Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->destroy()V

    .line 3323
    .end local v2    # "engineWrapper":Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
    goto :goto_15

    .line 3324
    :cond_25
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 3325
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_36

    .line 3326
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_32

    .line 3330
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 3332
    :cond_32
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3333
    return-void

    .line 3325
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public onProvideEngineLooper()Landroid/os/Looper;
    .registers 2

    .line 2820
    invoke-super {p0}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
