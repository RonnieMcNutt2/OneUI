.class public Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;
.super Ljava/lang/Object;
.source "MaintenanceModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;
    }
.end annotation


# static fields
.field private static final ACTION_LAUNCH_MYFILES_STORAGE_ANALYSIS:Ljava/lang/String; = "com.sec.android.app.myfiles.RUN_STORAGE_ANALYSIS"

.field private static final ACTION_LAUNCH_SMART_SWITCH:Ljava/lang/String; = "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

.field private static final ACTION_LAUNCH_SMART_SWITCH_AGENT:Ljava/lang/String; = "com.sec.android.easyMover.Agent.action.AUTO_DOWNLOAD"

.field static final ACTION_NOTIFY_CLOUD_BACKUP_CANCELED:Ljava/lang/String; = "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_CANCELED"

.field static final ACTION_NOTIFY_CLOUD_BACKUP_COMPLETED:Ljava/lang/String; = "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_COMPLETED"

.field static final ACTION_NOTIFY_CLOUD_BACKUP_NOT_FINISHED:Ljava/lang/String; = "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_NOT_FINISHED"

.field static final ACTION_NOTIFY_CLOUD_BACKUP_STARTED:Ljava/lang/String; = "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_STARTED"

.field private static final ACTION_USE_APP_FEATURE_SURVEY:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field static final BACKUP_STATUS_CLOUD_BACKED_UP_FAILED:Ljava/lang/String; = "BACKUP_NON_FINISHED"

.field static final BACKUP_STATUS_CLOUD_BACKED_UP_SUCCEEDED:Ljava/lang/String; = "BACKUP_COMPLETED"

.field static final BACKUP_STATUS_CLOUD_BACKING_UP:Ljava/lang/String; = "BACKUP_RUNNING"

.field static final BACKUP_STATUS_CLOUD_NONE:Ljava/lang/String; = "NONE"

.field static final BACKUP_STATUS_CLOUD_RESTORING:Ljava/lang/String; = "RESTORE_RUNNING"

.field static final BACKUP_STATUS_NOT_IN_PROGRESS:Ljava/lang/String; = "NOT_IN_PROGRESS"

.field static final BACKUP_STATUS_SMART_SWITCH_BACKING_UP:Ljava/lang/String; = "TRUE"

.field static final CLOUD_BACKUP_RETENTION_PERIOD_DEFAULT:I = 0x1e

.field static final CLOUD_BACKUP_STATUS_CHECK_DELAY:J = 0x7530L

.field private static final COMPONENT_SMART_SWITCH_AGENT:Landroid/content/ComponentName;

.field static final EVENT_ID_CLOUD_BACKUP:Ljava/lang/String; = "7083"

.field static final EVENT_ID_CREATE_LOG:Ljava/lang/String; = "7070"

.field static final EVENT_ID_EXTERNAL_STORAGE_BACKUP:Ljava/lang/String; = "7074"

.field static final EVENT_ID_KEEP_BACKUP:Ljava/lang/String; = "7069"

.field static final EVENT_ID_PAUSE_BACKUP_AND_TURN_ON:Ljava/lang/String; = "7068"

.field static final EVENT_ID_RESTART:Ljava/lang/String; = "7071"

.field static final EVENT_ID_TURN_ON_MAINTENANCE_MODE:Ljava/lang/String; = "7066"

.field static final EVENT_VALUE_ONE:Ljava/lang/String; = "1"

.field static final EVENT_VALUE_ZERO:Ljava/lang/String; = "0"

.field private static final EXTRA_SECURE_LOCK_FROM_SEC_NON_BIOMETRICS:Ljava/lang/String; = "from_sec_non_biometrics"

.field private static final EXTRA_SECURE_LOCK_HIDE_BIOMETRICS_MENU:Ljava/lang/String; = "hide_biometrics_menu"

.field private static final EXTRA_SMART_SWITCH_EXTERNAL_BNR:Ljava/lang/String; = "EXTERNAL_BNR"

