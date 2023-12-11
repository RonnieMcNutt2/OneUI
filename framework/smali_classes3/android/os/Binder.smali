.class public Landroid/os/Binder;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Landroid/os/IBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Binder$NoImagePreloadHolder;,
        Landroid/os/Binder$ProxyTransactListener;,
        Landroid/os/Binder$PropagateWorkSourceTransactListener;
    }
.end annotation


# static fields
.field public static final CHECK_PARCEL_SIZE:Z = false

.field private static final FIND_POTENTIAL_LEAKS:Z = false

.field public static LOG_RUNTIME_EXCEPTION:Z = false

.field private static final NATIVE_ALLOCATION_SIZE:I = 0x1f4

.field static final TAG:Ljava/lang/String; = "Binder"

.field private static final TRANSACTION_TRACE_NAME_ID_LIMIT:I = 0x400

.field public static final UNSET_WORKSOURCE:I = -0x1

.field static volatile isSystemServer:Z

.field public static isSystemServerBinderTrackerEnabled:Z

.field private static volatile sDumpDisabled:Ljava/lang/String;

.field private static volatile sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

.field private static sObserver:Lcom/android/internal/os/BinderInternal$Observer;

.field private static volatile sStackTrackingEnabled:Z

.field private static volatile sTransactionTracker:Landroid/os/TransactionTracker;

.field static volatile sWarnOnBlocking:Z

.field static sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;


# instance fields
.field private mDescriptor:Ljava/lang/String;

.field private final mObject:J

.field private mOwner:Landroid/os/IInterface;

.field private volatile mSimpleDescriptor:Ljava/lang/String;

.field private volatile mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smgetNativeFinalizer()J
    .registers 2

    invoke-static {}, Landroid/os/Binder;->getNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 99
    nop

    .line 100
    const-string/jumbo v0, "persist.systemserver.sa_bindertracker"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/os/Binder;->isSystemServerBinderTrackerEnabled:Z

    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Binder;->LOG_RUNTIME_EXCEPTION:Z

    .line 119
    const/4 v1, 0x0

    sput-object v1, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    .line 124
    sput-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    .line 129
    sput-object v1, Landroid/os/Binder;->sObserver:Lcom/android/internal/os/BinderInternal$Observer;

    .line 148
    sput-object v1, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    .line 155
    sput-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    .line 206
    sput-boolean v0, Landroid/os/Binder;->sWarnOnBlocking:Z

    .line 210
    sput-boolean v0, Landroid/os/Binder;->isSystemServer:Z

    .line 287
    new-instance v0, Landroid/os/Binder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/Binder$$ExternalSyntheticLambda0;-><init>()V

    .line 288
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    .line 1267
    new-instance v0, Landroid/os/Binder$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/Binder$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 678
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 322
    iput-object v0, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    .line 694
    invoke-static {}, Landroid/os/Binder;->getNativeBBinderHolder()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Binder;->mObject:J

    .line 695
    sget-object v2, Landroid/os/Binder$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 705
    iput-object p1, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    .line 706
    return-void
.end method

.method public static allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 4
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 251
    :try_start_0
    instance-of v0, p0, Landroid/os/BinderProxy;

    if-eqz v0, :cond_b

    .line 252
    move-object v0, p0

    check-cast v0, Landroid/os/BinderProxy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    goto :goto_35

    .line 253
    :cond_b
    if-eqz p0, :cond_35

    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 254
    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_35

    .line 255
    const-string v0, "Binder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to allow blocking on interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_35} :catch_36

    .line 258
    :cond_35
    :goto_35
    goto :goto_37

    .line 257
    :catch_36
    move-exception v0

    .line 259
    :goto_37
    return-object p0
.end method

.method public static allowBlockingForCurrentThread()V
    .registers 2

    .line 298
    sget-object v0, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method public static final native blockUntilThreadAvailable()V
.end method

.method static checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V
    .registers 4
    .param p0, "obj"    # Landroid/os/IBinder;
    .param p1, "code"    # I
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "msg"    # Ljava/lang/String;

    .line 1260
    return-void
.end method

