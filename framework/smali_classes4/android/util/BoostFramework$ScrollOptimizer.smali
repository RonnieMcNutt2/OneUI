.class public Landroid/util/BoostFramework$ScrollOptimizer;
.super Ljava/lang/Object;
.source "BoostFramework.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/BoostFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollOptimizer"
.end annotation


# static fields
.field public static final FLING_END:I = 0x0

.field public static final FLING_START:I = 0x1

.field private static final QXPERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/QXPerformance.jar"

.field private static final SCROLL_OPT_CLASS:Ljava/lang/String; = "com.qualcomm.qti.QXPerformance.ScrollOptimizer"

.field private static final SCROLL_OPT_PROP:Ljava/lang/String; = "ro.vendor.perf.scroll_opt"

.field private static sGetAdjustedAnimationClock:Ljava/lang/reflect/Method;

.field private static sGetFrameDelay:Ljava/lang/reflect/Method;

.field private static sQXIsLoaded:Z

.field private static sQXPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sScrollOptEnable:Z

.field private static sScrollOptProp:Z

.field private static sSetBLASTBufferQueue:Ljava/lang/reflect/Method;

.field private static sSetFlingFlag:Ljava/lang/reflect/Method;

.field private static sSetFrameInterval:Ljava/lang/reflect/Method;

.field private static sSetMotionType:Ljava/lang/reflect/Method;

.field private static sSetUITaskStatus:Ljava/lang/reflect/Method;

.field private static sSetVsyncTime:Ljava/lang/reflect/Method;

