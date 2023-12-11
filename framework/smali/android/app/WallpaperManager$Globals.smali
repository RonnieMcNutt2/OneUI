.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Globals"
.end annotation


# instance fields
.field private mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

.field private mColorCallbackRegistered:Z

.field private final mColorListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/app/WallpaperManager$OnColorsChangedListener;",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private mIsCachedWallpaperForDeX:Z

.field private mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

.field private mLocalColorCallbackAreas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;",
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMainLooperHandler:Landroid/os/Handler;

.field private final mSemColorListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/app/OnSemColorsChangedListener;",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mService:Landroid/app/IWallpaperManager;

.field private mSubDefaultWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method public static synthetic $r8$lambda$QBmjdJXl6zSXqFSLJBcNAzxDPQE(Landroid/app/WallpaperManager$Globals;Landroid/util/Pair;Landroid/app/SemWallpaperColors;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/WallpaperManager$Globals;->lambda$onSemWallpaperColorsChanged$5(Landroid/util/Pair;Landroid/app/SemWallpaperColors;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RMMQjTiJSYineAc1wmBHnXKAa4k(Landroid/app/WallpaperManager$Globals;Landroid/util/Pair;Landroid/app/WallpaperColors;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/WallpaperManager$Globals;->lambda$onWallpaperColorsChanged$1(Landroid/util/Pair;Landroid/app/WallpaperColors;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLocalColorCallbackAreas(Landroid/app/WallpaperManager$Globals;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .registers 1

    iget-object p0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCurrentWallpaperLocked(Landroid/app/WallpaperManager$Globals;Landroid/content/Context;IIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;IIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V
    .registers 4
    .param p1, "service"    # Landroid/app/IWallpaperManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 737
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    .line 718
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    .line 720
    new-instance v0, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v0, p0}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;)V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

    .line 1345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mSemColorListeners:Ljava/util/ArrayList;

    .line 738
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 739
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mMainLooperHandler:Landroid/os/Handler;

    .line 740
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 741
    return-void
.end method

.method private checkDeviceDensity(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "which"    # I

    .line 1284
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    if-eqz v1, :cond_10d

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_10d

    .line 1286
    :cond_10
    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1287
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 1289
    .local v4, "display":Landroid/view/Display;
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v5, :cond_51

    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v5, :cond_51

    if-eqz v2, :cond_51

    .line 1290
    const-class v5, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 1291
    .local v5, "dm":Landroid/hardware/display/DisplayManager;
    invoke-static {v0, v2}, Landroid/app/WallpaperManager;->getDisplayId(Landroid/content/Context;I)I

    move-result v6

    .line 1292
    .local v6, "displayId":I
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkDeviceDensity getDisplayId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    .line 1296
    .end local v5    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v6    # "displayId":I
    :cond_51
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1297
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v4, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1298
    iget v6, v5, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {v1, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1300
    new-instance v6, Landroid/view/DisplayInfo;

    invoke-direct {v6}, Landroid/view/DisplayInfo;-><init>()V

    .line 1301
    .local v6, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v4, v6}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1302
    iget v7, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1303
    .local v7, "deviceHeight":I
    iget v8, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1304
    .local v8, "deviceWidth":I
    iget v9, v6, Landroid/view/DisplayInfo;->rotation:I

    .line 1305
    .local v9, "deviceRotation":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 1306
    .local v10, "bitmapHeight":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 1308
    .local v11, "bitmapWidth":I
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkDeviceDensity deviceRotation="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " deviceHeight="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " deviceWidth="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bitmapHeight="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bitmapWidth="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1315
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const/4 v13, 0x1

    if-eqz v12, :cond_c7

    const-string v14, "com.samsung.feature.device_category_tablet"

    invoke-virtual {v12, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c7

    move v14, v13

    goto :goto_c8

    :cond_c7
    const/4 v14, 0x0

    .line 1316
    .local v14, "isTablet":Z
    :goto_c8
    if-nez v14, :cond_d3

    .line 1317
    if-eq v9, v13, :cond_cf

    const/4 v13, 0x3

    if-ne v9, v13, :cond_d3

    .line 1318
    :cond_cf
    iget v7, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1319
    iget v8, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1324
    :cond_d3
    const/4 v13, 0x0

    .line 1325
    .local v13, "scale":F
    if-eqz v8, :cond_10a

    if-eqz v7, :cond_10a

    if-ge v8, v11, :cond_10a

    if-ge v7, v10, :cond_10a

    .line 1327
    int-to-float v15, v8

    int-to-float v0, v11

    div-float/2addr v15, v0

    int-to-float v0, v7

    int-to-float v2, v10

    div-float/2addr v0, v2

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1328
    .end local v13    # "scale":F
    .local v0, "scale":F
    move-object/from16 v2, p0

    invoke-direct {v2, v1, v0}, Landroid/app/WallpaperManager$Globals;->resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1329
    .local v13, "resizedBmp":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    .end local v3    # "wm":Landroid/view/WindowManager;
    .local v16, "wm":Landroid/view/WindowManager;
    const-string/jumbo v3, "resize scale down.:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    return-object v13

    .line 1325
    .end local v0    # "scale":F
    .end local v16    # "wm":Landroid/view/WindowManager;
    .restart local v3    # "wm":Landroid/view/WindowManager;
    .local v13, "scale":F
    :cond_10a
    move-object/from16 v16, v3

    .line 1333
    .end local v3    # "wm":Landroid/view/WindowManager;
    .restart local v16    # "wm":Landroid/view/WindowManager;
    return-object v1

    .line 1284
    .end local v4    # "display":Landroid/view/Display;
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v7    # "deviceHeight":I
    .end local v8    # "deviceWidth":I
    .end local v9    # "deviceRotation":I
    .end local v10    # "bitmapHeight":I
    .end local v11    # "bitmapWidth":I
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "scale":F
    .end local v14    # "isTablet":Z
    .end local v16    # "wm":Landroid/view/WindowManager;
    :cond_10d
    :goto_10d
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;IIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .param p4, "hardware"    # Z
    .param p5, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 1158
    move-object v10, p0

    const-string v11, "Can\'t decode file"

    iget-object v0, v10, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v12, 0x0

    if-nez v0, :cond_12

    .line 1159
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    return-object v12

    .line 1164
    :cond_12
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentWallpaperLocked userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v13, p3

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :try_start_3c
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1169
    .local v6, "params":Landroid/os/Bundle;
    iget-object v1, v10, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 1170
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    const/4 v9, -0x1

    .line 1169
    move-object v4, p0

    move/from16 v5, p2

    move/from16 v7, p3

    invoke-interface/range {v1 .. v9}, Landroid/app/IWallpaperManager;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZI)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_56} :catch_b6

    move-object v1, v0

    .line 1177
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_ad

    .line 1191
    :try_start_59
    new-instance v0, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda4;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-static {v0}, Landroid/graphics/ImageDecoder;->createSource(Ljava/util/concurrent/Callable;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 1196
    .local v0, "src":Landroid/graphics/ImageDecoder$Source;
    new-instance v2, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda5;
    :try_end_64
    .catch Ljava/lang/OutOfMemoryError; {:try_start_59 .. :try_end_64} :catch_9a
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_64} :catch_9a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_59 .. :try_end_64} :catch_8a
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_64} :catch_b6

    move/from16 v3, p4

    move-object/from16 v4, p5

    :try_start_68
    invoke-direct {v2, v3, v4}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda5;-><init>(ZLandroid/app/WallpaperManager$ColorManagementProxy;)V

    invoke-static {v0, v2}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_6f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_68 .. :try_end_6f} :catch_85
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6f} :catch_85
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_68 .. :try_end_6f} :catch_80
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6f} :catch_7b

    .line 1206
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object v5, p1

    move/from16 v7, p2

    :try_start_72
    invoke-direct {p0, p1, v2, v7}, Landroid/app/WallpaperManager$Globals;->checkDeviceDensity(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_76
    .catch Ljava/lang/OutOfMemoryError; {:try_start_72 .. :try_end_76} :catch_79
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_76} :catch_79
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_72 .. :try_end_76} :catch_77
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_76} :catch_ab

    return-object v8

    .line 1211
    .end local v0    # "src":Landroid/graphics/ImageDecoder$Source;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :catch_77
    move-exception v0

    goto :goto_92

    .line 1208
    :catch_79
    move-exception v0

    goto :goto_a2

    .line 1216
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "params":Landroid/os/Bundle;
    :catch_7b
    move-exception v0

    move-object v5, p1

    move/from16 v7, p2

    goto :goto_be

    .line 1211
    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "params":Landroid/os/Bundle;
    :catch_80
    move-exception v0

    move-object v5, p1

    move/from16 v7, p2

    goto :goto_92

    .line 1208
    :catch_85
    move-exception v0

    move-object v5, p1

    move/from16 v7, p2

    goto :goto_a2

    .line 1211
    :catch_8a
    move-exception v0

    move-object v5, p1

    move/from16 v7, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    .line 1212
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_92
    :try_start_92
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b4

    .line 1208
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_9a
    move-exception v0

    move-object v5, p1

    move/from16 v7, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    .line 1209
    .local v0, "e":Ljava/lang/Throwable;
    :goto_a2
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_a9} :catch_ab

    .line 1214
    nop

    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_b4

    .line 1216
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "params":Landroid/os/Bundle;
    :catch_ab
    move-exception v0

    goto :goto_be

    .line 1177
    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "params":Landroid/os/Bundle;
    :cond_ad
    move-object v5, p1

    move/from16 v7, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    .line 1218
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "params":Landroid/os/Bundle;
    :goto_b4
    nop

    .line 1219
    return-object v12

    .line 1216
    :catch_b6
    move-exception v0

    move-object v5, p1

    move/from16 v7, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    .line 1217
    .local v0, "e":Landroid/os/RemoteException;
    :goto_be
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private getDefaultWallpaper(I)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "which"    # I

    .line 1266
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1267
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mSubDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object v0

    .line 1269
    :cond_9
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .line 1223
    invoke-direct {p0, p2}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1224
    .local v0, "defaultWallpaper":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1225
    :cond_c
    const/4 v0, 0x0

    .line 1226
    :try_start_d
    invoke-static {p1, p2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_11} :catch_35
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_35

    .line 1227
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_2f

    .line 1228
    :try_start_13
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1232
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1233
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1, v3, p2}, Landroid/app/WallpaperManager$Globals;->checkDeviceDensity(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_23

    move-object v0, v4

    goto :goto_2f

    .line 1226
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_23
    move-exception v2

    if-eqz v1, :cond_2e

    :try_start_26
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v3

    :try_start_2b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "defaultWallpaper":Landroid/graphics/Bitmap;
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "which":I
    :cond_2e
    :goto_2e
    throw v2

    .line 1236
    .restart local v0    # "defaultWallpaper":Landroid/graphics/Bitmap;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "which":I
    :cond_2f
    :goto_2f
    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2b .. :try_end_34} :catch_35
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_34} :catch_35

    .line 1238
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_34
    goto :goto_3f

    .line 1236
    :catch_35
    move-exception v1

    .line 1237
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can\'t decode stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1241
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_3f
    :goto_3f
    monitor-enter p0

    .line 1242
    :try_start_40
    invoke-direct {p0, p2, v0}, Landroid/app/WallpaperManager$Globals;->setDefaultWallpaper(ILandroid/graphics/Bitmap;)V

    .line 1243
    monitor-exit p0

    .line 1244
    return-object v0

    .line 1243
    :catchall_45
    move-exception v1

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_45

    throw v1