.method public static final native clearCallingIdentity()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final native clearCallingWorkSource()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static copyAllowBlocking(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 4
    .param p0, "fromBinder"    # Landroid/os/IBinder;
    .param p1, "toBinder"    # Landroid/os/IBinder;

    .line 282
    instance-of v0, p0, Landroid/os/BinderProxy;

    if-eqz v0, :cond_12

    instance-of v0, p1, Landroid/os/BinderProxy;

    if-eqz v0, :cond_12

    .line 283
    move-object v0, p1

    check-cast v0, Landroid/os/BinderProxy;

    move-object v1, p0

    check-cast v1, Landroid/os/BinderProxy;

    iget-boolean v1, v1, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    iput-boolean v1, v0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 285
    :cond_12
    return-void
.end method

.method public static defaultBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 3
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 269
    instance-of v0, p0, Landroid/os/BinderProxy;

    if-eqz v0, :cond_b

    .line 270
    move-object v0, p0

    check-cast v0, Landroid/os/BinderProxy;

    sget-boolean v1, Landroid/os/Binder;->sWarnOnBlocking:Z

    iput-boolean v1, v0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 272
    :cond_b
    return-object p0
.end method

.method public static defaultBlockingForCurrentThread()V
    .registers 2

    .line 309
    sget-object v0, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    sget-boolean v1, Landroid/os/Binder;->sWarnOnBlocking:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 310
    return-void
.end method

.method public static disableStackTracking()V
    .registers 1

    .line 173
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    .line 174
    return-void
.end method

.method public static enableStackTracking()V
    .registers 1

    .line 164
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    .line 165
    return-void
.end method

.method private execTransact(IJJI)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "dataObj"    # J
    .param p4, "replyObj"    # J
    .param p6, "flags"    # I

    .line 1295
    invoke-static/range {p2 .. p3}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    move-result-object v7

    .line 1296
    .local v7, "data":Landroid/os/Parcel;
    invoke-static/range {p4 .. p5}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    move-result-object v8

    .line 1306
    .local v8, "reply":Landroid/os/Parcel;
    invoke-virtual {v7}, Landroid/os/Parcel;->isForRpc()Z

    move-result v0

    const/4 v9, -0x1

    if-eqz v0, :cond_11

    move v0, v9

    goto :goto_15

    :cond_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    :goto_15
    move v10, v0

    .line 1307
    .local v10, "callingUid":I
    if-ne v10, v9, :cond_1b

    .line 1308
    const-wide/16 v0, -0x1

    goto :goto_1f

    :cond_1b
    invoke-static {v10}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    move-result-wide v0

    :goto_1f
    move-wide v11, v0

    .line 1311
    .local v11, "origWorkSource":J
    move-object v1, p0

    move v2, p1

    move-object v3, v7

    move-object v4, v8

    move/from16 v5, p6

    move v6, v10

    :try_start_27
    invoke-direct/range {v1 .. v6}, Landroid/os/Binder;->execTransactInternal(ILandroid/os/Parcel;Landroid/os/Parcel;II)Z

    move-result v0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_37

    .line 1313
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 1314
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 1316
    if-eq v10, v9, :cond_36

    .line 1317
    invoke-static {v11, v12}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 1311
    :cond_36
    return v0

    .line 1313
    :catchall_37
    move-exception v0

    move-object v1, v0

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 1314
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 1316
    if-eq v10, v9, :cond_44

    .line 1317
    invoke-static {v11, v12}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 1319
    :cond_44
    throw v1
.end method

.method private execTransactInternal(ILandroid/os/Parcel;Landroid/os/Parcel;II)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .param p5, "callingUid"    # I

    .line 1325
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p5

    const-string v5, "Unreasonably large binder reply buffer"

    sget-object v6, Landroid/os/Binder;->sObserver:Lcom/android/internal/os/BinderInternal$Observer;

    .line 1327
    .local v6, "observer":Lcom/android/internal/os/BinderInternal$Observer;
    const/4 v0, -0x1

    if-eqz v6, :cond_14

    invoke-interface {v6, v1, v2, v0}, Lcom/android/internal/os/BinderInternal$Observer;->callStarted(Landroid/os/Binder;II)Lcom/android/internal/os/BinderInternal$CallSession;

    move-result-object v7

    goto :goto_15

    :cond_14
    const/4 v7, 0x0

    .line 1335
    .local v7, "callSession":Lcom/android/internal/os/BinderInternal$CallSession;
    :goto_15
    const-wide/32 v8, 0x1000000

    invoke-static {v8, v9}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v10

    .line 1336
    .local v10, "tagEnabled":Z
    invoke-virtual/range {p0 .. p0}, Landroid/os/Binder;->getMaxTransactionId()I

    move-result v11

    const/4 v12, 0x1

    if-lez v11, :cond_25

    move v11, v12

    goto :goto_26

    :cond_25
    const/4 v11, 0x0

    .line 1339
    .local v11, "hasFullyQualifiedName":Z
    :goto_26
    if-eqz v10, :cond_2f

    if-eqz v11, :cond_2f

    .line 1341
    invoke-virtual/range {p0 .. p1}, Landroid/os/Binder;->getTransactionTraceName(I)Ljava/lang/String;

    move-result-object v14

    .local v14, "transactionTraceName":Ljava/lang/String;
    goto :goto_3d

    .line 1342
    .end local v14    # "transactionTraceName":Ljava/lang/String;
    :cond_2f
    if-eqz v10, :cond_3c

    invoke-static {}, Landroid/os/Binder;->isStackTrackingEnabled()Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 1351
    invoke-virtual/range {p0 .. p1}, Landroid/os/Binder;->getTransactionTraceName(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "transactionTraceName":Ljava/lang/String;
    goto :goto_3d

    .line 1353
    .end local v14    # "transactionTraceName":Ljava/lang/String;
    :cond_3c
    const/4 v14, 0x0

    .line 1356
    .restart local v14    # "transactionTraceName":Ljava/lang/String;
    :goto_3d
    if-eqz v10, :cond_42

    if-eqz v14, :cond_42

    goto :goto_43

    :cond_42
    const/4 v12, 0x0

    .line 1360
    .local v12, "tracingEnabled":Z
    :goto_43
    :try_start_43
    sget-object v15, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    .line 1361
    .local v15, "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    if-eqz v15, :cond_50

    if-eq v4, v0, :cond_50

    .line 1363
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v15, v4, v13, v2}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->onTransaction(ILjava/lang/Class;I)V

    .line 1365
    :cond_50
    if-eqz v12, :cond_55

    .line 1366
    invoke-static {v8, v9, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1372
    :cond_55
    and-int/lit8 v13, p4, 0x2

    if-eqz v13, :cond_6d

    if-eq v4, v0, :cond_6d

    .line 1373
    invoke-static/range {p5 .. p5}, Landroid/app/AppOpsManager;->startNotedAppOpsCollection(I)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_5e} :catch_93
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_5e} :catch_93
    .catchall {:try_start_43 .. :try_end_5e} :catchall_91

    .line 1375
    :try_start_5e
    invoke-virtual/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_66

    .line 1377
    .local v0, "res":Z
    :try_start_62
    invoke-static {}, Landroid/app/AppOpsManager;->finishNotedAppOpsCollection()V

    .line 1378
    goto :goto_71

    .line 1377
    .end local v0    # "res":Z
    :catchall_66
    move-exception v0

    move-object v13, v0

    invoke-static {}, Landroid/app/AppOpsManager;->finishNotedAppOpsCollection()V

    .line 1378
    nop

    .end local v6    # "observer":Lcom/android/internal/os/BinderInternal$Observer;
    .end local v7    # "callSession":Lcom/android/internal/os/BinderInternal$CallSession;
    .end local v10    # "tagEnabled":Z
    .end local v11    # "hasFullyQualifiedName":Z
    .end local v12    # "tracingEnabled":Z
    .end local v14    # "transactionTraceName":Ljava/lang/String;
    .end local p0    # "this":Landroid/os/Binder;
    .end local p1    # "code":I
    .end local p2    # "data":Landroid/os/Parcel;
    .end local p3    # "reply":Landroid/os/Parcel;
    .end local p4    # "flags":I
    .end local p5    # "callingUid":I
    throw v13

    .line 1380
    .restart local v6    # "observer":Lcom/android/internal/os/BinderInternal$Observer;
    .restart local v7    # "callSession":Lcom/android/internal/os/BinderInternal$CallSession;
    .restart local v10    # "tagEnabled":Z
    .restart local v11    # "hasFullyQualifiedName":Z
    .restart local v12    # "tracingEnabled":Z
    .restart local v14    # "transactionTraceName":Ljava/lang/String;
    .restart local p0    # "this":Landroid/os/Binder;
    .restart local p1    # "code":I
    .restart local p2    # "data":Landroid/os/Parcel;
    .restart local p3    # "reply":Landroid/os/Parcel;
    .restart local p4    # "flags":I
    .restart local p5    # "callingUid":I
    :cond_6d
    invoke-virtual/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_71} :catch_93
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_71} :catch_93
    .catchall {:try_start_62 .. :try_end_71} :catchall_91

    .line 1403
    .end local v15    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .restart local v0    # "res":Z
    :goto_71
    if-eqz v12, :cond_76

    .line 1404
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1406
    :cond_76
    if-eqz v6, :cond_8d

    .line 1409
    :goto_78
    sget-object v8, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    .line 1410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readCallingWorkSourceUid()I

    move-result v9

    .line 1409
    invoke-interface {v8, v9}, Lcom/android/internal/os/BinderInternal$WorkSourceProvider;->resolveWorkSourceUid(I)I

    move-result v8

    .line 1411
    .local v8, "workSourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->dataSize()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->dataSize()I

    move-result v13

    invoke-interface {v6, v7, v9, v13, v8}, Lcom/android/internal/os/BinderInternal$Observer;->callEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V

    .line 1414
    .end local v8    # "workSourceUid":I
    :cond_8d
    invoke-static {v1, v2, v3, v5}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    .line 1415
    goto :goto_cc

    .line 1403
    .end local v0    # "res":Z
    :catchall_91
    move-exception v0

    goto :goto_d0

    .line 1382
    :catch_93
    move-exception v0

    .line 1383
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_99

    .line 1384
    :try_start_96
    invoke-interface {v6, v7, v0}, Lcom/android/internal/os/BinderInternal$Observer;->callThrewException(Lcom/android/internal/os/BinderInternal$CallSession;Ljava/lang/Exception;)V

    .line 1386
    :cond_99
    sget-boolean v13, Landroid/os/Binder;->LOG_RUNTIME_EXCEPTION:Z
    :try_end_9b
    .catchall {:try_start_96 .. :try_end_9b} :catchall_91

    const-string v15, "Caught a RuntimeException from the binder stub implementation."

    const-string v8, "Binder"

    if-eqz v13, :cond_a4

    .line 1387
    :try_start_a1
    invoke-static {v8, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1389
    :cond_a4
    and-int/lit8 v9, p4, 0x1

    if-eqz v9, :cond_b6

    .line 1390
    instance-of v9, v0, Landroid/os/RemoteException;

    if-eqz v9, :cond_b2

    .line 1391
    const-string v9, "Binder call failed."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c0

    .line 1393
    :cond_b2
    invoke-static {v8, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c0

    .line 1397
    :cond_b6
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/os/Parcel;->setDataSize(I)V

    .line 1398
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1399
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V
    :try_end_c0
    .catchall {:try_start_a1 .. :try_end_c0} :catchall_91

    .line 1401
    :goto_c0
    const/4 v0, 0x1

    .line 1403
    .local v0, "res":Z
    if-eqz v12, :cond_c9

    .line 1404
    const-wide/32 v8, 0x1000000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1406
    :cond_c9
    if-eqz v6, :cond_8d

    .line 1409
    goto :goto_78

    .line 1422
    :goto_cc
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 1423
    return v0

    .line 1403
    .end local v0    # "res":Z
    :goto_d0
    if-eqz v12, :cond_d8

    .line 1404
    const-wide/32 v8, 0x1000000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1406
    :cond_d8
    if-eqz v6, :cond_ef

    .line 1409
    sget-object v8, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    .line 1410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readCallingWorkSourceUid()I

    move-result v9

    .line 1409
    invoke-interface {v8, v9}, Lcom/android/internal/os/BinderInternal$WorkSourceProvider;->resolveWorkSourceUid(I)I

    move-result v8

    .line 1411
    .restart local v8    # "workSourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->dataSize()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->dataSize()I

    move-result v13

    invoke-interface {v6, v7, v9, v13, v8}, Lcom/android/internal/os/BinderInternal$Observer;->callEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V

    .line 1414
    .end local v8    # "workSourceUid":I
    :cond_ef
    invoke-static {v1, v2, v3, v5}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    .line 1415
    throw v0
.end method

.method public static final native flushPendingCommands()V
.end method

.method public static final native getCallingPid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final native getCallingUid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final getCallingUidOrThrow()I
    .registers 2

    .line 374
    invoke-static {}, Landroid/os/Binder;->isDirectlyHandlingTransaction()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Landroid/os/Binder;->hasExplicitIdentity()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 375
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Thread is not in a binder transaction, and the calling identity has not been explicitly set with clearCallingIdentity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_15
    :goto_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public static final getCallingUidOrWtf(Ljava/lang/String;)I
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .line 394
    invoke-static {}, Landroid/os/Binder;->isDirectlyHandlingTransaction()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Landroid/os/Binder;->hasExplicitIdentity()Z

    move-result v0

    if-nez v0, :cond_24

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Thread is not in a binder transaction, and the calling identity has not been explicitly set with clearCallingIdentity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Binder"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public static final getCallingUserHandle()Landroid/os/UserHandle;
    .registers 1

    .line 414
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public static final native getCallingWorkSourceUid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native getNativeBBinderHolder()J
.end method

.method private static native getNativeFinalizer()J
.end method

.method private getSimpleDescriptor()Ljava/lang/String;
    .registers 4

    .line 1000
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    .line 1001
    .local v0, "descriptor":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 1003
    const-string v1, "Binder"

    return-object v1

    .line 1006
    :cond_7
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1007
    .local v1, "dot":I
    if-lez v1, :cond_16

    .line 1009
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1011
    :cond_16
    return-object v0
.end method

.method public static final native getThreadStrictModePolicy()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static declared-synchronized getTransactionTracker()Landroid/os/TransactionTracker;
    .registers 2

    const-class v0, Landroid/os/Binder;

    monitor-enter v0

    .line 191
    :try_start_3
    sget-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    if-nez v1, :cond_e

    .line 192
    new-instance v1, Landroid/os/TransactionTracker;

    invoke-direct {v1}, Landroid/os/TransactionTracker;-><init>()V

    sput-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    .line 193
    :cond_e
    sget-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 190
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native hasExplicitIdentity()Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final native isDirectlyHandlingTransaction()Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final isProxy(Landroid/os/IInterface;)Z
    .registers 2
    .param p0, "iface"    # Landroid/os/IInterface;

    .line 660
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isStackTrackingEnabled()Z
    .registers 1

    .line 182
    sget-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    return v0
.end method

.method public static final joinThreadPool()V
    .registers 0

    .line 651
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->joinThreadPool()V

    .line 652
    return-void
.end method

.method static synthetic lambda$static$0()Ljava/lang/Boolean;
    .registers 1

    .line 288
    sget-boolean v0, Landroid/os/Binder;->sWarnOnBlocking:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$1(I)I
    .registers 2
    .param p0, "x"    # I

    .line 1268
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public static final native restoreCallingIdentity(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final native restoreCallingWorkSource(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final native setCallingWorkSourceUid(I)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static setDumpDisabled(Ljava/lang/String;)V
    .registers 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 768
    sput-object p0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    .line 769
    return-void
.end method

.method public static declared-synchronized setHeavyHitterWatcherConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V
    .registers 9
    .param p0, "enabled"    # Z
    .param p1, "batchSize"    # I
    .param p2, "threshold"    # F
    .param p3, "listener"    # Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    const-class v0, Landroid/os/Binder;

    monitor-enter v0

    .line 1434
    :try_start_3
    const-string v1, "Binder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting heavy hitter watcher config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    sget-object v1, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    .line 1437
    .local v1, "watcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    if-eqz p0, :cond_4d

    .line 1438
    if-eqz p3, :cond_47

    .line 1441
    const/4 v2, 0x0

    .line 1442
    .local v2, "newWatcher":Z
    if-nez v1, :cond_3e

    .line 1443
    invoke-static {}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->getInstance()Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    move-result-object v3

    move-object v1, v3

    .line 1444
    const/4 v2, 0x1

    .line 1446
    :cond_3e
    const/4 v3, 0x1

    invoke-virtual {v1, v3, p1, p2, p3}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->setConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V

    .line 1447
    if-eqz v2, :cond_46

    .line 1448
    sput-object v1, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    .line 1450
    .end local v2    # "newWatcher":Z
    :cond_46
    goto :goto_55

    .line 1439
    :cond_47
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1450
    :cond_4d
    if-eqz v1, :cond_46

    .line 1451
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->setConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_57

    .line 1453
    :goto_55
    monitor-exit v0

    return-void

    .line 1433
    .end local v1    # "watcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .end local p0    # "enabled":Z
    .end local p1    # "batchSize":I
    .end local p2    # "threshold":F
    .end local p3    # "listener":Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;
    :catchall_57
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V
    .registers 1
    .param p0, "observer"    # Lcom/android/internal/os/BinderInternal$Observer;

    .line 202
    sput-object p0, Landroid/os/Binder;->sObserver:Lcom/android/internal/os/BinderInternal$Observer;

    .line 203
    return-void
.end method

.method public static setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V
    .registers 1
    .param p0, "listener"    # Landroid/os/Binder$ProxyTransactListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 858
    invoke-static {p0}, Landroid/os/BinderProxy;->setTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    .line 859
    return-void
.end method

.method public static setSystemServerProcess()V
    .registers 1

    .line 233
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/Binder;->isSystemServer:Z

    .line 234
    return-void
.end method

.method public static final native setThreadStrictModePolicy(I)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static setWarnOnBlocking(Z)V
    .registers 1
    .param p0, "warnOnBlocking"    # Z

    .line 223
    sput-boolean p0, Landroid/os/Binder;->sWarnOnBlocking:Z

    .line 224
    return-void
.end method

.method public static setWorkSourceProvider(Lcom/android/internal/os/BinderInternal$WorkSourceProvider;)V
    .registers 3
    .param p0, "workSourceProvider"    # Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    .line 1284
    if-eqz p0, :cond_5

    .line 1287
    sput-object p0, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    .line 1288
    return-void

    .line 1285
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "workSourceProvider cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 483
    .local p0, "action":Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;, "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<TT;>;"
    const/4 v0, 0x0

    .line 484
    .local v0, "throwableToPropagate":Ljava/lang/Throwable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 486
    .local v1, "callingIdentity":J
    :try_start_5
    invoke-interface {p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;->getOrThrow()Ljava/lang/Object;

    move-result-object v3
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_14

    .line 491
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 492
    if-nez v0, :cond_f

    .line 486
    return-object v3

    .line 493
    :cond_f
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 487
    :catchall_14
    move-exception v3

    .line 488
    .local v3, "throwable":Ljava/lang/Throwable;
    move-object v0, v3

    .line 489
    nop

    .line 491
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 492
    nop

    .line 493
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public static final withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .registers 5
    .param p0, "action"    # Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "throwableToPropagate":Ljava/lang/Throwable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 462
    .local v1, "callingIdentity":J
    :try_start_5
    invoke-interface {p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;->runOrThrow()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_13

    .line 466
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 467
    if-nez v0, :cond_e

    .line 471
    return-void

    .line 468
    :cond_e
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 463
    :catchall_13
    move-exception v3

    .line 464
    .local v3, "throwable":Ljava/lang/Throwable;
    move-object v0, v3

    .line 466
    .end local v3    # "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 467
    nop

    .line 468
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Landroid/os/IInterface;
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 715
    iput-object p1, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    .line 716
    iput-object p2, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    .line 717
    return-void
.end method

.method doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1037
    sget-object v0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    .line 1038
    .local v0, "disabled":Ljava/lang/String;
    if-nez v0, :cond_31

    .line 1040
    :try_start_4
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_7} :catch_15
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 1052
    :goto_7
    goto :goto_36

    .line 1044
    :catchall_8
    move-exception v1

    .line 1049
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1050
    const-string v2, "Exception occurred while dumping:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_7

    .line 1041
    :catch_15
    move-exception v1

    .line 1042
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    throw v1

    .line 1054
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_31
    sget-object v1, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1056
    :goto_36
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1087
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1027
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1028
    .local v0, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1030
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_a
    invoke-virtual {p0, p1, v1, p2}, Landroid/os/Binder;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_12

    .line 1032
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1033
    nop

    .line 1034
    return-void

    .line 1032
    :catchall_12
    move-exception v2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1033
    throw v2
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1063
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1064
    .local v0, "fout":Ljava/io/FileOutputStream;
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v5, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1065
    .local v5, "pw":Ljava/io/PrintWriter;
    new-instance v7, Landroid/os/Binder$1;

    const-string v3, "Binder.dumpAsync"

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/os/Binder$1;-><init>(Landroid/os/Binder;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1074
    .local v1, "thr":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1075
    return-void
.end method

.method public final native forceDowngradeToSystemStability()V
.end method

.method public final native getExtension()Landroid/os/IBinder;
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 723
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 1019
    const/4 v0, 0x0

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 958
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTransactionTraceName(I)Ljava/lang/String;
    .registers 8
    .param p1, "transactionCode"    # I

    .line 966
    iget-object v0, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    if-nez v0, :cond_1d

    .line 967
    invoke-virtual {p0}, Landroid/os/Binder;->getMaxTransactionId()I

    move-result v0

    const/16 v1, 0x400

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 968
    .local v0, "highestId":I
    invoke-direct {p0}, Landroid/os/Binder;->getSimpleDescriptor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    .line 969
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v1, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 972
    .end local v0    # "highestId":I
    :cond_1d
    add-int/lit8 v0, p1, -0x1

    .line 973
    .local v0, "index":I
    if-ltz v0, :cond_72

    iget-object v1, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-lt v0, v1, :cond_2a

    goto :goto_72

    .line 977
    :cond_2a
    iget-object v1, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAcquire(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 978
    .local v1, "transactionTraceName":Ljava/lang/String;
    if-nez v1, :cond_71

    .line 979
    invoke-virtual {p0, p1}, Landroid/os/Binder;->getTransactionName(I)Ljava/lang/String;

    move-result-object v2

    .line 980
    .local v2, "transactionName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 984
    .local v3, "buf":Ljava/lang/StringBuffer;
    const-string v4, "AIDL::java::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 985
    if-eqz v2, :cond_54

    .line 986
    iget-object v4, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_63

    .line 988
    :cond_54
    iget-object v4, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "::#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 990
    :goto_63
    const-string v4, "::server"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 992
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 993
    iget-object v4, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->setRelease(ILjava/lang/Object;)V

    .line 996
    .end local v2    # "transactionName":Ljava/lang/String;
    .end local v3    # "buf":Ljava/lang/StringBuffer;
    :cond_71
    return-object v1

    .line 974
    .end local v1    # "transactionTraceName":Ljava/lang/String;
    :cond_72
    :goto_72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 8
    .param p1, "in"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "err"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1189
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1190
    .local v0, "ferr":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1191
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "No shell command implementation."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1193
    const/4 v2, 0x0

    return v2
.end method

.method public isBinderAlive()Z
    .registers 2

    .line 741
    const/4 v0, 0x1

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .registers 3
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .line 1230
    return-void
.end method

.method public final native markVintfStability()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1124
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1125
    .local v0, "callingUid":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    const/16 v3, 0x7d0

    if-ne v0, v3, :cond_d

    goto :goto_18

    .line 1126
    :cond_d
    invoke-virtual {p6, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1127
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Shell commands are only callable by ADB"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1132
    :cond_18
    :goto_18
    const-string v3, "/dev/null"

    if-nez p1, :cond_29

    .line 1133
    :try_start_1c
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object p1, v4

    goto :goto_29

    .line 1141
    :catch_27
    move-exception v3

    goto :goto_36

    .line 1135
    :cond_29
    :goto_29
    if-nez p2, :cond_66

    .line 1136
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_34} :catch_27

    move-object p2, v1

    goto :goto_66

    .line 1142
    .local v3, "e":Ljava/io/IOException;
    :goto_36
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    if-eqz p3, :cond_3e

    move-object v6, p3

    goto :goto_3f

    :cond_3e
    move-object v6, p2

    :goto_3f
    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1143
    .local v4, "pw":Ljava/io/PrintWriter;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open /dev/null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 1145
    invoke-virtual {p6, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1146
    return-void

    .line 1138
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "pw":Ljava/io/PrintWriter;
    :cond_66
    :goto_66
    if-nez p3, :cond_69

    .line 1139
    move-object p3, p2

    .line 1147
    :cond_69
    nop

    .line 1149
    if-nez p4, :cond_6f

    .line 1150
    const/4 v1, 0x0

    new-array p4, v1, [Ljava/lang/String;

    .line 1153
    :cond_6f
    const/4 v1, -0x1

    .line 1154
    .local v1, "result":I
    :try_start_70
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_74} :catch_ba
    .catchall {:try_start_70 .. :try_end_74} :catchall_b8

    .line 1155
    .local v3, "inPfd":Landroid/os/ParcelFileDescriptor;
    :try_start_74
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_ac

    .line 1156
    .local v4, "outPfd":Landroid/os/ParcelFileDescriptor;
    :try_start_78
    invoke-static {p3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_a0

    .line 1157
    .local v5, "errPfd":Landroid/os/ParcelFileDescriptor;
    :try_start_7c
    invoke-virtual {p0, v3, v4, v5, p4}, Landroid/os/Binder;->handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I

    move-result v6
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_94

    move v1, v6

    .line 1158
    if-eqz v5, :cond_86

    :try_start_83
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_a0

    .end local v5    # "errPfd":Landroid/os/ParcelFileDescriptor;
    :cond_86
    if-eqz v4, :cond_8b

    :try_start_88
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_ac

    .end local v4    # "outPfd":Landroid/os/ParcelFileDescriptor;
    :cond_8b
    if-eqz v3, :cond_90

    :try_start_8d
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_ba
    .catchall {:try_start_8d .. :try_end_90} :catchall_b8

    .line 1163
    .end local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    :cond_90
    :goto_90
    invoke-virtual {p6, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1164
    goto :goto_e3

    .line 1154
    .restart local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "outPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "errPfd":Landroid/os/ParcelFileDescriptor;
    :catchall_94
    move-exception v6

    if-eqz v5, :cond_9f

    :try_start_97
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9b

    goto :goto_9f

    :catchall_9b
    move-exception v7

    :try_start_9c
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "callingUid":I
    .end local v1    # "result":I
    .end local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "outPfd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Landroid/os/Binder;
    .end local p1    # "in":Ljava/io/FileDescriptor;
    .end local p2    # "out":Ljava/io/FileDescriptor;
    .end local p3    # "err":Ljava/io/FileDescriptor;
    .end local p4    # "args":[Ljava/lang/String;
    .end local p5    # "callback":Landroid/os/ShellCallback;
    .end local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    :cond_9f
    :goto_9f
    throw v6
    :try_end_a0
    .catchall {:try_start_9c .. :try_end_a0} :catchall_a0

    .end local v5    # "errPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "callingUid":I
    .restart local v1    # "result":I
    .restart local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "outPfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/os/Binder;
    .restart local p1    # "in":Ljava/io/FileDescriptor;
    .restart local p2    # "out":Ljava/io/FileDescriptor;
    .restart local p3    # "err":Ljava/io/FileDescriptor;
    .restart local p4    # "args":[Ljava/lang/String;
    .restart local p5    # "callback":Landroid/os/ShellCallback;
    .restart local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_a0
    move-exception v5

    if-eqz v4, :cond_ab

    :try_start_a3
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a7

    goto :goto_ab

    :catchall_a7
    move-exception v6

    :try_start_a8
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "callingUid":I
    .end local v1    # "result":I
    .end local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Landroid/os/Binder;
    .end local p1    # "in":Ljava/io/FileDescriptor;
    .end local p2    # "out":Ljava/io/FileDescriptor;
    .end local p3    # "err":Ljava/io/FileDescriptor;
    .end local p4    # "args":[Ljava/lang/String;
    .end local p5    # "callback":Landroid/os/ShellCallback;
    .end local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    :cond_ab
    :goto_ab
    throw v5
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_ac

    .end local v4    # "outPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "callingUid":I
    .restart local v1    # "result":I
    .restart local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/os/Binder;
    .restart local p1    # "in":Ljava/io/FileDescriptor;
    .restart local p2    # "out":Ljava/io/FileDescriptor;
    .restart local p3    # "err":Ljava/io/FileDescriptor;
    .restart local p4    # "args":[Ljava/lang/String;
    .restart local p5    # "callback":Landroid/os/ShellCallback;
    .restart local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_ac
    move-exception v4

    if-eqz v3, :cond_b7

    :try_start_af
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b3

    goto :goto_b7

    :catchall_b3
    move-exception v5

    :try_start_b4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "callingUid":I
    .end local v1    # "result":I
    .end local p0    # "this":Landroid/os/Binder;
    .end local p1    # "in":Ljava/io/FileDescriptor;
    .end local p2    # "out":Ljava/io/FileDescriptor;
    .end local p3    # "err":Ljava/io/FileDescriptor;
    .end local p4    # "args":[Ljava/lang/String;
    .end local p5    # "callback":Landroid/os/ShellCallback;
    .end local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    :cond_b7
    :goto_b7
    throw v4
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b8} :catch_ba
    .catchall {:try_start_b4 .. :try_end_b8} :catchall_b8

    .line 1163
    .end local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "callingUid":I
    .restart local v1    # "result":I
    .restart local p0    # "this":Landroid/os/Binder;
    .restart local p1    # "in":Ljava/io/FileDescriptor;
    .restart local p2    # "out":Ljava/io/FileDescriptor;
    .restart local p3    # "err":Ljava/io/FileDescriptor;
    .restart local p4    # "args":[Ljava/lang/String;
    .restart local p5    # "callback":Landroid/os/ShellCallback;
    .restart local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_b8
    move-exception v3

    goto :goto_e4

    .line 1158
    :catch_ba
    move-exception v3

    .line 1159
    .local v3, "e":Ljava/io/IOException;
    :try_start_bb
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1160
    .local v4, "pw":Ljava/io/PrintWriter;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dup() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V
    :try_end_e2
    .catchall {:try_start_bb .. :try_end_e2} :catchall_b8

    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "pw":Ljava/io/PrintWriter;
    goto :goto_90

    .line 1165
    :goto_e3
    return-void

    .line 1163
    :goto_e4
    invoke-virtual {p6, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1164
    throw v3
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 885
    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const v0, 0x5f4e5446

    const/4 v4, 0x1

    if-ne v1, v0, :cond_14

    .line 886
    invoke-virtual/range {p0 .. p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 887
    return v4

    .line 888
    :cond_14
    const v0, 0x5f444d50

    if-ne v1, v0, :cond_45

    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 890
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 891
    .local v6, "args":[Ljava/lang/String;
    if-eqz v5, :cond_39

    .line 893
    :try_start_23
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_32

    move-object/from16 v14, p0

    :try_start_29
    invoke-virtual {v14, v0, v6}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_30

    .line 895
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 896
    goto :goto_3b

    .line 895
    :catchall_30
    move-exception v0

    goto :goto_35

    :catchall_32
    move-exception v0

    move-object/from16 v14, p0

    :goto_35
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 896
    throw v0

    .line 891
    :cond_39
    move-object/from16 v14, p0

    .line 899
    :goto_3b
    if-eqz v3, :cond_41

    .line 900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_44

    .line 902
    :cond_41
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 904
    :goto_44
    return v4

    .line 905
    .end local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "args":[Ljava/lang/String;
    :cond_45
    move-object/from16 v14, p0

    const v0, 0x5f434d44

    if-ne v1, v0, :cond_c0

    .line 906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 907
    .local v5, "in":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 908
    .local v6, "out":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 909
    .local v15, "err":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 910
    .local v16, "args":[Ljava/lang/String;
    sget-object v0, Landroid/os/ShellCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/ShellCallback;

    .line 911
    .local v17, "shellCallback":Landroid/os/ShellCallback;
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/ResultReceiver;

    .line 913
    .local v18, "resultReceiver":Landroid/os/ResultReceiver;
    if-eqz v6, :cond_ac

    .line 914
    if-eqz v5, :cond_7b

    :try_start_74
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_7c

    .line 920
    :catchall_79
    move-exception v0

    goto :goto_99

    .line 914
    :cond_7b
    const/4 v0, 0x0

    :goto_7c
    move-object v8, v0

    .line 915
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    .line 916
    if-eqz v15, :cond_88

    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_8c

    :cond_88
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    :goto_8c
    move-object v10, v0

    .line 914
    move-object/from16 v7, p0

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    invoke-virtual/range {v7 .. v13}, Landroid/os/Binder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    :try_end_98
    .catchall {:try_start_74 .. :try_end_98} :catchall_79

    goto :goto_ac

    .line 920
    :goto_99
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 921
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 922
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 924
    if-eqz v3, :cond_a8

    .line 925
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_ab

    .line 927
    :cond_a8
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 929
    :goto_ab
    throw v0

    .line 920
    :cond_ac
    :goto_ac
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 921
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 922
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 924
    if-eqz v3, :cond_bb

    .line 925
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_bf

    .line 927
    :cond_bb
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 929
    nop

    .line 930
    :goto_bf
    return v4

    .line 933
    .end local v5    # "in":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "out":Landroid/os/ParcelFileDescriptor;
    .end local v15    # "err":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "args":[Ljava/lang/String;
    .end local v17    # "shellCallback":Landroid/os/ShellCallback;
    .end local v18    # "resultReceiver":Landroid/os/ResultReceiver;
    :cond_c0
    const v0, 0x5f495359

    if-ne v1, v0, :cond_d1

    .line 934
    if-eqz v3, :cond_cd

    .line 935
    sget-boolean v0, Landroid/os/Binder;->isSystemServer:Z

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_d0

    .line 937
    :cond_cd
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 939
    :goto_d0
    return v4

    .line 942
    :cond_d1
    const/4 v0, 0x0

    return v0
.end method

.method public pingBinder()Z
    .registers 2

    .line 731
    const/4 v0, 0x1

    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 750
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 751
    iget-object v0, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    return-object v0

    .line 753
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public final native setExtension(Landroid/os/IBinder;)V
.end method

.method public shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 7
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1104
    invoke-virtual/range {p0 .. p6}, Landroid/os/Binder;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 1105
    return-void
.end method

.method public final transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1216
    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 1217
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1219
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1220
    .local v1, "r":Z
    if-eqz p3, :cond_f

    .line 1221
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1223
    :cond_f
    return v1
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .registers 4
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .line 1236
    const/4 v0, 0x1

    return v0
.end method
