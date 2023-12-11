.class public Lcom/samsung/android/multiwindow/MultiWindowUtils;
.super Ljava/lang/Object;
.source "MultiWindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;
    }
.end annotation


# static fields
.field public static final ADD_APP_PAIR_SHORTCUT_EDGE_PANEL:I = 0x2

.field public static final ADD_APP_PAIR_SHORTCUT_HOME:I = 0x1

.field public static final ADD_APP_PAIR_SHORTCUT_TASKBAR:I = 0x0

.field private static final DENSITY_FREEFORM:I = 0x4

.field private static final DENSITY_NONE:I = 0x0

.field private static final DENSITY_SPLIT:I = 0x2

.field public static final DEX_DEFAULT_SIZE_RATIO:Landroid/graphics/PointF;

.field public static final DEX_DEFAULT_SIZE_RATIO_FOR_STANDALONE:Landroid/graphics/PointF;

.field private static final EXTRA_ALL_APPS_BUTTON_POSITION:Ljava/lang/String; = "buttonPos"

.field private static final EXTRA_LAUNCH_TASK_ID:Ljava/lang/String; = "launchTaskId"

.field private static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field private static final EXTRA_SPLIT_COMPONENT:Ljava/lang/String; = "split_component_name"

.field private static final EXTRA_SPLIT_TASK_ID:Ljava/lang/String; = "split_task_id"

.field private static final EXTRA_SPLIT_TASK_USER_ID:Ljava/lang/String; = "split_task_user_id"

.field public static final FLEX_PANEL_CLASS_NAME:Ljava/lang/String; = "com.android.wm.shell.controlpanel.activity.FlexPanelActivity"

.field public static final FLEX_PANEL_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final FLEX_PANEL_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final FREEFORM_DEFAULT_LONG_SIZE_RATIO:F = 0.5f

.field private static final FREEFORM_DEFAULT_LONG_SIZE_RATIO_FOR_TABLET:F = 0.72f

.field private static final FREEFORM_DEFAULT_SHORT_SIZE_RATIO:F = 0.85f

.field private static final FREEFORM_DEFAULT_SHORT_SIZE_RATIO_FOR_TABLET:F = 0.3f

.field private static final FREEFORM_DEFAULT_SIZE_RATIO_FOR_MULTI_SPLIT:F = 0.45f

.field private static final HONEY_SPACE_EDGE_APP_PICKER_CLASS_NAME:Ljava/lang/String; = "com.samsung.app.honeyspace.edge.fromrecent.FromRecentActivity"

.field private static final HONEY_SPACE_EDGE_PANEL_PROVIDER:Ljava/lang/String; = "com.samsung.app.honeyspace.edge.appsedge.ui.panel.AppsEdgePanelProvider"

.field private static final HONEY_SPACE_EDGE_PKG_NAME:Ljava/lang/String; = "com.sec.android.app.launcher"

.field private static final HONEY_SPACE_OVERLAY_ALLAPPS_SERVICE_CLS:Ljava/lang/String; = "com.sec.android.app.launcher.overlayapps.OverlayAppsService"

.field public static final MAX_BOUNDS_CONFLICT_COUNT:I = 0xc8

.field private static final PERMISSION_CONTROLLER_PACKAGE:Ljava/lang/String; = "com.google.android.permissioncontroller"

.field private static final SCREEN_CAPTURE_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.smartcapture"

.field private static final SEC_LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.launcher"

.field public static final SEND_SPLIT_STATE_CHANGED_INFO:I = 0x3

.field private static final VALUE_MODE_FROM_MW:I = 0x3

.field private static final sIsTablet:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 61
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->checkIsTablet()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowUtils;->sIsTablet:Z

    .line 82
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.wm.shell.controlpanel.activity.FlexPanelActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowUtils;->FLEX_PANEL_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 153
    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x3ed70a3d    # 0.42f

    const v2, 0x3f0f5c29    # 0.56f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowUtils;->DEX_DEFAULT_SIZE_RATIO:Landroid/graphics/PointF;

    .line 154
    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x3f0ccccd    # 0.55f

    const v2, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowUtils;->DEX_DEFAULT_SIZE_RATIO_FOR_STANDALONE:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkIsTablet()Z
    .registers 2

    .line 158
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
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

