.class public Landroid/appwidget/AppWidgetHost;
.super Ljava/lang/Object;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;,
        Landroid/appwidget/AppWidgetHost$UpdateHandler;,
        Landroid/appwidget/AppWidgetHost$Callbacks;
    }
.end annotation


# static fields
.field static final HANDLE_APP_WIDGET_REMOVED:I = 0x5

.field static final HANDLE_PROVIDERS_CHANGED:I = 0x3

.field static final HANDLE_PROVIDER_CHANGED:I = 0x2

.field static final HANDLE_UPDATE:I = 0x1

.field static final HANDLE_VIEW_DATA_CHANGED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AppWidgetHost"

.field static sService:Lcom/android/internal/appwidget/IAppWidgetService;

.field static sServiceInitialized:Z

.field static final sServiceLock:Ljava/lang/Object;


# instance fields
.field private final mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

.field private mContextOpPackageName:Ljava/lang/String;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mHandler:Landroid/os/Handler;

.field private final mHostId:I

.field private mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private final mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostId"    # I

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$InteractionHandler;Landroid/os/Looper;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/RemoteViews$InteractionHandler;Landroid/os/Looper;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostId"    # I
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    .line 200
    iput p2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    .line 201
    iput-object p3, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 202
    new-instance v0, Landroid/appwidget/AppWidgetHost$UpdateHandler;

    invoke-direct {v0, p0, p4}, Landroid/appwidget/AppWidgetHost$UpdateHandler;-><init>(Landroid/appwidget/AppWidgetHost;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    .line 203
    new-instance v1, Landroid/appwidget/AppWidgetHost$Callbacks;

    invoke-direct {v1, v0}, Landroid/appwidget/AppWidgetHost$Callbacks;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 205
    invoke-static {p1}, Landroid/appwidget/AppWidgetHost;->bindService(Landroid/content/Context;)V

    .line 206
    return-void
.end method

.method private static bindService(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 209
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_3
    sget-boolean v1, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    if-eqz v1, :cond_9

    .line 211
    monitor-exit v0

    return-void

    .line 213
    :cond_9
    const/4 v1, 0x1

    sput-boolean v1, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 215
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "android.software.app_widgets"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110148

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_27

    .line 217
    monitor-exit v0

    return-void

    .line 219
    :cond_27
    const-string v2, "appwidget"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 220
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v3

    sput-object v3, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 221
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "b":Landroid/os/IBinder;
    monitor-exit v0

    .line 222
    return-void

    .line 221
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public static deleteAllHosts()V
    .registers 3

    .line 457
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 458
    return-void

    .line 461
    :cond_5
    :try_start_5
    invoke-interface {v0}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAllHosts()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    .line 465
    nop

    .line 466
    return-void

    .line 463
    :catch_a
    move-exception v0

    .line 464
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;
    .registers 5
    .param p1, "appWidgetId"    # I

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "tempListener":Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v1

    .line 189
    :try_start_4
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    move-object v0, v2

    .line 190
    monitor-exit v1

    .line 191
    return-object v0

    .line 190
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v2
.end method


# virtual methods
.method public allocateAppWidgetId()I
    .registers 4

    .line 291
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 292
    const/4 v0, -0x1

    return v0

    .line 295
    :cond_6
    :try_start_6
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->allocateAppWidgetId(Ljava/lang/String;I)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 297
    :catch_f
    move-exception v0

    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected clearViews()V
    .registers 3

    .line 619
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 620
    :try_start_3
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 621
    monitor-exit v0

    .line 622
    return-void

    .line 621
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 474
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 475
    const/4 v0, 0x0

    return-object v0

    .line 477
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 478
    .local v0, "view":Landroid/appwidget/AppWidgetHostView;
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 479
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 480
    invoke-virtual {p0, p2, v0}, Landroid/appwidget/AppWidgetHost;->setListener(ILandroid/appwidget/AppWidgetHost$AppWidgetHostListener;)V

    .line 482
    return-object v0
.end method

.method public deleteAppWidgetId(I)V
    .registers 6
    .param p1, "appWidgetId"    # I

    .line 413
    const-string v0, "AppWidgetHost"

    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_7

    .line 414
    return-void

    .line 416
    :cond_7
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHost;->removeListener(I)V

    .line 419
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAppWidgetId() appWidgetId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v1, "Stack:"

    new-instance v2, Ljava/lang/Throwable;

    const-string/jumbo v3, "stack dump"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAppWidgetId(Ljava/lang/String;I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_34} :catch_36

    .line 425
    nop

    .line 426
    return-void

    .line 423
    :catch_36
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteHost()V
    .registers 4

    .line 437
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 438
    return-void

    .line 441
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteHost(Ljava/lang/String;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_e

    .line 445
    nop

    .line 446
    return-void

    .line 443
    :catch_e
    move-exception v0

    .line 444
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method dispatchOnAppWidgetRemoved(I)V
    .registers 2
    .param p1, "appWidgetId"    # I

    .line 543
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHost;->removeListener(I)V

    .line 544
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHost;->onAppWidgetRemoved(I)V

    .line 545
    return-void
.end method

.method public getAppWidgetIds()[I
    .registers 4

    .line 399
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_8

    .line 400
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 403
    :cond_8
    :try_start_8
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIdsForHost(Ljava/lang/String;I)[I

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_11

    return-object v0

    .line 404
    :catch_11
    move-exception v0

    .line 405
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onAppWidgetRemoved(I)V
    .registers 2
    .param p1, "appWidgetId"    # I

    .line 553
    return-void
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 491
    new-instance v0, Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-object v0
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 5
    .param p1, "appWidgetId"    # I
    .param p2, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 498
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHost;->getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    move-result-object v0

    .line 503
    .local v0, "v":Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p2, v1}, Landroid/appwidget/AppWidgetProviderInfo;->updateDimensions(Landroid/util/DisplayMetrics;)V

    .line 504
    if-eqz v0, :cond_e

    .line 505
    invoke-interface {v0, p2}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->onUpdateProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 507
    :cond_e
    return-void
.end method

.method protected onProvidersChanged()V
    .registers 1

    .line 561
    return-void
.end method

.method public removeListener(I)V
    .registers 4
    .param p1, "appWidgetId"    # I

    .line 590
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 591
    :try_start_3
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 592
    monitor-exit v0

    .line 593
    return-void

    .line 592
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final semStartAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    .registers 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appWidgetId"    # I
    .param p3, "intentFlags"    # I
    .param p4, "requestCode"    # I
    .param p5, "options"    # Landroid/os/Bundle;

    .line 366
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 367
    return-void

    .line 370
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->semCreateAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    move-result-object v0

    .line 372
    .local v0, "intentSender":Landroid/content/IntentSender;
    if-eqz v0, :cond_1a

    .line 373
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, v0

    move v3, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 382
    .end local v0    # "intentSender":Landroid/content/IntentSender;
    nop

    .line 383
    return-void

    .line 376
    .restart local v0    # "intentSender":Landroid/content/IntentSender;
    :cond_1a
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    .end local p0    # "this":Landroid/appwidget/AppWidgetHost;
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "appWidgetId":I
    .end local p3    # "intentFlags":I
    .end local p4    # "requestCode":I
    .end local p5    # "options":Landroid/os/Bundle;
    throw v1
    :try_end_20
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_5 .. :try_end_20} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_20} :catch_20

    .line 380
    .end local v0    # "intentSender":Landroid/content/IntentSender;
    .restart local p0    # "this":Landroid/appwidget/AppWidgetHost;
    .restart local p1    # "activity":Landroid/app/Activity;
    .restart local p2    # "appWidgetId":I
    .restart local p3    # "intentFlags":I
    .restart local p4    # "requestCode":I
    .restart local p5    # "options":Landroid/os/Bundle;
    :catch_20
    move-exception v0

    .line 381
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 378
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2a
    move-exception v0

    .line 379
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v1
.end method

.method public setAppWidgetHidden()V
    .registers 4

    .line 348
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 349
    return-void

    .line 352
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->setAppWidgetHidden(Ljava/lang/String;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_e

    .line 355
    nop

    .line 356
    return-void

    .line 353
    :catch_e
    move-exception v0

    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "System server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 2
    .param p1, "interactionHandler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 392
    iput-object p1, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 393
    return-void
.end method

.method public setListener(ILandroid/appwidget/AppWidgetHost$AppWidgetHostListener;)V
    .registers 7
    .param p1, "appWidgetId"    # I
    .param p2, "listener"    # Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    .line 571
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 572
    :try_start_3
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 573
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_22

    .line 574
    const/4 v0, 0x0

    .line 576
    .local v0, "views":Landroid/widget/RemoteViews;
    :try_start_a
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_18

    move-object v0, v1

    .line 579
    nop

    .line 580
    invoke-interface {p2, v0}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 581
    return-void

    .line 577
    :catch_18
    move-exception v1

    .line 578
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "system server dead?"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 573
    .end local v0    # "views":Landroid/widget/RemoteViews;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public final startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    .registers 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appWidgetId"    # I
    .param p3, "intentFlags"    # I
    .param p4, "requestCode"    # I
    .param p5, "options"    # Landroid/os/Bundle;

    .line 323
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 324
    return-void

    .line 327
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    move-result-object v0

    .line 329
    .local v0, "intentSender":Landroid/content/IntentSender;
    if-eqz v0, :cond_1a

    .line 330
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, v0

    move v3, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 339
    .end local v0    # "intentSender":Landroid/content/IntentSender;
    nop

    .line 340
    return-void

    .line 333
    .restart local v0    # "intentSender":Landroid/content/IntentSender;
    :cond_1a
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    .end local p0    # "this":Landroid/appwidget/AppWidgetHost;
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "appWidgetId":I
    .end local p3    # "intentFlags":I
    .end local p4    # "requestCode":I
    .end local p5    # "options":Landroid/os/Bundle;
    throw v1
    :try_end_20
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_5 .. :try_end_20} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_20} :catch_20

    .line 337
    .end local v0    # "intentSender":Landroid/content/IntentSender;
    .restart local p0    # "this":Landroid/appwidget/AppWidgetHost;
    .restart local p1    # "activity":Landroid/app/Activity;
    .restart local p2    # "appWidgetId":I
    .restart local p3    # "intentFlags":I
    .restart local p4    # "requestCode":I
    .restart local p5    # "options":Landroid/os/Bundle;
    :catch_20
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 335
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2a
    move-exception v0

    .line 336
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v1
.end method

.method public startListening()V
    .registers 8

    .line 229
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 230
    return-void

    .line 233
    :cond_5
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 234
    :try_start_8
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 235
    .local v1, "n":I
    new-array v2, v1, [I

    .line 236
    .local v2, "idsToUpdate":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v1, :cond_1e

    .line 237
    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 239
    .end local v1    # "n":I
    .end local v3    # "i":I
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_6f

    .line 242
    :try_start_1f
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v4, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v3, v4, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2f} :catch_65

    .line 247
    .local v0, "updates":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/PendingHostUpdate;>;"
    nop

    .line 249
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 250
    .local v1, "N":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_35
    if-ge v3, v1, :cond_64

    .line 251
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/PendingHostUpdate;

    .line 252
    .local v4, "update":Landroid/appwidget/PendingHostUpdate;
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->type:I

    packed-switch v5, :pswitch_data_72

    goto :goto_61

    .line 263
    :pswitch_43
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    invoke-virtual {p0, v5}, Landroid/appwidget/AppWidgetHost;->dispatchOnAppWidgetRemoved(I)V

    goto :goto_61

    .line 260
    :pswitch_49
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget v6, v4, Landroid/appwidget/PendingHostUpdate;->viewId:I

    invoke-virtual {p0, v5, v6}, Landroid/appwidget/AppWidgetHost;->viewDataChanged(II)V

    .line 261
    goto :goto_61

    .line 257
    :pswitch_51
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget-object v6, v4, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, v5, v6}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 258
    goto :goto_61

    .line 254
    :pswitch_59
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget-object v6, v4, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v5, v6}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetView(ILandroid/widget/RemoteViews;)V

    .line 255
    nop

    .line 250
    .end local v4    # "update":Landroid/appwidget/PendingHostUpdate;
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 267
    .end local v3    # "i":I
    :cond_64
    return-void

    .line 245
    .end local v0    # "updates":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/PendingHostUpdate;>;"
    .end local v1    # "N":I
    :catch_65
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "system server dead?"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 239
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "idsToUpdate":[I
    :catchall_6f
    move-exception v1

    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v1

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_59
        :pswitch_51
        :pswitch_49
        :pswitch_43
    .end packed-switch
.end method

.method public stopListening()V
    .registers 4

    .line 274
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 275
    return-void

    .line 278
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->stopListening(Ljava/lang/String;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_e

    .line 282
    nop

    .line 283
    return-void

    .line 280
    :catch_e
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method updateAppWidgetView(ILandroid/widget/RemoteViews;)V
    .registers 6
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 596
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHost;->getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    move-result-object v0

    .line 598
    .local v0, "v":Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppWidgetView, appWidgetId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", v = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetHost"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    if-eqz v0, :cond_2c

    .line 601
    invoke-interface {v0, p2}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 603
    :cond_2c
    return-void
.end method

.method viewDataChanged(II)V
    .registers 6
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I

    .line 606
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHost;->getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    move-result-object v0

    .line 608
    .local v0, "v":Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "viewDataChanged, appWidgetId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", v = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetHost"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    if-eqz v0, :cond_2c

    .line 611
    invoke-interface {v0, p2}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->onViewDataChanged(I)V

    .line 613
    :cond_2c
    return-void
.end method
