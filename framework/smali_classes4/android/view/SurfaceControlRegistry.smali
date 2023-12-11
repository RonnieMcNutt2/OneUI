.class public Landroid/view/SurfaceControlRegistry;
.super Ljava/lang/Object;
.source "SurfaceControlRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControlRegistry$DefaultReporter;,
        Landroid/view/SurfaceControlRegistry$Reporter;
    }
.end annotation


# static fields
.field private static final DUMP_LIMIT:I = 0x100

.field private static final MAX_LAYERS_REPORTING_THRESHOLD:I = 0x400

.field private static final RESET_REPORTING_THRESHOLD:I = 0x100

.field private static final TAG:Ljava/lang/String; = "SurfaceControlRegistry"

.field private static final sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

.field private static final sLock:Ljava/lang/Object;

.field private static volatile sProcessRegistry:Landroid/view/SurfaceControlRegistry;


# instance fields
.field private mHasReportedExceedingMaxThreshold:Z

.field private mMaxLayersReportingThreshold:I

.field private mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

.field private mResetReportingThreshold:I

.field private final mSurfaceControls:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/SurfaceControl;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    .line 106
    new-instance v0, Landroid/view/SurfaceControlRegistry$DefaultReporter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/SurfaceControlRegistry$DefaultReporter;-><init>(Landroid/view/SurfaceControlRegistry$DefaultReporter-IA;)V

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/16 v0, 0x400

    iput v0, p0, Landroid/view/SurfaceControlRegistry;->mMaxLayersReportingThreshold:I

    .line 119
    const/16 v0, 0x100

    iput v0, p0, Landroid/view/SurfaceControlRegistry;->mResetReportingThreshold:I

    .line 123
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    .line 126
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

    iput-object v1, p0, Landroid/view/SurfaceControlRegistry;->mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

    .line 129
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    .line 130
    return-void
.end method

.method public static createProcessInstance(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 166
    const-string v0, "android.permission.READ_FRAME_BUFFER"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 169
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_b
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    if-nez v1, :cond_16

    .line 171
    new-instance v1, Landroid/view/SurfaceControlRegistry;

    invoke-direct {v1}, Landroid/view/SurfaceControlRegistry;-><init>()V

    sput-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    .line 173
    :cond_16
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v1

    .line 167
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Expected caller to hold READ_FRAME_BUFFER"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static destroyProcessInstance()V
    .registers 2

    .line 181
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_3
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    if-nez v1, :cond_9

    .line 183
    monitor-exit v0

    return-void

    .line 185
    :cond_9
    const/4 v1, 0x0

    sput-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    .line 186
    monitor-exit v0

    .line 187
    return-void

    .line 186
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static dump(IZLjava/io/PrintWriter;)V
    .registers 6
    .param p0, "limit"    # I
    .param p1, "runGc"    # Z
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 263
    if-eqz p1, :cond_5

    .line 265
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->runGcAndFinalizers()V

    .line 267
    :cond_5
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_8
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    if-eqz v1, :cond_15

    .line 269
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

    sget-object v2, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    iget-object v2, v2, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v2, p0, p2}, Landroid/view/SurfaceControlRegistry$DefaultReporter;->onMaxLayersExceeded(Ljava/util/WeakHashMap;ILjava/io/PrintWriter;)V

    .line 271
    :cond_15
    monitor-exit v0

    .line 272
    return-void

    .line 271
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public static getProcessInstance()Landroid/view/SurfaceControlRegistry;
    .registers 2

    .line 197
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    monitor-exit v0

    return-object v1

    .line 199
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static runGcAndFinalizers()V
    .registers 5

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 251
    .local v0, "t":J
    invoke-static {}, Lcom/android/internal/util/GcUtils;->runGcAndFinalizersSync()V

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ran gc and finalizers ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SurfaceControlRegistry"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method


# virtual methods
.method add(Landroid/view/SurfaceControl;)V
    .registers 8
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 206
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-boolean v1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    if-nez v1, :cond_31

    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    .line 209
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    iget v2, p0, Landroid/view/SurfaceControlRegistry;->mMaxLayersReportingThreshold:I

    if-lt v1, v2, :cond_31

    .line 212
    new-instance v1, Ljava/io/PrintWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 213
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v2, p0, Landroid/view/SurfaceControlRegistry;->mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

    iget-object v4, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    const/16 v5, 0x100

    invoke-interface {v2, v4, v5, v1}, Landroid/view/SurfaceControlRegistry$Reporter;->onMaxLayersExceeded(Ljava/util/WeakHashMap;ILjava/io/PrintWriter;)V

    .line 214
    iput-boolean v3, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    .line 216
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_31
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public hashCode()I
    .registers 3

    .line 239
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 242
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method remove(Landroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 223
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-boolean v1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    .line 226
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    iget v2, p0, Landroid/view/SurfaceControlRegistry;->mResetReportingThreshold:I

    if-gt v1, v2, :cond_19

    .line 227
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    .line 229
    :cond_19
    monitor-exit v0

    .line 230
    return-void

    .line 229
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public setReportingThresholds(IILandroid/view/SurfaceControlRegistry$Reporter;)V
    .registers 8
    .param p1, "maxLayersReportingThreshold"    # I
    .param p2, "resetReportingThreshold"    # I
    .param p3, "reporter"    # Landroid/view/SurfaceControlRegistry$Reporter;

    .line 141
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    if-lez p1, :cond_1c

    if-ge p2, p1, :cond_1c

    .line 148
    if-eqz p3, :cond_14

    .line 151
    :try_start_9
    iput p1, p0, Landroid/view/SurfaceControlRegistry;->mMaxLayersReportingThreshold:I

    .line 152
    iput p2, p0, Landroid/view/SurfaceControlRegistry;->mResetReportingThreshold:I

    .line 153
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    .line 154
    iput-object p3, p0, Landroid/view/SurfaceControlRegistry;->mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

    .line 155
    monitor-exit v0

    .line 156
    return-void

    .line 149
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected non-null reporter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/SurfaceControlRegistry;
    .end local p1    # "maxLayersReportingThreshold":I
    .end local p2    # "resetReportingThreshold":I
    .end local p3    # "reporter":Landroid/view/SurfaceControlRegistry$Reporter;
    throw v1

    .line 144
    .restart local p0    # "this":Landroid/view/SurfaceControlRegistry;
    .restart local p1    # "maxLayersReportingThreshold":I
    .restart local p2    # "resetReportingThreshold":I
    .restart local p3    # "reporter":Landroid/view/SurfaceControlRegistry$Reporter;
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected maxLayersReportingThreshold ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to be > 0 and resetReportingThreshold ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to be < maxLayersReportingThreshold"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/SurfaceControlRegistry;
    .end local p1    # "maxLayersReportingThreshold":I
    .end local p2    # "resetReportingThreshold":I
    .end local p3    # "reporter":Landroid/view/SurfaceControlRegistry$Reporter;
    throw v1

    .line 155
    .restart local p0    # "this":Landroid/view/SurfaceControlRegistry;
    .restart local p1    # "maxLayersReportingThreshold":I
    .restart local p2    # "resetReportingThreshold":I
    .restart local p3    # "reporter":Landroid/view/SurfaceControlRegistry$Reporter;
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_9 .. :try_end_47} :catchall_45

    throw v1
.end method