.field private static sShouldUseVsync:Ljava/lang/reflect/Method;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsScrollOptProp()Z
    .registers 1

    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptProp:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetsSetFrameInterval()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFrameInterval:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsScrollOptEnable(Z)V
    .registers 1

    sput-boolean p0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sminitQXPerfFuncs()V
    .registers 0

    invoke-static {}, Landroid/util/BoostFramework$ScrollOptimizer;->initQXPerfFuncs()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 667
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptProp:Z

    .line 668
    sput-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    .line 669
    sput-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sQXIsLoaded:Z

    .line 670
    const/4 v0, 0x0

    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    .line 671
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFrameInterval:Ljava/lang/reflect/Method;

    .line 672
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetBLASTBufferQueue:Ljava/lang/reflect/Method;

    .line 673
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetMotionType:Ljava/lang/reflect/Method;

    .line 674
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetVsyncTime:Ljava/lang/reflect/Method;

    .line 675
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetUITaskStatus:Ljava/lang/reflect/Method;

    .line 676
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFlingFlag:Ljava/lang/reflect/Method;

    .line 677
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sShouldUseVsync:Ljava/lang/reflect/Method;

    .line 678
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sGetFrameDelay:Ljava/lang/reflect/Method;

    .line 679
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sGetAdjustedAnimationClock:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdjustedAnimationClock(J)J
    .registers 8
    .param p0, "frameTimeNanos"    # J

    .line 845
    move-wide v0, p0

    .line 846
    .local v0, "newFrameTimeNanos":J
    sget-boolean v2, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v2, :cond_25

    sget-object v2, Landroid/util/BoostFramework$ScrollOptimizer;->sGetAdjustedAnimationClock:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_25

    .line 848
    const/4 v3, 0x1

    :try_start_a
    new-array v3, v3, [Ljava/lang/Object;

    .line 849
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 848
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 850
    .local v2, "retVal":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_21

    move-wide v0, v3

    .line 853
    .end local v2    # "retVal":Ljava/lang/Object;
    goto :goto_25

    .line 851
    :catch_21
    move-exception v2

    .line 852
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 855
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_25
    :goto_25
    return-wide v0
.end method

.method public static getFrameDelay(JJ)J
    .registers 10
    .param p0, "defaultDelay"    # J
    .param p2, "lastFrameTimeNanos"    # J

    .line 831
    move-wide v0, p0

    .line 832
    .local v0, "frameDelay":J
    sget-boolean v2, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v2, :cond_25

    sget-object v2, Landroid/util/BoostFramework$ScrollOptimizer;->sGetFrameDelay:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_25

    .line 834
    const/4 v3, 0x1

    :try_start_a
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 835
    .local v2, "retVal":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_21

    move-wide v0, v3

    .line 838
    .end local v2    # "retVal":Ljava/lang/Object;
    goto :goto_25

    .line 836
    :catch_21
    move-exception v2

    .line 837
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 840
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_25
    :goto_25
    return-wide v0
.end method

.method private static initQXPerfFuncs()V
    .registers 7

    .line 682
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sQXIsLoaded:Z

    if-eqz v0, :cond_5

    return-void

    .line 685
    :cond_5
    :try_start_5
    const-string/jumbo v0, "ro.vendor.perf.scroll_opt"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptProp:Z

    .line 686
    const/4 v2, 0x1

    if-nez v0, :cond_17

    .line 687
    sput-boolean v1, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    .line 688
    sput-boolean v2, Landroid/util/BoostFramework$ScrollOptimizer;->sQXIsLoaded:Z

    .line 689
    return-void

    .line 692
    :cond_17
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v3, "/system/framework/QXPerformance.jar"

    .line 693
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 694
    .local v0, "qXPerfClassLoader":Ldalvik/system/PathClassLoader;
    const-string v3, "com.qualcomm.qti.QXPerformance.ScrollOptimizer"

    invoke-virtual {v0, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    .line 695
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    .line 696
    .local v3, "argClasses":[Ljava/lang/Class;
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "setFrameInterval"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFrameInterval:Ljava/lang/reflect/Method;

    .line 699
    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/BLASTBufferQueue;

    aput-object v5, v4, v1

    move-object v3, v4

    .line 700
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "setBLASTBufferQueue"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sSetBLASTBufferQueue:Ljava/lang/reflect/Method;

    .line 702
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    move-object v3, v4

    .line 703
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "setMotionType"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sSetMotionType:Ljava/lang/reflect/Method;

    .line 705
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    move-object v3, v4

    .line 706
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "setVsyncTime"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sSetVsyncTime:Ljava/lang/reflect/Method;

    .line 708
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    move-object v3, v4

    .line 709
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "setUITaskStatus"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sSetUITaskStatus:Ljava/lang/reflect/Method;

    .line 711
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    move-object v3, v4

    .line 712
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "setFlingFlag"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFlingFlag:Ljava/lang/reflect/Method;

    .line 714
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "shouldUseVsync"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sShouldUseVsync:Ljava/lang/reflect/Method;

    .line 716
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    move-object v3, v4

    .line 717
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string v5, "getFrameDelay"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sGetFrameDelay:Ljava/lang/reflect/Method;

    .line 719
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    move-object v1, v4

    .line 720
    .end local v3    # "argClasses":[Ljava/lang/Class;
    .local v1, "argClasses":[Ljava/lang/Class;
    sget-object v3, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string v4, "getAdjustedAnimationClock"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/util/BoostFramework$ScrollOptimizer;->sGetAdjustedAnimationClock:Ljava/lang/reflect/Method;

    .line 723
    sput-boolean v2, Landroid/util/BoostFramework$ScrollOptimizer;->sQXIsLoaded:Z
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c6} :catch_c7

    .line 727
    .end local v0    # "qXPerfClassLoader":Ldalvik/system/PathClassLoader;
    .end local v1    # "argClasses":[Ljava/lang/Class;
    goto :goto_d2

    .line 724
    :catch_c7
    move-exception v0

    .line 725
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BoostFramework"

    const-string v2, "initQXPerfFuncs failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 728
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d2
    return-void
.end method

.method public static setBLASTBufferQueue(Landroid/graphics/BLASTBufferQueue;)V
    .registers 4
    .param p0, "blastBufferQueue"    # Landroid/graphics/BLASTBufferQueue;

    .line 762
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v0, :cond_15

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetBLASTBufferQueue:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_15

    .line 764
    :try_start_8
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_11

    .line 767
    goto :goto_15

    .line 765
    :catch_11
    move-exception v0

    .line 766
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 769
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_15
    return-void
.end method

.method public static setFlingFlag(I)V
    .registers 5
    .param p0, "flag"    # I

    .line 806
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v0, :cond_1b

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFlingFlag:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    .line 808
    const/4 v1, 0x1

    :try_start_9
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_17

    .line 811
    goto :goto_1b

    .line 809
    :catch_17
    move-exception v0

    .line 810
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 813
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public static setFrameInterval(J)V
    .registers 6
    .param p0, "frameIntervalNanos"    # J

    .line 732
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sQXIsLoaded:Z

    if-eqz v0, :cond_20

    .line 733
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v0, :cond_1f

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFrameInterval:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    .line 735
    const/4 v1, 0x1

    :try_start_d
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1a} :catch_1b

    .line 738
    goto :goto_1f

    .line 736
    :catch_1b
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 740
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1f
    :goto_1f
    return-void

    .line 742
    :cond_20
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/util/BoostFramework$ScrollOptimizer$1;

    invoke-direct {v1, p0, p1}, Landroid/util/BoostFramework$ScrollOptimizer$1;-><init>(J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 757
    .local v0, "initThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 758
    return-void
.end method

.method public static setMotionType(I)V
    .registers 5
    .param p0, "eventType"    # I

    .line 773
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v0, :cond_1b

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetMotionType:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    .line 775
    const/4 v1, 0x1

    :try_start_9
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_17

    .line 778
    goto :goto_1b

    .line 776
    :catch_17
    move-exception v0

    .line 777
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 780
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public static setUITaskStatus(Z)V
    .registers 5
    .param p0, "running"    # Z

    .line 795
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v0, :cond_1b

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetUITaskStatus:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    .line 797
    const/4 v1, 0x1

    :try_start_9
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_17

    .line 800
    goto :goto_1b

    .line 798
    :catch_17
    move-exception v0

    .line 799
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 802
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public static setVsyncTime(J)V
    .registers 6
    .param p0, "vsyncTimeNanos"    # J

    .line 784
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v0, :cond_1b

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetVsyncTime:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    .line 786
    const/4 v1, 0x1

    :try_start_9
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_17

    .line 789
    goto :goto_1b

    .line 787
    :catch_17
    move-exception v0

    .line 788
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 791
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public static shouldUseVsync(Z)Z
    .registers 5
    .param p0, "defaultVsyncFlag"    # Z

    .line 817
    move v0, p0

    .line 818
    .local v0, "useVsync":Z
    sget-boolean v1, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v1, :cond_1e

    sget-object v1, Landroid/util/BoostFramework$ScrollOptimizer;->sShouldUseVsync:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1e

    .line 820
    const/4 v2, 0x0

    :try_start_a
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 821
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_1a

    move v0, v2

    .line 824
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_1e

    .line 822
    :catch_1a
    move-exception v1

    .line 823
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 826
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1e
    :goto_1e
    return v0
.end method
