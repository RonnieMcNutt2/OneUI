.class public Landroid/app/Application;
.super Landroid/content/ContextWrapper;
.source "Application.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Application$ActivityLifecycleCallbacks;,
        Landroid/app/Application$OnProvideAssistDataListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Application"


# instance fields
.field private mActivityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mAssistCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application$OnProvideAssistDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacksController:Landroid/content/ComponentCallbacksController;

.field private mFlipfont:I

.field public mLoadedApk:Landroid/app/LoadedApk;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    .line 65
    iput-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Landroid/content/ComponentCallbacksController;

    invoke-direct {v0}, Landroid/content/ComponentCallbacksController;-><init>()V

    iput-object v0, p0, Landroid/app/Application;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Application;->mFlipfont:I

    .line 244
    return-void
.end method

.method private collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .registers 4

    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, "callbacks":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 605
    :try_start_4
    iget-object v2, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 606
    iget-object v2, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 608
    :cond_13
    monitor-exit v1

    .line 609
    return-object v0

    .line 608
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v2
.end method

.method private getLoadedApkInfo()Ljava/lang/String;
    .registers 3

    .line 247
    iget-object v0, p0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    if-nez v0, :cond_8

    .line 248
    const-string/jumbo v0, "null"

    return-object v0

    .line 250
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    iget-object v1, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProcessName()Ljava/lang/String;
    .registers 1

    .line 355
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final attach(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 365
    invoke-virtual {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 366
    invoke-static {p1}, Landroid/app/ContextImpl;->getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iput-object v0, p0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    .line 367
    return-void
.end method

.method dispatchActivityConfigurationChanged(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 592
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 593
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 594
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 595
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityConfigurationChanged(Landroid/app/Activity;)V

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 599
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 384
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 385
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 386
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 387
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 391
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityDestroyed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 573
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 574
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 575
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 576
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 579
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityPaused(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 477
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 478
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 479
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 480
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 483
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 396
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 397
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 398
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 399
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 403
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityPostDestroyed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 583
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 584
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 585
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 586
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostDestroyed(Landroid/app/Activity;)V

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 589
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityPostPaused(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 487
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 488
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 489
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 490
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostPaused(Landroid/app/Activity;)V

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 493
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityPostResumed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 457
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 458
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 459
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 460
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostResumed(Landroid/app/Activity;)V

    .line 459
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 463
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 552
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 553
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 554
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 555
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 559
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityPostStarted(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 427
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 428
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 429
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 430
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostStarted(Landroid/app/Activity;)V

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 433
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityPostStopped(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 517
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 518
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 519
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 520
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostStopped(Landroid/app/Activity;)V

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 523
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 372
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 373
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 374
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 375
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 379
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityPreDestroyed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 563
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 564
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 565
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 566
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreDestroyed(Landroid/app/Activity;)V

    .line 565
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 569
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityPrePaused(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 467
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 468
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 469
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 470
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPrePaused(Landroid/app/Activity;)V

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 473
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityPreResumed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 437
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 438
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 439
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 440
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreResumed(Landroid/app/Activity;)V

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 443
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 528
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 529
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 530
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 531
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 535
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityPreStarted(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 407
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 408
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 409
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 410
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreStarted(Landroid/app/Activity;)V

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 413
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityPreStopped(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 497
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 498
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 499
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 500
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreStopped(Landroid/app/Activity;)V

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 503
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityResumed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 447
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 448
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 449
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 450
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 453
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 540
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 541
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 542
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 543
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 547
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityStarted(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 417
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 418
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 419
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 420
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 423
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchActivityStopped(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 507
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 508
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 509
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 510
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 513
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method dispatchOnProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 614
    monitor-enter p0

    .line 615
    :try_start_1
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 616
    monitor-exit p0

    return-void

    .line 618
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 619
    .local v0, "callbacks":[Ljava/lang/Object;
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1d

    .line 620
    if-eqz v0, :cond_1c

    .line 621
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, v0

    if-ge v1, v2, :cond_1c

    .line 622
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$OnProvideAssistDataListener;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$OnProvideAssistDataListener;->onProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 621
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 625
    .end local v1    # "i":I
    :cond_1c
    return-void

    .line 619
    .end local v0    # "callbacks":[Ljava/lang/Object;
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .registers 10

    .line 630
    invoke-super {p0}, Landroid/content/ContextWrapper;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 631
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v0, :cond_7

    .line 632
    return-object v0

    .line 634
    :cond_7
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    const-string v2, "Application"

    if-eqz v1, :cond_12

    .line 635
    const-string v1, "getAutofillClient(): null on super, trying to find activity thread"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_12
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 642
    .local v1, "activityThread":Landroid/app/ActivityThread;
    const/4 v3, 0x0

    if-nez v1, :cond_1a

    .line 643
    return-object v3

    .line 645
    :cond_1a
    iget-object v4, v1, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 646
    .local v4, "activityCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_21
    if-ge v5, v4, :cond_6d

    .line 647
    iget-object v6, v1, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 648
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 649
    .local v6, "record":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v6, :cond_2e

    .line 650
    goto :goto_6a

    .line 652
    :cond_2e
    iget-object v7, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 653
    .local v7, "activity":Landroid/app/Activity;
    if-nez v7, :cond_33

    .line 654
    goto :goto_6a

    .line 656
    :cond_33
    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v8

    if-eqz v8, :cond_6a

    .line 657
    sget-boolean v3, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_65

    .line 658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAutofillClient(): found activity for "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ": "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_65
    invoke-virtual {v7}, Landroid/app/Activity;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v2

    return-object v2

    .line 646
    .end local v6    # "record":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v7    # "activity":Landroid/app/Activity;
    :cond_6a
    :goto_6a
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 663
    .end local v5    # "i":I
    :cond_6d
    sget-boolean v5, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_97

    .line 664
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAutofillClient(): none of the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " activities on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " have focus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_97
    return-object v3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 292
    if-eqz p1, :cond_13

    iget v0, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-lez v0, :cond_13

    iget v0, p0, Landroid/app/Application;->mFlipfont:I

    iget v1, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-eq v0, v1, :cond_13

    .line 293
    invoke-static {}, Landroid/graphics/Typeface;->setFlipFonts()V

    .line 294
    iget v0, p1, Landroid/content/res/Configuration;->FlipFont:I

    iput v0, p0, Landroid/app/Application;->mFlipfont:I

    .line 298
    :cond_13
    iget-object v0, p0, Landroid/app/Application;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 299
    return-void
.end method

.method public onCreate()V
    .registers 1

    .line 275
    invoke-static {}, Landroid/graphics/Typeface;->setFlipFonts()V

    .line 277
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .line 303
    iget-object v0, p0, Landroid/app/Application;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->dispatchLowMemory()V

    .line 304
    return-void
.end method

.method public onTerminate()V
    .registers 1

    .line 287
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 3
    .param p1, "level"    # I

    .line 308
    iget-object v0, p0, Landroid/app/Application;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchTrimMemory(I)V

    .line 309
    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 320
    iget-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 321
    :try_start_3
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    monitor-exit v0

    .line 323
    return-void

    .line 322
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 312
    iget-object v0, p0, Landroid/app/Application;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->registerCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 313
    return-void
.end method

.method public registerOnProvideAssistDataListener(Landroid/app/Application$OnProvideAssistDataListener;)V
    .registers 3
    .param p1, "callback"    # Landroid/app/Application$OnProvideAssistDataListener;

    .line 332
    monitor-enter p0

    .line 333
    :try_start_1
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    .line 336
    :cond_c
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    monitor-exit p0

    .line 338
    return-void

    .line 337
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 326
    iget-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 327
    :try_start_3
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 328
    monitor-exit v0

    .line 329
    return-void

    .line 328
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 316
    iget-object v0, p0, Landroid/app/Application;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->unregisterCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 317
    return-void
.end method

.method public unregisterOnProvideAssistDataListener(Landroid/app/Application$OnProvideAssistDataListener;)V
    .registers 3
    .param p1, "callback"    # Landroid/app/Application$OnProvideAssistDataListener;

    .line 341
    monitor-enter p0

    .line 342
    :try_start_1
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 343
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 345
    :cond_8
    monitor-exit p0

    .line 346
    return-void

    .line 345
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method