.field public static final FEATURE_SUPPORT_MAINTENANCE_MODE:Ljava/lang/String; = "com.samsung.feature.support_repair_mode"

.field public static final FLAG_MAINTENANCE_MODE:I = 0x80000

.field private static final LOGGING_TYPE:Ljava/lang/String; = "ev"

.field public static final MAINTENANCE_MODE_USER_ID:I = 0x4d

.field private static final MAX_FONT_SCALE:F = 1.3f

.field private static final MAX_PAGE_WIDTH_PERCENT:F = 0.86f

.field private static final PACKAGE_CLOUD:Ljava/lang/String; = "com.samsung.android.scloud"

.field private static final PACKAGE_DEVICE_CARE:Ljava/lang/String; = "com.samsung.android.lool"

.field private static final PACKAGE_DIAGMON_AGENT:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field public static final PACKAGE_MOBILE_DOCTOR:Ljava/lang/String; = "com.samsung.android.app.mobiledoctor"

.field private static final PACKAGE_SMART_SWITCH:Ljava/lang/String; = "com.sec.android.easyMover"

.field public static final PERMISSION_ACCESS_MAINTENANCE_MODE:Ljava/lang/String; = "com.samsung.android.permission.ACCESS_MAINTENANCE_MODE"

.field public static final PROPERTY_DISALLOW_MAINTENANCE_MODE:Ljava/lang/String; = "persist.sys.disallow_maintenance_mode"

.field public static final PROPERTY_DISALLOW_MAINTENANCE_MODE_LAST_CALLER:Ljava/lang/String; = "persist.sys.disallow_maintenance_mode_last_caller"

.field public static final PROPERTY_IS_IN_MAINTENANCE_MODE:Ljava/lang/String; = "persist.sys.is_in_maintenance_mode"

.field private static final PROVIDER_CALL_FAILED:Ljava/lang/String; = "PROVIDER_CALL_FAILED"

.field private static final PROVIDER_CLOUD_ARGUMENT_MAINTENANCE:Ljava/lang/String; = "maintenance"

.field private static final PROVIDER_CLOUD_AUTHORITY_STATUS_PROVIDER:Ljava/lang/String; = "content://com.samsung.android.scloud.statusprovider"

.field private static final PROVIDER_CLOUD_EXTRA_IS_SKIP_CHECK_SUPPORT:Ljava/lang/String; = "isSkipCheckSupport"

.field private static final PROVIDER_CLOUD_METHOD_CTB_SUPPORT:Ljava/lang/String; = "ctb_support"

.field private static final PROVIDER_CLOUD_RESPONSE_KEY_FAIL_REASON:Ljava/lang/String; = "failReason"

.field private static final PROVIDER_CLOUD_RESPONSE_KEY_INTRO_DESCRIPTION:Ljava/lang/String; = "intro_description"

.field private static final PROVIDER_CLOUD_RESPONSE_KEY_RETENTION_PERIOD:Ljava/lang/String; = "retentionPeriod"

.field private static final PROVIDER_CLOUD_RESPONSE_KEY_STATUS:Ljava/lang/String; = "status"

.field private static final PROVIDER_CLOUD_RESPONSE_KEY_SUPPORT:Ljava/lang/String; = "support"

.field private static final PROVIDER_CLOUD_RESPONSE_KEY_TARGET_INTENT:Ljava/lang/String; = "targetIntent"

.field private static final PROVIDER_SMART_SWITCH_URI_IS_RUNNING:Ljava/lang/String; = "content://com.sec.android.easyMover.statusProvider/isRunning"

.field public static final TAG:Ljava/lang/String; = "MaintenanceMode"