.method public static dipToPixel(ILandroid/util/DisplayMetrics;)I
    .registers 4
    .param p0, "dip"    # I
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 434
    const/4 v0, 0x1

    int-to-float v1, p0

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static getDefaultFreeformBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 10
    .param p0, "displayBounds"    # Landroid/graphics/Rect;
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 355
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 356
    .local v0, "displayWidth":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 359
    .local v1, "displayHeight":I
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 360
    if-le v0, v1, :cond_17

    .line 361
    const v2, 0x3e99999a    # 0.3f

    .line 362
    .local v2, "widthRatio":F
    const v3, 0x3f3851ec    # 0.72f

    .local v3, "heightRatio":F
    goto :goto_36

    .line 364
    .end local v2    # "widthRatio":F
    .end local v3    # "heightRatio":F
    :cond_17
    const v2, 0x3f3851ec    # 0.72f

    .line 365
    .restart local v2    # "widthRatio":F
    const v3, 0x3e99999a    # 0.3f

    .restart local v3    # "heightRatio":F
    goto :goto_36

    .line 367
    .end local v2    # "widthRatio":F
    .end local v3    # "heightRatio":F
    :cond_1e
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    if-eqz v2, :cond_29

    .line 368
    const v2, 0x3ee66666    # 0.45f

    move v3, v2

    .local v3, "widthRatio":F
    move v7, v3

    move v2, v7

    .local v2, "heightRatio":F
    goto :goto_36

    .line 369
    .end local v2    # "heightRatio":F
    .end local v3    # "widthRatio":F
    :cond_29
    if-le v0, v1, :cond_31

    .line 370
    const/high16 v2, 0x3f000000    # 0.5f

    .line 371
    .local v2, "widthRatio":F
    const v3, 0x3f59999a    # 0.85f

    .local v3, "heightRatio":F
    goto :goto_36

    .line 373
    .end local v2    # "widthRatio":F
    .end local v3    # "heightRatio":F
    :cond_31
    const v2, 0x3f59999a    # 0.85f

    .line 374
    .restart local v2    # "widthRatio":F
    const/high16 v3, 0x3f000000    # 0.5f

    .line 377
    .restart local v3    # "heightRatio":F
    :goto_36
    int-to-float v4, v0

    mul-float/2addr v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 378
    .local v4, "width":I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v6, v5

    float-to-int v5, v6

    .line 379
    .local v5, "height":I
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_4b

    if-ge v0, v1, :cond_4b

    .line 381
    move v6, v4

    .line 382
    .local v6, "temp":I
    move v4, v5

    .line 383
    move v5, v6

    .line 385
    .end local v6    # "temp":I
    :cond_4b
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 386
    return-void
.end method

.method private static getDensityBucket(I)I
    .registers 2
    .param p0, "densityDpi"    # I

    .line 242
    const/16 v0, 0x78

    if-gt p0, v0, :cond_5

    .line 243
    return v0

    .line 244
    :cond_5
    const/16 v0, 0xa0

    if-gt p0, v0, :cond_a

    .line 245
    return v0

    .line 246
    :cond_a
    const/16 v0, 0xf0

    if-gt p0, v0, :cond_f

    .line 247
    return v0

    .line 248
    :cond_f
    const/16 v0, 0x140

    if-gt p0, v0, :cond_14

    .line 249
    return v0

    .line 250
    :cond_14
    const/16 v0, 0x1e0

    if-gt p0, v0, :cond_19

    .line 251
    return v0

    .line 253
    :cond_19
    const/16 v0, 0x280

    return v0
.end method

.method public static getEdgeAllAppsActivityIntent(Landroid/content/ComponentName;II)Landroid/content/Intent;
    .registers 7
    .param p0, "splitComponent"    # Landroid/content/ComponentName;
    .param p1, "userId"    # I
    .param p2, "taskId"    # I

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.launcher"

    const-string v3, "com.samsung.app.honeyspace.edge.fromrecent.FromRecentActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v1, "split_component_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v1, "split_task_user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    const-string/jumbo v1, "split_task_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    const/high16 v1, 0x30040000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    return-object v0