.end method

.method private isStaticWallpaper(I)Z
    .registers 4
    .param p1, "which"    # I

    .line 1253
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-eqz v0, :cond_f

    .line 1258
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->isStaticWallpaper(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 1259
    :catch_9
    move-exception v0

    .line 1260
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1254
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic lambda$getCurrentWallpaperLocked$2(Landroid/os/ParcelFileDescriptor;)Landroid/content/res/AssetFileDescriptor;
    .registers 8
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1192
    new-instance v6, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    .line 1193
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    return-object v0
.end method

.method static synthetic lambda$getCurrentWallpaperLocked$3(ZLandroid/app/WallpaperManager$ColorManagementProxy;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 6
    .param p0, "hardware"    # Z
    .param p1, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;
    .param p2, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p3, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p4, "source"    # Landroid/graphics/ImageDecoder$Source;

    .line 1199
    xor-int/lit8 v0, p0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/ImageDecoder;->setMutableRequired(Z)V

    .line 1201
    if-eqz p1, :cond_a

    .line 1202
    invoke-virtual {p1, p2, p3}, Landroid/app/WallpaperManager$ColorManagementProxy;->doColorManagement(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;)V

    .line 1204
    :cond_a
    return-void
.end method

.method private synthetic lambda$onSemWallpaperColorsChanged$5(Landroid/util/Pair;Landroid/app/SemWallpaperColors;I)V
    .registers 6
    .param p1, "listener"    # Landroid/util/Pair;
    .param p2, "colors"    # Landroid/app/SemWallpaperColors;
    .param p3, "which"    # I

    .line 1395
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetsGlobals()Landroid/app/WallpaperManager$Globals;

    move-result-object v0

    monitor-enter v0

    .line 1396
    :try_start_5
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mSemColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1397
    .local v1, "stillExists":Z
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_16

    .line 1398
    if-eqz v1, :cond_15

    .line 1399
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/OnSemColorsChangedListener;

    invoke-interface {v0, p2, p3}, Landroid/app/OnSemColorsChangedListener;->onColorsChanged(Landroid/app/SemWallpaperColors;I)V

    .line 1401
    :cond_15
    return-void

    .line 1397
    .end local v1    # "stillExists":Z
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private synthetic lambda$onWallpaperColorsChanged$1(Landroid/util/Pair;Landroid/app/WallpaperColors;II)V
    .registers 7
    .param p1, "listener"    # Landroid/util/Pair;
    .param p2, "colors"    # Landroid/app/WallpaperColors;
    .param p3, "which"    # I
    .param p4, "userId"    # I

    .line 872
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetsGlobals()Landroid/app/WallpaperManager$Globals;

    move-result-object v0

    monitor-enter v0

    .line 873
    :try_start_5
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 874
    .local v1, "stillExists":Z
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_16

    .line 875
    if-eqz v1, :cond_15

    .line 876
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/WallpaperManager$OnColorsChangedListener;

    invoke-interface {v0, p2, p3, p4}, Landroid/app/WallpaperManager$OnColorsChangedListener;->onColorsChanged(Landroid/app/WallpaperColors;II)V

    .line 878
    :cond_15
    return-void

    .line 874
    .end local v1    # "stillExists":Z
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method static synthetic lambda$removeOnColorsChangedListener$0(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/util/Pair;)Z
    .registers 3
    .param p0, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p1, "pair"    # Landroid/util/Pair;

    .line 846
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic lambda$removeOnSemColorsChangedListener$4(Landroid/app/OnSemColorsChangedListener;Landroid/util/Pair;)Z
    .registers 3
    .param p0, "callback"    # Landroid/app/OnSemColorsChangedListener;
    .param p1, "pair"    # Landroid/util/Pair;

    .line 1367
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scale"    # F

    .line 1337
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 1338
    .local v0, "bitmapWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 1339
    .local v1, "bitmapHeight":I
    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1340
    .local v2, "bm":Landroid/graphics/Bitmap;
    return-object v2
.end method

.method private setDefaultWallpaper(ILandroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "which"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1273
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1274
    iput-object p2, p0, Landroid/app/WallpaperManager$Globals;->mSubDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 1276
    :cond_8
    iput-object p2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 1277
    return-void
.end method


# virtual methods
.method public addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;III)V
    .registers 13
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;III)V"
        }
    .end annotation

    .line 790
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    monitor-enter p0

    .line 791
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 792
    .local v1, "area":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 793
    .local v2, "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-nez v2, :cond_26

    .line 794
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 795
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    :cond_26
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_43

    .line 798
    nop

    .end local v1    # "area":Landroid/graphics/RectF;
    .end local v2    # "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    goto :goto_5

    .line 801
    :cond_2b
    :try_start_2b
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/app/IWallpaperManager;->addOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_36} :catch_37
    .catchall {:try_start_2b .. :try_end_36} :catchall_43

    .line 806
    goto :goto_41

    .line 803
    :catch_37
    move-exception v0

    .line 805
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_38
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t register for local color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 807
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_41
    monitor-exit p0

    .line 808
    return-void

    .line 807
    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;II)V
    .registers 8
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I
    .param p4, "displayId"    # I

    .line 773
    monitor-enter p0

    .line 774
    :try_start_1
    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_24

    if-nez v0, :cond_18

    .line 776
    :try_start_5
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p0, p3, p4}, Landroid/app/IWallpaperManager;->registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 777
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e
    .catchall {:try_start_5 .. :try_end_d} :catchall_24

    .line 781
    goto :goto_18

    .line 778
    :catch_e
    move-exception v0

    .line 780
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_f
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t register for color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 783
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    monitor-exit p0

    .line 785
    return-void

    .line 784
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_24

    throw v0
