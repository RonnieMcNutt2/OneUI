.class public Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;
.super Ljava/lang/Object;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;,
        Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;,
        Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;,
        Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final RESTORE_TYPE_COVER:Ljava/lang/String; = "RESTORE_TYPE_COVER"

.field private static final RESTORE_TYPE_MAIN:Ljava/lang/String; = "RESTORE_TYPE_MAIN"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mModeFlagSet:[I


# direct methods
.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smresponse(Ljava/util/ArrayList;)V
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->response(Ljava/util/ArrayList;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 85
    const-class v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    .line 86
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/16 v0, 0x8

    const/16 v1, 0x20

    const/4 v2, 0x4

    const/16 v3, 0x10

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    .line 109
    return-void
.end method

.method private handleDifferentTypeRestore(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;IILjava/lang/String;)Z
    .registers 11
    .param p1, "helper"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    .param p2, "mode"    # I
    .param p3, "which"    # I
    .param p4, "restoreScreen"    # Ljava/lang/String;

    .line 258
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isFolder()Z

    move-result v0

    const-string v1, "folder"

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x10

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 259
    if-ne p2, v5, :cond_22

    .line 260
    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "skip restoring sub display of phone models"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v4

    .line 263
    :cond_22
    if-ne p2, v2, :cond_32

    .line 264
    or-int/lit8 v0, p3, 0x10

    invoke-virtual {p1, v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->setWhich(I)V

    .line 265
    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restoring main display of phone model to sub display of fold model"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v3

    .line 270
    :cond_32
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isFolder()Z

    move-result v0

    if-nez v0, :cond_95

    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v0

    if-nez v0, :cond_95

    .line 271
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 272
    if-ne p2, v5, :cond_61

    .line 273
    const-string v0, "RESTORE_TYPE_COVER"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 274
    or-int/lit8 v0, p3, 0x4

    invoke-virtual {p1, v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->setWhich(I)V

    .line 275
    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restoring sub display of fold model to phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return v3

    .line 278
    :cond_60
    return v4

    .line 282
    :cond_61
    if-ne p2, v2, :cond_95

    .line 283
    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "do not restore main display of fold model to phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return v4

    .line 287
    :cond_6b
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v0, :cond_8a

    .line 288
    if-ne p2, v5, :cond_95

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 289
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getCoverType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "large_screen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_95

    .line 290
    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "skip different size cover screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return v4

    .line 294
    :cond_8a
    if-ne p2, v5, :cond_95

    .line 295
    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "skip sub display for phones"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return v4

    .line 301
    :cond_95
    return v3
.end method

.method private isRestorableDeviceType(Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;",
            ">;)Z"
        }
    .end annotation

    .line 346
    .local p1, "helpers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 348
    .local v1, "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "deviceTypeBackup":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_13

    .line 350
    return v4

    .line 352
    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_98

    :cond_1a
    goto :goto_3b

    :sswitch_1b
    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x2

    goto :goto_3c

    :sswitch_26
    const-string/jumbo v3, "tablet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move v3, v4

    goto :goto_3c

    :sswitch_31
    const-string v3, "folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move v3, v0

    goto :goto_3c

    :goto_3b
    const/4 v3, -0x1

    :goto_3c
    packed-switch v3, :pswitch_data_a6

    .line 373
    sget-object v3, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isRestorableDeviceType: deviceTypeBackup = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 366
    :pswitch_59
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isFolder()Z

    move-result v3

    if-nez v3, :cond_66

    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v3

    if-nez v3, :cond_66

    .line 367
    return v4

    .line 368
    :cond_66
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isFolder()Z

    move-result v3

    if-eqz v3, :cond_8a

    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->BNR_SUPPORT_BETWEEN_FOLD_AND_PHONE:Z

    if-eqz v3, :cond_8a

    .line 369
    return v4

    .line 361
    :pswitch_71
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 362
    return v4

    .line 354
    :pswitch_78
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isFolder()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 355
    return v4

    .line 356
    :cond_7f
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v3

    if-nez v3, :cond_8a

    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->BNR_SUPPORT_BETWEEN_FOLD_AND_PHONE:Z

    if-eqz v3, :cond_8a

    .line 357
    return v4

    .line 378
    :cond_8a
    :goto_8a
    sget-object v3, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isRestorableDeviceType: Device type not matching"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    sget-object v3, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v1, v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->setResultCode(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    .line 380
    return v0

    :sswitch_data_98
    .sparse-switch
        -0x4ba2e392 -> :sswitch_31
        -0x3488c19a -> :sswitch_26
        0x65b3d6e -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_78
        :pswitch_71
        :pswitch_59
    .end packed-switch
.end method

.method private isSupportedScreen(II)Z
    .registers 6
    .param p1, "mode"    # I
    .param p2, "type"    # I

    .line 305
    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_26

    goto :goto_24

    .line 323
    :sswitch_6
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-nez v2, :cond_b

    .line 324
    return v0

    .line 327
    :cond_b
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_24

    .line 328
    return v0

    .line 307
    :sswitch_10
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->BNR_SUPPORT_BETWEEN_FOLD_AND_PHONE:Z

    if-eqz v2, :cond_15

    .line 308
    return v1

    .line 311
    :cond_15
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez v2, :cond_1a

    .line 312
    return v0

    .line 315
    :cond_1a
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v2, :cond_24

    .line 316
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_24

    .line 317
    return v0

    .line 336
    :sswitch_23
    nop

    .line 342
    :cond_24
    :goto_24
    return v1

    nop

    :sswitch_data_26
    .sparse-switch
        0x8 -> :sswitch_23
        0x10 -> :sswitch_10
        0x20 -> :sswitch_6
    .end sparse-switch
.end method

.method private pushBackupFile(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "which"    # I
    .param p4, "basePath"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I
    .param p6, "saveKey"    # Ljava/lang/String;
    .param p7, "sessionTime"    # Ljava/lang/String;
    .param p8, "source"    # Ljava/lang/String;

    .line 159
    move-object/from16 v0, p0

    move/from16 v1, p3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v2, "helpers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;>;"
    const-string/jumbo v3, "wallpaper"

    move-object/from16 v14, p1

    invoke-virtual {v14, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    .line 162
    .local v3, "wallpaperManager":Landroid/app/WallpaperManager;
    const/4 v4, 0x0

    move v15, v4

    .local v15, "i":I
    :goto_16
    iget-object v4, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    array-length v5, v4

    if-ge v15, v5, :cond_45

    .line 164
    aget v4, v4, v15

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->isSupportedScreen(II)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 165
    new-instance v16, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    iget-object v4, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    aget v4, v4, v15

    or-int v8, v1, v4

    move-object/from16 v4, v16

    move-object/from16 v5, p1

    move-object v6, v3

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v4 .. v13}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;-><init>(Landroid/content/Context;Landroid/app/WallpaperManager;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .local v4, "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v4    # "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    :cond_42
    add-int/lit8 v15, v15, 0x1

    goto :goto_16

    .line 171
    .end local v15    # "i":I
    :cond_45
    new-instance v4, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;

    invoke-direct {v4}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;-><init>()V

    .line 172
    .local v4, "task":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;
    filled-new-array {v2}, [Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 173
    return-void
.end method

.method private pushRestoreFile(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 33
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "which"    # I
    .param p4, "basePath"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I
    .param p6, "saveKey"    # Ljava/lang/String;
    .param p7, "source"    # Ljava/lang/String;
    .param p8, "restoreScreen"    # Ljava/lang/String;

    .line 221
    move-object/from16 v0, p0

    move/from16 v11, p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v1

    .line 222
    .local v12, "helpers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;>;"
    const-string/jumbo v1, "wallpaper"

    move-object/from16 v10, p1

    invoke-virtual {v10, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Landroid/app/WallpaperManager;

    .line 224
    .local v23, "wallpaperManager":Landroid/app/WallpaperManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget-object v2, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    array-length v3, v2

    if-ge v1, v3, :cond_56

    .line 225
    aget v2, v2, v1

    invoke-direct {v0, v2, v11}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->isSupportedScreen(II)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 226
    new-instance v2, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    iget-object v3, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    aget v3, v3, v1

    or-int v17, v11, v3

    const-string v21, ""

    move-object v13, v2

    move-object/from16 v14, p1

    move-object/from16 v15, v23

    move-object/from16 v16, p2

    move-object/from16 v18, p4

    move/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v22, p7

    invoke-direct/range {v13 .. v22}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;-><init>(Landroid/content/Context;Landroid/app/WallpaperManager;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .local v2, "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    iget-object v3, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    aget v3, v3, v1

    move-object/from16 v13, p8

    invoke-direct {v0, v2, v3, v11, v13}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->handleDifferentTypeRestore(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 229
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 225
    .end local v2    # "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    :cond_51
    move-object/from16 v13, p8

    .line 224
    :cond_53
    :goto_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_56
    move-object/from16 v13, p8

    .line 234
    .end local v1    # "i":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8f

    .line 235
    sget-object v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "pushRestoreFile: Nothing to restore."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v14, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    const-string v9, ""

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, v23

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;-><init>(Landroid/content/Context;Landroid/app/WallpaperManager;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .local v1, "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    sget-object v2, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->setResultCode(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    .line 239
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v2, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-static {v2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->response(Ljava/util/ArrayList;)V

    .line 242
    .end local v1    # "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    .end local v2    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;>;"
    goto :goto_b4

    .line 244
    :cond_8f
    invoke-direct {v0, v12}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->isRestorableDeviceType(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_a8

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v1, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;>;"
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-static {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->response(Ljava/util/ArrayList;)V

    .line 248
    return-void

    .line 252
    .end local v1    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;>;"
    :cond_a8
    new-instance v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;

    invoke-direct {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;-><init>()V

    .line 253
    .local v1, "task":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;
    filled-new-array {v12}, [Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 255
    .end local v1    # "task":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;
    :goto_b4
    return-void
.end method

.method private static response(Ljava/util/ArrayList;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;",
            ">;)V"
        }
    .end annotation

    .line 384
    .local p0, "helpers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;>;"
    sget-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->ERROR_NONE:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    .line 386
    .local v0, "errorCode":Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
    const/4 v1, 0x0

    .line 387
    .local v1, "successCount":I
    const/4 v2, 0x0

    .line 389
    .local v2, "failCount":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 390
    .local v3, "extraResults":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v4

    .line 393
    .local v14, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 394
    .local v5, "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    invoke-virtual {v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWhich()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getResultCode()Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-virtual {v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getResultCode()Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_SUCCESS:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    if-ne v6, v7, :cond_39

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 399
    :cond_39
    add-int/lit8 v2, v2, 0x1

    .line 402
    :goto_3b
    invoke-virtual {v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->isBackupCase()Z

    move-result v6

    if-eqz v6, :cond_52

    .line 403
    invoke-virtual {v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 404
    invoke-virtual {v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    .end local v5    # "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    :cond_52
    goto :goto_13

    .line 410
    :cond_53
    if-nez v1, :cond_58

    .line 411
    sget-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->INVALID_DATA:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    goto :goto_5c

    .line 413
    :cond_58
    if-lez v2, :cond_5c

    .line 414
    sget-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->PARTIAL_SUCCESS:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    .line 418
    :cond_5c
    :goto_5c
    const/4 v4, 0x0

    move-object/from16 v15, p0

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 419
    .local v16, "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 420
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getType()I

    move-result v5

    .line 421
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getResponseAction()Ljava/lang/String;

    move-result-object v6

    .line 422
    if-nez v1, :cond_78

    sget-object v7, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    goto :goto_7a

    :cond_78
    sget-object v7, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_SUCCESS:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    :goto_7a
    const/high16 v9, 0xa00000

    .line 425
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSource()Ljava/lang/String;

    move-result-object v10

    .line 426
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSessionTime()Ljava/lang/String;

    move-result-object v11

    .line 419
    move-object v8, v0

    move-object v12, v3

    move-object v13, v14

    invoke-static/range {v4 .. v13}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->sendResponse(Landroid/content/Context;ILjava/lang/String;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V

    .line 430
    return-void
.end method

.method private static sendResponse(Landroid/content/Context;ILjava/lang/String;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V
    .registers 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "resultCode"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    .param p4, "errorCode"    # Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
    .param p5, "requiredSize"    # I
    .param p6, "source"    # Ljava/lang/String;
    .param p7, "sessionTime"    # Ljava/lang/String;
    .param p8, "extraResultCodes"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;",
            "Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 436
    .local p9, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 438
    .local v7, "logBuffer":Ljava/lang/StringBuffer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendResponse:\n\t\twhich \t\t\t\t= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\t\taction \t\t\t\t= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 439
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\t\tresultCode \t\t\t= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v10, p3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 440
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n\t\terrorCode \t\t\t= "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 441
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n\t\trequiredSize \t\t= "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 442
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n\t\tsesstionTime \t\t= "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 443
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n\t\tsource \t\t\t\t= "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 444
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    if-eqz v6, :cond_fa

    .line 447
    invoke-virtual/range {p8 .. p8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 448
    .local v8, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_fa

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 449
    .local v11, "key":Ljava/lang/Integer;
    const-string v12, "\n\t\textraResultCode \t= "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%2d"

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    .end local v11    # "key":Ljava/lang/Integer;
    goto :goto_c0

    .line 455
    .end local v8    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_fa
    if-eqz p9, :cond_120

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_120

    .line 456
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n\t\tpackages \t\t\t\t= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    :cond_120
    sget-object v8, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 463
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v11, "RESULT"

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->getCode()I

    move-result v12

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    const-string v11, "ERR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->getCode()I

    move-result v12

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    const-string v11, "REQ_SIZE"

    invoke-virtual {v9, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 467
    const-string v11, "SOURCE"

    invoke-virtual {v9, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_158

    .line 469
    const-string v11, "EXPORT_SESSION_TIME"

    invoke-virtual {v9, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    :cond_158
    sget-object v11, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->PARTIAL_SUCCESS:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    if-ne v2, v11, :cond_161

    .line 473
    const-string v11, "EXTRA_ERR_CODE"

    invoke-virtual {v9, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 477
    :cond_161
    if-eqz p9, :cond_172

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_172

    .line 478
    const-string v11, "EXTRA"

    move-object/from16 v12, p9

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 482
    :cond_172
    const-string v11, "com.wssnps.permission.COM_WSSNPS"

    move-object v12, p0

    invoke-virtual {p0, v9, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 483
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sendBroadcast. "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void
.end method


# virtual methods
.method public startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "basePath"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I
    .param p6, "sessionTime"    # Ljava/lang/String;
    .param p7, "saveKey"    # Ljava/lang/String;

    .line 117
    const-string v2, ""

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "which"    # I
    .param p4, "basePath"    # Ljava/lang/String;
    .param p5, "source"    # Ljava/lang/String;
    .param p6, "securityLevel"    # I
    .param p7, "sessionTime"    # Ljava/lang/String;
    .param p8, "saveKey"    # Ljava/lang/String;

    .line 123
    move-object/from16 v0, p4

    sget-object v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startBackupWallpaper which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " basePath="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " source="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v13, p5

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 129
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_4e

    .line 130
    const-string v2, "com.samsung.android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    .end local p2    # "action":Ljava/lang/String;
    .local v2, "action":Ljava/lang/String;
    goto :goto_52

    .line 132
    .end local v2    # "action":Ljava/lang/String;
    .restart local p2    # "action":Ljava/lang/String;
    :cond_4e
    const-string v2, "com.samsung.android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

    .end local p2    # "action":Ljava/lang/String;
    .restart local v2    # "action":Ljava/lang/String;
    goto :goto_52

    .line 128
    .end local v2    # "action":Ljava/lang/String;
    .restart local p2    # "action":Ljava/lang/String;
    :cond_51
    move-object v2, v3

    .line 136
    .end local p2    # "action":Ljava/lang/String;
    .restart local v2    # "action":Ljava/lang/String;
    :goto_52
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6d

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .end local p4    # "basePath":Ljava/lang/String;
    .local v0, "basePath":Ljava/lang/String;
    :cond_6d
    invoke-static {v0}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->checkSaveAvailable(Ljava/lang/String;)Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    move-result-object v14

    .line 143
    .local v14, "errorCode":Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
    sget-object v3, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->ERROR_NONE:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    invoke-virtual {v14, v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 144
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v15, v3

    .line 145
    .local v15, "extraResults":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;>;"
    sget-object v12, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->INVALID_VALUE:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    .line 146
    .local v12, "err":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string/jumbo v3, "startBackupWallpaper is return because precondition fail"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v6, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const/high16 v8, 0xa00000

    const/4 v1, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object v5, v2

    move-object v7, v14

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move-object v11, v15

    move-object/from16 v16, v12

    .end local v12    # "err":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    .local v16, "err":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    move-object v12, v1

    invoke-static/range {v3 .. v12}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->sendResponse(Landroid/content/Context;ILjava/lang/String;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V

    .line 151
    return-void

    .line 154
    .end local v15    # "extraResults":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;>;"
    .end local v16    # "err":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    :cond_a5
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v2

    move/from16 v6, p3

    move-object v7, v0

    move/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p7

    move-object/from16 v11, p5

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->pushBackupFile(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .line 112
    const/4 v2, 0x1

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "basePath"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I
    .param p6, "saveKey"    # Ljava/lang/String;
    .param p7, "restoreScreen"    # Ljava/lang/String;

    .line 180
    const-string v2, ""

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "which"    # I
    .param p4, "basePath"    # Ljava/lang/String;
    .param p5, "source"    # Ljava/lang/String;
    .param p6, "securityLevel"    # I
    .param p7, "saveKey"    # Ljava/lang/String;
    .param p8, "restoreScreen"    # Ljava/lang/String;

    .line 184
    move-object/from16 v0, p4

    sget-object v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRestoreWallpaper: which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " basePath = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " source = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v13, p5

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " securityLevel = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v14, p6

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " restoreScreen = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v15, p8

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 192
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_66

    .line 193
    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    .end local p2    # "action":Ljava/lang/String;
    .local v2, "action":Ljava/lang/String;
    goto :goto_6a

    .line 195
    .end local v2    # "action":Ljava/lang/String;
    .restart local p2    # "action":Ljava/lang/String;
    :cond_66
    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    .end local p2    # "action":Ljava/lang/String;
    .restart local v2    # "action":Ljava/lang/String;
    goto :goto_6a

    .line 191
    .end local v2    # "action":Ljava/lang/String;
    .restart local p2    # "action":Ljava/lang/String;
    :cond_69
    move-object v2, v3

    .line 199
    .end local p2    # "action":Ljava/lang/String;
    .restart local v2    # "action":Ljava/lang/String;
    :goto_6a
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .end local p4    # "basePath":Ljava/lang/String;
    .local v0, "basePath":Ljava/lang/String;
    :cond_85
    invoke-static {v0}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->checkSaveAvailable(Ljava/lang/String;)Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    move-result-object v12

    .line 205
    .local v12, "errorCode":Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
    sget-object v3, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->ERROR_NONE:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    invoke-virtual {v12, v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c3

    .line 206
    sget-object v11, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->INVALID_VALUE:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    .line 207
    .local v11, "err":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v10, v3

    .line 208
    .local v10, "extraResults":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;>;"
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string/jumbo v3, "startRestoreWallpaper is return because precondition fail"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v6, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const/high16 v8, 0xa00000

    const/4 v1, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object v5, v2

    move-object v7, v12

    move-object/from16 v9, p5

    move-object/from16 v17, v10

    .end local v10    # "extraResults":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;>;"
    .local v17, "extraResults":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;>;"
    move-object v10, v1

    move-object v1, v11

    .end local v11    # "err":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    .local v1, "err":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    move-object/from16 v11, v17

    move-object/from16 v18, v12

    .end local v12    # "errorCode":Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
    .local v18, "errorCode":Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
    move-object/from16 v12, v16

    invoke-static/range {v3 .. v12}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->sendResponse(Landroid/content/Context;ILjava/lang/String;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V

    .line 213
    return-void

    .line 216
    .end local v1    # "err":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    .end local v17    # "extraResults":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;>;"
    .end local v18    # "errorCode":Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
    .restart local v12    # "errorCode":Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
    :cond_c3
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v2

    move/from16 v6, p3

    move-object v7, v0

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p5

    move-object/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->pushRestoreFile(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .line 176
    const/4 v2, 0x1

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method