.field private static final TRACKING_ID_DEVICE_CARE:Ljava/lang/String; = "431-399-4853100"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 101
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.easyMover.Agent"

    const-string v2, "com.sec.android.easyMover.Agent.ServiceActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->COMPONENT_SMART_SWITCH_AGENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static call(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 504
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 505
    :catch_d
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static callCloudProvider(Landroid/content/Context;Z)Landroid/os/Bundle;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "skipCheckSupport"    # Z

    .line 481
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 482
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "isSkipCheckSupport"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 483
    const-string v1, "ctb_support"

    const-string/jumbo v2, "maintenance"

    const-string v3, "content://com.samsung.android.scloud.statusprovider"

    invoke-static {p0, v3, v1, v2, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->call(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 486
    .local v1, "res":Landroid/os/Bundle;
    const/4 v2, 0x0

    const-string v3, "MaintenanceMode"

    if-nez v1, :cond_21

    .line 487
    const-string v4, "Failed to call: Response is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-object v2

    .line 491
    :cond_21
    const-string v4, "failReason"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 492
    .local v4, "failReason":Ljava/lang/String;
    if-eqz v4, :cond_40

    .line 493
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to call, failReason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-object v2

    .line 497
    :cond_40
    return-object v1
.end method

.method static checkCloudBackupSupport(Landroid/content/Context;)Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 399
    const-string v0, "com.samsung.android.scloud"

    invoke-static {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 400
    const-string v0, "MaintenanceMode"

    const-string v2, "SCloud is not installed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;-><init>(ZILjava/lang/String;)V

    return-object v0

    .line 404
    :cond_19
    invoke-static {p0, v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->callCloudProvider(Landroid/content/Context;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 405
    .local v0, "res":Landroid/os/Bundle;
    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isCloudBackupSupported(Landroid/os/Bundle;)Z

    move-result v2

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getCloudBackupRetentionPeriod(Landroid/os/Bundle;)I

    move-result v3

    .line 406
    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getCloudBackupIntroDescription(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;-><init>(ZILjava/lang/String;)V

    .line 405
    return-object v1
.end method

.method static configureLayout(Landroid/app/Activity;Landroid/content/res/Resources;Landroid/content/res/Configuration;ZZIII)V
    .registers 24
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "isTablet"    # Z
    .param p4, "isFold"    # Z
    .param p5, "resIdLayoutPortrait"    # I
    .param p6, "resIdLayoutLandscape"    # I
    .param p7, "resIdContainer"    # I

    .line 260
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    iget v5, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v5, v6, :cond_12

    const/4 v5, 0x1

    goto :goto_13

    :cond_12
    move v5, v7

    .line 262
    .local v5, "isLandscape":Z
    :goto_13
    const/4 v6, 0x0

    .line 263
    .local v6, "needToAdjustContainerSize":Z
    if-eqz p3, :cond_1b

    .line 264
    const/4 v6, 0x1

    .line 265
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_2e

    .line 266
    :cond_1b
    if-eqz p4, :cond_2b

    .line 267
    iget v8, v2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_26

    .line 268
    invoke-static {v0, v5, v3, v4}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->configureLayoutConsideringFullScreen(Landroid/app/Activity;ZII)V

    goto :goto_2e

    .line 271
    :cond_26
    const/4 v6, 0x1

    .line 272
    invoke-static {v0, v7, v3, v4}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->configureLayoutConsideringFullScreen(Landroid/app/Activity;ZII)V

    goto :goto_2e

    .line 276
    :cond_2b
    invoke-static {v0, v5, v3, v4}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->configureLayoutConsideringFullScreen(Landroid/app/Activity;ZII)V

    .line 280
    :goto_2e
    if-nez v6, :cond_31

    .line 281
    return-void

    .line 284
    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v7

    .line 285
    invoke-virtual {v7}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 286
    .local v7, "currentWindowWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v8

    .line 287
    invoke-virtual {v8}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 289
    .local v8, "currentWindowHeight":I
    const v9, 0x105020e

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 291
    .local v9, "breakpointLargeWidth":I
    const v10, 0x105020f

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 293
    .local v10, "breakpointMiddleWidth":I
    const v11, 0x105020d

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 296
    .local v11, "breakpointMiddleHeight":I
    const/4 v12, 0x0

    .line 297
    .local v12, "maxWidth":I
    if-lt v7, v9, :cond_71

    .line 298
    const v13, 0x105022e

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    goto :goto_7b

    .line 300
    :cond_71
    if-lt v7, v10, :cond_7b

    if-le v8, v11, :cond_7b

    .line 302
    int-to-float v13, v7

    const v14, 0x3f5c28f6    # 0.86f

    mul-float/2addr v13, v14

    float-to-int v12, v13

    .line 305
    :cond_7b
    :goto_7b
    if-lez v12, :cond_8e

    .line 306
    move/from16 v13, p7

    invoke-virtual {v0, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 307
    .local v14, "container":Landroid/view/View;
    nop

    .line 308
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 309
    .local v15, "containerParams":Landroid/view/ViewGroup$LayoutParams;
    iput v12, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 310
    invoke-virtual {v14, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_90

    .line 305
    .end local v14    # "container":Landroid/view/View;
    .end local v15    # "containerParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_8e
    move/from16 v13, p7

    .line 312
    :goto_90
    return-void
.end method

.method private static configureLayoutConsideringFullScreen(Landroid/app/Activity;ZII)V
    .registers 6
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "isLandscape"    # Z
    .param p2, "resIdLayoutPortrait"    # I
    .param p3, "resIdLayoutLandscape"    # I

    .line 316
    const/16 v0, 0x400

    if-eqz p1, :cond_f

    .line 317
    invoke-virtual {p0, p3}, Landroid/app/Activity;->setContentView(I)V

    .line 318
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_19

    .line 320
    :cond_f
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setContentView(I)V

    .line 321
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 323
    :goto_19
    return-void
.end method

.method public static doesMaintenanceModeUserIdExist(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 173
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 174
    .local v0, "um":Landroid/os/UserManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Landroid/os/UserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v2

    .line 176
    .local v2, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 177
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    const/16 v6, 0x4d

    if-ne v5, v6, :cond_2c

    .line 178
    const-string v1, "MaintenanceMode"

    const-string v3, "Maintenance mode ID already exists"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v1, 0x1

    return v1

    .line 181
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_2c
    goto :goto_11

    .line 182
    :cond_2d
    return v1
.end method

.method private static getCloudBackupIntroDescription(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 428
    if-nez p0, :cond_4

    .line 429
    const/4 v0, 0x0

    return-object v0

    .line 431
    :cond_4
    const-string/jumbo v0, "intro_description"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "introDescription":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cloud backup intro description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-object v0
.end method

.method private static getCloudBackupRetentionPeriod(Landroid/os/Bundle;)I
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 419
    const/16 v0, 0x1e

    if-nez p0, :cond_5

    .line 420
    return v0

    .line 422
    :cond_5
    const-string/jumbo v1, "retentionPeriod"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 423
    .local v1, "retentionPeriod":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cloud backup retention period: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MaintenanceMode"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-eqz v1, :cond_28

    move v0, v1

    :cond_28
    return v0
.end method

.method static getCloudBackupStatus(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 454
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->callCloudProvider(Landroid/content/Context;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 455
    .local v0, "res":Landroid/os/Bundle;
    const-string v1, "PROVIDER_CALL_FAILED"

    if-nez v0, :cond_a

    .line 456
    return-object v1

    .line 458
    :cond_a
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, "status":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cloud backup status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MaintenanceMode"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    if-eqz v2, :cond_2c

    move-object v1, v2

    :cond_2c
    return-object v1
.end method

.method static getFontSize(Landroid/content/Context;I)F
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dimenResId"    # I

    .line 241
    const v0, 0x3fa66666    # 1.3f

    invoke-static {p0, p1, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;IF)F

    move-result v0

    return v0
.end method

.method static getFontSize(Landroid/content/Context;IF)F
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dimenResId"    # I
    .param p2, "maxFontScale"    # F

    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 249
    .local v0, "baseSize":F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 250
    .local v1, "currentFontScale":F
    cmpl-float v2, v1, p2

    if-lez v2, :cond_1c

    .line 251
    div-float v2, v0, v1

    .line 252
    .local v2, "scaleBase":F
    mul-float v3, v2, p2

    return v3

    .line 254
    .end local v2    # "scaleBase":F
    :cond_1c
    return v0
.end method

.method static getSmartSwitchBackupStatus(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 464
    const-string v0, "content://com.sec.android.easyMover.statusProvider/isRunning"

    invoke-static {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "status":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartSwitch backup status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    if-eqz v0, :cond_22

    move-object v1, v0

    goto :goto_24

    :cond_22
    const-string v1, "PROVIDER_CALL_FAILED"

    :goto_24
    return-object v1
.end method

.method static getStatusOfBackupInProgress(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 437
    invoke-static {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getCloudBackupStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "cloudBackupStatus":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_40

    :cond_b
    goto :goto_2a

    :sswitch_c
    const-string v1, "BACKUP_RUNNING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_2b

    :sswitch_16
    const-string v1, "BACKUP_NON_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_2b

    :sswitch_20
    const-string v1, "RESTORE_RUNNING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x2

    goto :goto_2b

    :goto_2a
    const/4 v1, -0x1

    :goto_2b
    packed-switch v1, :pswitch_data_4e

    .line 445
    invoke-static {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getSmartSwitchBackupStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "smartSwitchBackupStatus":Ljava/lang/String;
    const-string v2, "TRUE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 447
    return-object v2

    .line 442
    .end local v1    # "smartSwitchBackupStatus":Ljava/lang/String;
    :pswitch_3b
    return-object v0

    .line 450
    .restart local v1    # "smartSwitchBackupStatus":Ljava/lang/String;
    :cond_3c
    const-string v2, "NOT_IN_PROGRESS"

    return-object v2

    nop

    :sswitch_data_40
    .sparse-switch
        -0x3fd5a732 -> :sswitch_20
        -0x2c16aedf -> :sswitch_16
        -0xd7f2fde -> :sswitch_c
    .end sparse-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method static getType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uriString"    # Ljava/lang/String;

    .line 514
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 515
    :catch_d
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to getType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, "PROVIDER_CALL_FAILED"

    return-object v0
.end method

.method public static hasSystemFeature()Z
    .registers 4

    .line 163
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "com.samsung.feature.support_repair_mode"

    invoke-interface {v1, v2, v0}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    return v0

    .line 165
    :catch_c
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MaintenanceMode"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private static isCloudBackupSupported(Landroid/os/Bundle;)Z
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 410
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 411
    return v0

    .line 413
    :cond_4
    const-string/jumbo v1, "support"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 414
    .local v0, "isSupported":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cloud backup support: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return v0
.end method

.method static isFold()Z
    .registers 1

    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public static isLowOnStorage(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 212
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    .line 213
    .local v1, "usableSpace":J
    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 214
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1f

    .line 215
    .local v3, "memoryLowThreshold":J
    cmp-long v5, v1, v3

    if-gez v5, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0

    .line 216
    .end local v1    # "usableSpace":J
    .end local v3    # "memoryLowThreshold":J
    :catch_1f
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check storage capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MaintenanceMode"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static isMaintenanceModeFeature(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 157
    const-string v0, "com.samsung.feature.support_repair_mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMaintenanceModeUser(Landroid/content/pm/UserInfo;)Z
    .registers 4
    .param p0, "info"    # Landroid/content/pm/UserInfo;

    .line 148
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 149
    return v0

    .line 151
    :cond_4
    iget v1, p0, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_12

    iget v1, p0, Landroid/content/pm/UserInfo;->id:I

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 471
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 472
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_d

    if-eqz v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    .line 473
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_d
    move-exception v1

    .line 474
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MaintenanceMode"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method static isSecureLockSet(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 232
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 233
    .local v0, "km":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_10

    .line 234
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v1

    return v1

    .line 236
    :cond_10
    const-string v1, "MaintenanceMode"

    const-string v2, "KeyguardManager is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v1, 0x0

    return v1
.end method

.method static isTablet()Z
    .registers 2

    .line 223
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_14

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method static sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "eventValue"    # Ljava/lang/String;

    .line 523
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 524
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "tracking_id"

    const-string v2, "431-399-4853100"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string/jumbo v1, "pkg_name"

    const-string v2, "com.samsung.android.lool"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string/jumbo v1, "type"

    const-string v2, "ev"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    if-eqz p2, :cond_2a

    .line 529
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_2a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 535
    const-string v2, "MaintenanceMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "E-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 536
    if-nez p2, :cond_4f

    const-string v4, ""

    goto :goto_62

    :cond_4f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 535
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_70} :catch_71

    .line 540
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_72

    .line 538
    :catch_71
    move-exception v0

    .line 541
    :goto_72
    return-void
.end method

.method public static setDisallowedSetting(Z)V
    .registers 7
    .param p0, "disallow"    # Z

    .line 187
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_d

    .line 188
    return-void

    .line 191
    :cond_d
    const-string/jumbo v0, "persist.sys.disallow_maintenance_mode"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "stackTrace":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisallowedSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-eqz v0, :cond_7d

    .line 195
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    const/16 v3, 0x5b

    if-le v1, v3, :cond_5b

    .line 197
    new-instance v1, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x5a

    invoke-direct {v1, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v1

    .line 201
    :cond_5b
    :try_start_5b
    const-string/jumbo v1, "persist.sys.disallow_maintenance_mode_last_caller"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5b .. :try_end_61} :catch_62

    .line 205
    goto :goto_7d

    .line 203
    :catch_62
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_7d
    :goto_7d
    return-void
.end method

.method private static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 380
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 383
    goto :goto_21

    .line 381
    :catch_4
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_21
    return-void
.end method

.method static startActivityToSetSecureLock(Landroid/content/Context;)V
    .registers 4
    .param p0, "activityContext"    # Landroid/content/Context;

    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "hide_biometrics_menu"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 328
    const-string v1, "from_sec_non_biometrics"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 329
    invoke-static {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 330
    return-void
.end method

.method static startCloudActivity(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 333
    const-string v0, "MaintenanceMode"

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->callCloudProvider(Landroid/content/Context;Z)Landroid/os/Bundle;

    move-result-object v1

    .line 334
    .local v1, "res":Landroid/os/Bundle;
    if-nez v1, :cond_a

    .line 335
    return-void

    .line 340
    :cond_a
    :try_start_a
    const-string/jumbo v2, "targetIntent"

    const-class v3, Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 342
    .local v2, "targetIntent":Landroid/content/Intent;
    if-nez v2, :cond_1d

    .line 343
    const-string v3, "Failed to start SCloud: targetIntent is null"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1c} :catch_27

    .line 344
    return-void

    .line 349
    :cond_1d
    nop

    .line 351
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 352
    invoke-static {p0, v2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 353
    return-void

    .line 346
    .end local v2    # "targetIntent":Landroid/content/Intent;
    :catch_27
    move-exception v2

    .line 347
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getParcelable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void
.end method

.method static startMyFilesActivity(Landroid/app/Activity;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 371
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.myfiles.RUN_STORAGE_ANALYSIS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 375
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_29

    .line 373
    :catch_c
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_29
    return-void
.end method

.method static startSmartSwitchActivity(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 357
    const-string v0, "com.sec.android.easyMover"

    invoke-static {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 358
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    goto :goto_1c

    .line 360
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.easyMover.Agent.action.AUTO_DOWNLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .restart local v0    # "intent":Landroid/content/Intent;
    sget-object v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->COMPONENT_SMART_SWITCH_AGENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 364
    :goto_1c
    const-string v1, "EXTERNAL_BNR"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 365
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 366
    invoke-static {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 367
    return-void
.end method