.end method

.method public addOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;II)V
    .registers 8
    .param p1, "callback"    # Landroid/app/OnSemColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I
    .param p4, "displayId"    # I

    .line 1350
    monitor-enter p0

    .line 1351
    :try_start_1
    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_24

    if-nez v0, :cond_18

    .line 1353
    :try_start_5
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p0, p3, p4}, Landroid/app/IWallpaperManager;->registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 1354
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e
    .catchall {:try_start_5 .. :try_end_d} :catchall_24

    .line 1358
    goto :goto_18

    .line 1355
    :catch_e
    move-exception v0

    .line 1357
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_f
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t register for color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1360
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mSemColorListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    monitor-exit p0

    .line 1362
    return-void

    .line 1361
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_24

    throw v0
.end method

.method public checkDeviceDensity(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1280
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/WallpaperManager$Globals;->checkDeviceDensity(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method forgetLoadedWallpaper()V
    .registers 2

    .line 1143
    monitor-enter p0

    .line 1144
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    .line 1145
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 1146
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mSubDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 1150
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mIsCachedWallpaperForDeX:Z

    .line 1153
    monitor-exit p0

    .line 1154
    return-void

    .line 1153
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_d

    throw v0
.end method

.method getWallpaperColors(III)Landroid/app/WallpaperColors;
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 884
    invoke-static {p1}, Landroid/app/WallpaperManager;->-$$Nest$smcheckExactlyOneWallpaperFlagSet(I)V

    .line 887
    :try_start_3
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IWallpaperManager;->getWallpaperColors(III)Landroid/app/WallpaperColors;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_a

    return-object v0

    .line 888
    :catch_a
    move-exception v0

    .line 891
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSemBackupStatusChanged(III)V
    .registers 4
    .param p1, "which"    # I
    .param p2, "status"    # I
    .param p3, "key"    # I

    .line 1413
    return-void
.end method

.method public onSemMultipackApplied(I)V
    .registers 2
    .param p1, "which"    # I

    .line 759
    return-void
.end method

.method public onSemWallpaperChanged(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 755
    return-void
.end method

.method public onSemWallpaperColorsAnalysisRequested(II)V
    .registers 3
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 1408
    return-void
.end method

.method public onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V
    .registers 8
    .param p1, "colors"    # Landroid/app/SemWallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 1383
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSemWallpaperColorsChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    monitor-enter p0

    .line 1385
    :try_start_26
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mSemColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1387
    .local v1, "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    .line 1388
    .local v2, "handler":Landroid/os/Handler;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v3, :cond_43

    .line 1389
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mMainLooperHandler:Landroid/os/Handler;

    move-object v2, v3

    .line 1391
    :cond_43
    new-instance v3, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, p1, p2}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/util/Pair;Landroid/app/SemWallpaperColors;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1402
    nop

    .end local v1    # "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;>;"
    .end local v2    # "handler":Landroid/os/Handler;
    goto :goto_2c

    .line 1403
    :cond_4d
    monitor-exit p0

    .line 1404
    return-void

    .line 1403
    :catchall_4f
    move-exception v0

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_26 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method public onWallpaperChanged()V
    .registers 1

    .line 749
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 750
    return-void
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .registers 14
    .param p1, "colors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 862
    monitor-enter p0

    .line 863
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 864
    .local v1, "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    .line 865
    .local v2, "handler":Landroid/os/Handler;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v3, :cond_20

    .line 866
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mMainLooperHandler:Landroid/os/Handler;

    move-object v2, v3

    move-object v8, v2

    goto :goto_21

    .line 865
    :cond_20
    move-object v8, v2

    .line 868
    .end local v2    # "handler":Landroid/os/Handler;
    .local v8, "handler":Landroid/os/Handler;
    :goto_21
    new-instance v9, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda0;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda0;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/util/Pair;Landroid/app/WallpaperColors;II)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 879
    nop

    .end local v1    # "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;>;"
    .end local v8    # "handler":Landroid/os/Handler;
    goto :goto_7

    .line 880
    :cond_31
    monitor-exit p0

    .line 881
    return-void

    .line 880
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "hardware"    # Z
    .param p6, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 970
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;Z)Landroid/graphics/Bitmap;
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "hardware"    # Z
    .param p6, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;
    .param p7, "useCache"    # Z

    .line 975
    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p7

    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "peekWallpaperBitmap: which ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", useCache = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v0, v7, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v12, 0x0

    if-eqz v0, :cond_45

    .line 979
    :try_start_33
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3b} :catch_3f

    if-nez v0, :cond_3e

    .line 980
    return-object v12

    .line 984
    :cond_3e
    goto :goto_45

    .line 982
    :catch_3f
    move-exception v0

    .line 983
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 988
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_45
    :goto_45
    const/4 v1, 0x0

    .line 991
    .local v1, "isDesktopMode":Z
    :try_start_46
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetsGlobals()Landroid/app/WallpaperManager$Globals;

    move-result-object v0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, v9}, Landroid/app/IWallpaperManager;->isDesktopModeEnabled(I)Z

    move-result v0
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_50} :catch_16c

    move v13, v0

    .line 994
    .end local v1    # "isDesktopMode":Z
    .local v13, "isDesktopMode":Z
    nop

    .line 998
    monitor-enter p0

    .line 1005
    :try_start_53
    iget-boolean v0, v7, Landroid/app/WallpaperManager$Globals;->mIsCachedWallpaperForDeX:Z

    if-eqz v0, :cond_59

    if-nez v13, :cond_5d

    :cond_59
    if-nez v0, :cond_ac

    if-nez v13, :cond_ac

    .line 1007
    :cond_5d
    if-eqz v11, :cond_ac

    iget-object v0, v7, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    if-eqz v0, :cond_ac

    invoke-virtual {v0, v10, v9}, Landroid/app/WallpaperManager$CachedWallpaper;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_ac

    const-string v0, "android.permission.READ_WALLPAPER_INTERNAL"

    .line 1008
    invoke-virtual {v8, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_ac

    .line 1009
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "peekWallpaperBitmap() cached image height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    iget-object v2, v2, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    iget-object v2, v2, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 1010
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1009
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v0, v7, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    iget-object v0, v0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    return-object v0

    .line 1015
    :cond_ac
    iput-object v12, v7, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    .line 1016
    const/4 v14, 0x0

    .line 1020
    .local v14, "currentWallpaper":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/app/WallpaperManager$Globals;->mIsCachedWallpaperForDeX:Z
    :try_end_b2
    .catchall {:try_start_53 .. :try_end_b2} :catchall_169

    .line 1026
    :try_start_b2
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v0, :cond_ca

    iget-object v0, v7, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-eqz v0, :cond_ca

    .line 1027
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_ca

    iget-object v0, v7, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, v9, v10}, Landroid/app/IWallpaperManager;->isWaitingForUnlockUser(II)Z

    move-result v0
    :try_end_c6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b2 .. :try_end_c6} :catch_11c
    .catch Ljava/lang/SecurityException; {:try_start_b2 .. :try_end_c6} :catch_e3
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_c6} :catch_dd
    .catchall {:try_start_b2 .. :try_end_c6} :catchall_169

    if-eqz v0, :cond_ca

    .line 1028
    :try_start_c8
    monitor-exit p0
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_169

    return-object v12

    .line 1032
    :cond_ca
    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    :try_start_d5
    invoke-direct/range {v1 .. v6}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;IIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v14, v0

    .line 1036
    iput-boolean v13, v7, Landroid/app/WallpaperManager$Globals;->mIsCachedWallpaperForDeX:Z
    :try_end_dc
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d5 .. :try_end_dc} :catch_11c
    .catch Ljava/lang/SecurityException; {:try_start_d5 .. :try_end_dc} :catch_e3
    .catch Landroid/os/RemoteException; {:try_start_d5 .. :try_end_dc} :catch_dd
    .catchall {:try_start_d5 .. :try_end_dc} :catchall_169

    .line 1066
    :goto_dc
    goto :goto_138

    .line 1063
    :catch_dd
    move-exception v0

    .line 1064
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_de
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v13    # "isDesktopMode":Z
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "returnDefault":Z
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "hardware":Z
    .end local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .end local p7    # "useCache":Z
    throw v1

    .line 1041
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v13    # "isDesktopMode":Z
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "returnDefault":Z
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "hardware":Z
    .restart local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .restart local p7    # "useCache":Z
    :catch_e3
    move-exception v0

    .line 1048
    .local v0, "e":Ljava/lang/SecurityException;
    const-wide/32 v1, 0xe4ad173

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 1049
    const-wide/32 v1, 0xe2815da

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-nez v1, :cond_106

    .line 1050
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No permission to access wallpaper, returning default wallpaper to avoid crashing legacy app."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const/4 v1, 0x1

    invoke-direct {p0, v8, v1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 1055
    :cond_106
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1b

    if-ge v1, v2, :cond_11a

    .line 1056
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No permission to access wallpaper, suppressing exception to avoid crashing legacy app."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc

    .line 1060
    :cond_11a
    nop

    .end local v13    # "isDesktopMode":Z
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "returnDefault":Z
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "hardware":Z
    .end local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .end local p7    # "useCache":Z
    throw v0

    .line 1039
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v13    # "isDesktopMode":Z
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "returnDefault":Z
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "hardware":Z
    .restart local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .restart local p7    # "useCache":Z
    :catch_11c
    move-exception v0

    .line 1040
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out of memory loading the current wallpaper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    nop

    .line 1067
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :goto_138
    if-eqz v14, :cond_143

    .line 1068
    new-instance v0, Landroid/app/WallpaperManager$CachedWallpaper;

    invoke-direct {v0, v14, v10, v9}, Landroid/app/WallpaperManager$CachedWallpaper;-><init>(Landroid/graphics/Bitmap;II)V

    iput-object v0, v7, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    .line 1069
    monitor-exit p0

    return-object v14

    .line 1072
    :cond_143
    iget-object v0, v7, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    if-eqz v0, :cond_153

    invoke-virtual {v0, v10, v9}, Landroid/app/WallpaperManager$CachedWallpaper;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_153

    .line 1073
    iget-object v0, v7, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    iget-object v0, v0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    return-object v0

    .line 1076
    .end local v14    # "currentWallpaper":Landroid/graphics/Bitmap;
    :cond_153
    monitor-exit p0
    :try_end_154
    .catchall {:try_start_de .. :try_end_154} :catchall_169

    .line 1079
    if-nez p2, :cond_164

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_163

    invoke-direct {p0, v9}, Landroid/app/WallpaperManager$Globals;->isStaticWallpaper(I)Z

    move-result v0

    if-eqz v0, :cond_163

    goto :goto_164

    .line 1083
    :cond_163
    return-object v12

    .line 1081
    :cond_164
    :goto_164
    invoke-direct {p0, v8, v9}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1076
    :catchall_169
    move-exception v0

    :try_start_16a
    monitor-exit p0
    :try_end_16b
    .catchall {:try_start_16a .. :try_end_16b} :catchall_169

    throw v0

    .line 992
    .end local v13    # "isDesktopMode":Z
    .restart local v1    # "isDesktopMode":Z
    :catch_16c
    move-exception v0

    .line 993
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 953
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public peekWallpaperDimensions(Landroid/content/Context;ZII)Landroid/graphics/Rect;
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "userId"    # I

    .line 1089
    move-object/from16 v10, p0

    move/from16 v11, p3

    iget-object v0, v10, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-eqz v0, :cond_1f

    .line 1091
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1092
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_19

    return-object v0

    .line 1096
    :cond_18
    goto :goto_1f

    .line 1094
    :catch_19
    move-exception v0

    .line 1095
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1099
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    :goto_1f
    const/4 v12, 0x0

    .line 1100
    .local v12, "dimensions":Landroid/graphics/Rect;
    monitor-enter p0

    .line 1101
    :try_start_21
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_c8

    .line 1102
    .local v6, "params":Landroid/os/Bundle;
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    :try_start_29
    iget-object v1, v10, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 1103
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    const/4 v9, -0x1

    .line 1102
    move-object/from16 v4, p0

    move/from16 v5, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v9}, Landroid/app/IWallpaperManager;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZI)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_3f} :catch_71
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3f} :catch_6f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_c8

    move-object v1, v0

    .line 1109
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_69

    .line 1110
    :try_start_42
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1111
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v14, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1112
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2, v13, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1113
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v2, v15, v15, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_59
    .catchall {:try_start_42 .. :try_end_59} :catchall_5b

    move-object v12, v2

    .end local v12    # "dimensions":Landroid/graphics/Rect;
    .local v2, "dimensions":Landroid/graphics/Rect;
    goto :goto_69

    .line 1102
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "dimensions":Landroid/graphics/Rect;
    .restart local v12    # "dimensions":Landroid/graphics/Rect;
    :catchall_5b
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_68

    :try_start_5f
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_68

    :catchall_63
    move-exception v0

    move-object v3, v0

    :try_start_65
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "params":Landroid/os/Bundle;
    .end local v12    # "dimensions":Landroid/graphics/Rect;
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "returnDefault":Z
    .end local p3    # "which":I
    .end local p4    # "userId":I
    :cond_68
    :goto_68
    throw v2

    .line 1115
    .restart local v6    # "params":Landroid/os/Bundle;
    .restart local v12    # "dimensions":Landroid/graphics/Rect;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "returnDefault":Z
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    :cond_69
    :goto_69
    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6e} :catch_71
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6e} :catch_6f
    .catchall {:try_start_65 .. :try_end_6e} :catchall_c8

    .line 1119
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_6e
    goto :goto_7d

    .line 1117
    :catch_6f
    move-exception v0

    goto :goto_7d

    .line 1115
    :catch_71
    move-exception v0

    .line 1116
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_72
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "peek wallpaper dimensions failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1119
    nop

    .line 1120
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v6    # "params":Landroid/os/Bundle;
    :goto_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_72 .. :try_end_7e} :catchall_c8

    .line 1122
    if-eqz v12, :cond_90

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_90

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_8d

    goto :goto_90

    :cond_8d
    move-object/from16 v1, p1

    goto :goto_c7

    :cond_90
    :goto_90
    if-nez p2, :cond_a2

    .line 1125
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-direct {v10, v11}, Landroid/app/WallpaperManager$Globals;->isStaticWallpaper(I)Z

    move-result v0

    if-eqz v0, :cond_9f

    goto :goto_a2

    :cond_9f
    move-object/from16 v1, p1

    goto :goto_c7

    .line 1127
    :cond_a2
    :goto_a2
    move-object/from16 v1, p1

    invoke-static {v1, v11}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v2

    .line 1128
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_c7

    .line 1130
    :try_start_aa
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1131
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v14, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1132
    invoke-static {v2, v13, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1133
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v3, v15, v15, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_bd
    .catchall {:try_start_aa .. :try_end_bd} :catchall_c2

    move-object v12, v3

    .line 1135
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1136
    goto :goto_c7

    .line 1135
    :catchall_c2
    move-exception v0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1136
    throw v0

    .line 1139
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_c7
    :goto_c7
    return-object v12

    .line 1120
    :catchall_c8
    move-exception v0

    move-object/from16 v1, p1

    :goto_cb
    :try_start_cb
    monitor-exit p0
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_cd

    throw v0

    :catchall_cd
    move-exception v0

    goto :goto_cb
.end method

.method public removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;III)V
    .registers 13
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .param p4, "displayId"    # I

    .line 813
    monitor-enter p0

    .line 814
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 815
    .local v0, "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_5a

    .line 818
    :cond_12
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;

    .line 819
    .local v2, "cb":Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 820
    .local v3, "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-eqz v3, :cond_37

    if-eq v2, p1, :cond_37

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_5c

    .line 821
    .end local v2    # "cb":Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .end local v3    # "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    :cond_37
    goto :goto_1c

    .line 823
    :cond_38
    :try_start_38
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_4d

    .line 825
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/app/IWallpaperManager;->removeOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_4d} :catch_4e
    .catchall {:try_start_38 .. :try_end_4d} :catchall_5c

    .line 832
    :cond_4d
    goto :goto_58

    .line 829
    :catch_4e
    move-exception v1

    .line 831
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4f
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can\'t unregister for local color updates"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 833
    .end local v0    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_58
    monitor-exit p0

    .line 834
    return-void

    .line 816
    .restart local v0    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    :cond_5a
    :goto_5a
    monitor-exit p0

    return-void

    .line 833
    .end local v0    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    :catchall_5c
    move-exception v0

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_4f .. :try_end_5e} :catchall_5c

    throw v0