.end method

.method public static getEdgeAllAppsComponent()Landroid/content/ComponentName;
    .registers 3

    .line 125
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.launcher"

    const-string v2, "com.samsung.app.honeyspace.edge.fromrecent.FromRecentActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getEdgePanelProviderName()Ljava/lang/String;
    .registers 1

    .line 129
    const-string v0, "com.samsung.app.honeyspace.edge.appsedge.ui.panel.AppsEdgePanelProvider"

    return-object v0
.end method

.method public static getExternalAppsServiceIntent(I[I)Landroid/content/Intent;
    .registers 5
    .param p0, "taskId"    # I
    .param p1, "buttonPosition"    # [I

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "buttonPos"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 113
    const-string/jumbo v1, "mode"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string/jumbo v1, "launchTaskId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const-string v1, "com.sec.android.app.launcher"

    const-string v2, "com.sec.android.app.launcher.overlayapps.OverlayAppsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    return-object v0
.end method

.method public static getLaunchIntentForPackageAsUser(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 12
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 210
    const-string v0, "android.intent.category.INFO"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v2, "intentToResolve":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v5, v2

    move v9, p1

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 214
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 217
    .local v3, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_29

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_46

    .line 219
    :cond_29
    invoke-virtual {v2, v0}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 220
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v5, v2

    move v9, p1

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    .line 225
    :cond_46
    if-eqz v3, :cond_72

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4f

    goto :goto_72

    .line 229
    :cond_4f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 230
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 231
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_71} :catch_73

    .line 232
    return-object v0

    .line 226
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_72
    :goto_72
    return-object v1

    .line 233
    .end local v2    # "intentToResolve":Landroid/content/Intent;
    .end local v3    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_73
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLaunchIntentForPackageAsUser, e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MultiWindowUtils"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method private static getMinimumDensityWithinBucket(I)I
    .registers 2
    .param p0, "densityBucket"    # I

    .line 273
    sparse-switch p0, :sswitch_data_14

    .line 285
    return p0

    .line 283
    :sswitch_4
    const/16 v0, 0x1e1

    return v0

    .line 281
    :sswitch_7
    const/16 v0, 0x141

    return v0

    .line 279
    :sswitch_a
    const/16 v0, 0xf1

    return v0

    .line 277
    :sswitch_d
    const/16 v0, 0xa1

    return v0

    .line 275
    :sswitch_10
    const/16 v0, 0x79

    return v0

    nop

    :sswitch_data_14
    .sparse-switch
        0xa0 -> :sswitch_10
        0xf0 -> :sswitch_d
        0x140 -> :sswitch_a
        0x1e0 -> :sswitch_7
        0x280 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getRoundedCornerColorForMultiWindow(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060418

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method public static getScaleDownDensity(II)I
    .registers 5
    .param p0, "smallestWidth"    # I
    .param p1, "densityDpi"    # I

    .line 257
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->hasCustomDensity()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 259
    :cond_7
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_25

    const/16 v0, 0x258

    if-lt p0, v0, :cond_12

    goto :goto_25

    .line 263
    :cond_12
    :goto_12
    mul-int/lit8 v0, p1, 0x4b

    div-int/lit8 v0, v0, 0x64

    .line 264
    .local v0, "scaledDensityDpi":I
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getDensityBucket(I)I

    move-result v1

    .line 265
    .local v1, "densityBucket":I
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getDensityBucket(I)I

    move-result v2

    .line 266
    .local v2, "scaledDensityBucket":I
    if-ge v2, v1, :cond_24

    .line 267
    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getMinimumDensityWithinBucket(I)I

    move-result v0

    .line 269
    :cond_24
    return v0

    .line 260
    .end local v0    # "scaledDensityDpi":I
    .end local v1    # "densityBucket":I
    .end local v2    # "scaledDensityBucket":I
    :cond_25
    :goto_25
    const/4 v0, -0x1

    return v0
.end method

.method public static hasCustomDensity()Z
    .registers 1

    .line 294
    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static isAppsEdgeActivity(Landroid/content/ComponentName;)Z
    .registers 3
    .param p0, "comp"    # Landroid/content/ComponentName;

    .line 121
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.app.honeyspace.edge.fromrecent.FromRecentActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDefaultLauncher(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const/4 v1, 0x0

    .line 179
    .local v1, "defaultLauncher":Ljava/lang/String;
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1b} :catch_1d

    move-object v1, v2

    .line 183
    goto :goto_21

    .line 181
    :catch_1d
    move-exception v2

    .line 182
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_21
    const-string v2, "com.sec.android.app.launcher"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static isEnabledCustomDensityType(IIZ)Z
    .registers 7
    .param p0, "windowingMode"    # I
    .param p1, "activityType"    # I
    .param p2, "isSplitScreenWindowingMode"    # Z

    .line 303
    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    if-nez p1, :cond_2a

    :cond_a
    const/4 v2, 0x2

    if-eq p0, v2, :cond_2a

    if-eq p0, v0, :cond_2a

    if-nez p0, :cond_12

    goto :goto_2a

    .line 313
    :cond_12
    const/4 v3, 0x5

    if-ne p0, v3, :cond_1d

    .line 314
    sget v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_1c

    move v1, v0

    :cond_1c
    return v1

    .line 318
    :cond_1d
    const/4 v3, 0x6

    if-ne p0, v3, :cond_29

    if-eqz p2, :cond_29

    .line 319
    sget v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    and-int/2addr v2, v3

    if-lez v2, :cond_28

    move v1, v0

    :cond_28
    return v1

    .line 323
    :cond_29
    return v1

    .line 310
    :cond_2a
    :goto_2a
    return v1
.end method

.method public static isFlexPanelEnabled(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public static isInSubDisplay(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static isKeepFlexPanelTask(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkg"    # Ljava/lang/String;

    .line 415
    const-string v0, "com.samsung.android.app.smartcapture"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 416
    const-string v0, "com.google.android.permissioncontroller"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 415
    :goto_14
    return v0
.end method

.method public static isNightMode(Landroid/app/TaskInfo;)Z
    .registers 4
    .param p0, "taskInfo"    # Landroid/app/TaskInfo;

    .line 422
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 423
    return v0

    .line 426
    :cond_4
    iget v1, p0, Landroid/app/TaskInfo;->topActivityUiMode:I

    if-eqz v1, :cond_12

    .line 427
    iget v1, p0, Landroid/app/TaskInfo;->topActivityUiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    .line 430
    :cond_12
    invoke-virtual {p0}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v0

    return v0
.end method

.method public static isSingleInstancePerTask(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 392
    .local v0, "i":Landroid/content/Intent;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 393
    return v1

    .line 395
    :cond_c
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 397
    .local v2, "cn":Landroid/content/ComponentName;
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 398
    const-wide/16 v4, 0x80

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v4

    .line 397
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 399
    .local v3, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v3, :cond_23

    iget v4, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    goto :goto_24

    :cond_23
    const/4 v4, -0x1

    .line 400
    .local v4, "launchMode":I
    :goto_24
    if-eqz v3, :cond_33

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_33

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.activity.launch_mode"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_34

    .line 401
    :cond_33
    const/4 v5, 0x0

    :goto_34
    nop

    .line 402
    .local v5, "launchMode2":Ljava/lang/String;
    const/4 v6, 0x4

    if-eq v4, v6, :cond_45

    if-eqz v5, :cond_44

    const-string/jumbo v6, "singleInstancePerTask"

    .line 403
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_41} :catch_47

    if-eqz v6, :cond_44

    goto :goto_45

    .line 408
    .end local v3    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "launchMode":I
    .end local v5    # "launchMode2":Ljava/lang/String;
    :cond_44
    goto :goto_4b

    .line 404
    .restart local v3    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "launchMode":I
    .restart local v5    # "launchMode2":Ljava/lang/String;
    :cond_45
    :goto_45
    const/4 v1, 0x1

    return v1

    .line 406
    .end local v3    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "launchMode":I
    .end local v5    # "launchMode2":Ljava/lang/String;
    :catch_47
    move-exception v3

    .line 407
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 409
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4b
    return v1
.end method

.method public static isSplitEnabled(I)Z
    .registers 2
    .param p0, "multiSplitFlags"    # I

    .line 438
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_b

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static isTablet()Z
    .registers 1

    .line 163
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowUtils;->sIsTablet:Z

    return v0
.end method

.method public static logForMultiWindowModeChange(IIII)V
    .registers 9
    .param p0, "prevWinMode"    # I
    .param p1, "newWinMode"    # I
    .param p2, "prevStageType"    # I
    .param p3, "newStageType"    # I

    .line 446
    if-ne p0, p1, :cond_3

    .line 447
    return-void

    .line 449
    :cond_3
    invoke-static {p0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 450
    invoke-static {p1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 451
    return-void

    .line 453
    :cond_10
    const/4 v0, 0x6

    if-ne p0, v0, :cond_16

    if-nez p2, :cond_16

    .line 454
    return-void

    .line 456
    :cond_16
    if-ne p1, v0, :cond_1b

    if-nez p3, :cond_1b

    .line 457
    return-void

    .line 460
    :cond_1b
    const/4 v1, 0x0

    .line 461
    .local v1, "value":I
    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne p0, v4, :cond_2d

    .line 462
    if-ne p1, v0, :cond_25

    .line 463
    const/4 v1, 0x1

    goto :goto_5b

    .line 464
    :cond_25
    if-ne p1, v3, :cond_29

    .line 465
    const/4 v1, 0x2

    goto :goto_5b

    .line 466
    :cond_29
    if-ne p1, v2, :cond_5b

    .line 467
    const/4 v1, 0x3

    goto :goto_5b

    .line 469
    :cond_2d
    if-ne p0, v0, :cond_3b

    .line 470
    if-ne p1, v4, :cond_33

    .line 471
    const/4 v1, 0x4

    goto :goto_5b

    .line 472
    :cond_33
    if-ne p1, v3, :cond_37

    .line 473
    const/4 v1, 0x5

    goto :goto_5b

    .line 474
    :cond_37
    if-ne p1, v2, :cond_5b

    .line 475
    const/4 v1, 0x6

    goto :goto_5b

    .line 477
    :cond_3b
    if-ne p0, v3, :cond_4b

    .line 478
    if-ne p1, v4, :cond_41

    .line 479
    const/4 v1, 0x7

    goto :goto_5b

    .line 480
    :cond_41
    if-ne p1, v0, :cond_46

    .line 481
    const/16 v1, 0x8

    goto :goto_5b

    .line 482
    :cond_46
    if-ne p1, v2, :cond_5b

    .line 483
    const/16 v1, 0x9

    goto :goto_5b

    .line 485
    :cond_4b
    if-ne p0, v2, :cond_5b

    .line 486
    if-ne p1, v4, :cond_52

    .line 487
    const/16 v1, 0xa

    goto :goto_5b

    .line 488
    :cond_52
    if-ne p1, v0, :cond_57

    .line 489
    const/16 v1, 0xb

    goto :goto_5b

    .line 490
    :cond_57
    if-ne p1, v3, :cond_5b

    .line 491
    const/16 v1, 0xc

    .line 494
    :cond_5b
    :goto_5b
    if-eqz v1, :cond_62

    .line 495
    const-string v0, "1900"

    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;I)V

    .line 497
    :cond_62
    return-void
.end method

.method public static needToUpdateDensity(IIZ)Z
    .registers 4
    .param p0, "windowingMode"    # I
    .param p1, "activityType"    # I
    .param p2, "isSplitScreenWindowingMode"    # Z

    .line 328
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->hasCustomDensity()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 329
    invoke-static {p0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isEnabledCustomDensityType(IIZ)Z

    move-result v0

    return v0

    .line 332
    :cond_b
    const/4 v0, 0x0

    return v0
.end method