.end method

.method public removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;II)V
    .registers 7
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 845
    monitor-enter p0

    .line 846
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda2;-><init>(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 848
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z

    if-eqz v0, :cond_2a

    .line 849
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2c

    .line 851
    :try_start_1a
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p0, p2, p3}, Landroid/app/IWallpaperManager;->unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20
    .catchall {:try_start_1a .. :try_end_1f} :catchall_2c

    .line 855
    goto :goto_2a

    .line 852
    :catch_20
    move-exception v0

    .line 854
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_21
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t unregister color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 857
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    :goto_2a
    monitor-exit p0

    .line 858
    return-void

    .line 857
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public removeOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;II)V
    .registers 7
    .param p1, "callback"    # Landroid/app/OnSemColorsChangedListener;
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 1366
    monitor-enter p0

    .line 1367
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mSemColorListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda3;-><init>(Landroid/app/OnSemColorsChangedListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1369
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mSemColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z

    if-eqz v0, :cond_2a

    .line 1370
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2c

    .line 1372
    :try_start_1a
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p0, p2, p3}, Landroid/app/IWallpaperManager;->unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20
    .catchall {:try_start_1a .. :try_end_1f} :catchall_2c

    .line 1376
    goto :goto_2a

    .line 1373
    :catch_20
    move-exception v0

    .line 1375
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_21
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t unregister color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1378
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    :goto_2a
    monitor-exit p0

    .line 1379
    return-void

    .line 1378
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method semGetPrimaryWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .registers 5
    .param p1, "which"    # I

    .line 911
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetPrimaryWallpaperColors: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 914
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallpaperService not running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    return-object v1

    .line 918
    :cond_2a
    :try_start_2a
    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->semGetPrimaryWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2e} :catch_2f

    return-object v0

    .line 919
    :catch_2f
    move-exception v0

    .line 922
    return-object v1
.end method

.method semGetSmartCropRect(I)Landroid/graphics/Rect;
    .registers 5
    .param p1, "which"    # I

    .line 938
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 939
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallpaperService not running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    return-object v1

    .line 943
    :cond_f
    :try_start_f
    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->semGetSmartCropRect(I)Landroid/graphics/Rect;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return-object v0

    .line 944
    :catch_14
    move-exception v0

    .line 947
    return-object v1
.end method

.method semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .registers 5
    .param p1, "which"    # I

    .line 896
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetWallpaperColors: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 899
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallpaperService not running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    return-object v1

    .line 903
    :cond_2a
    :try_start_2a
    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2e} :catch_2f

    return-object v0

    .line 904
    :catch_2f
    move-exception v0

    .line 907
    return-object v1
.end method

.method semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "which"    # I
    .param p2, "original"    # Landroid/graphics/Rect;
    .param p3, "smartCrop"    # Landroid/graphics/Rect;

    .line 926
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-nez v0, :cond_e

    .line 927
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    return-void

    .line 931
    :cond_e
    :try_start_e
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IWallpaperManager;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    .line 934
    goto :goto_13

    .line 932
    :catch_12
    move-exception v0

    .line 935
    :goto_13
    return-void
.end method
