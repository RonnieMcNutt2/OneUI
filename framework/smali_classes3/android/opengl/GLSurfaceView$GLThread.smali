.class Landroid/opengl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GLThread"


# instance fields
.field private mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishDrawingRunnable:Ljava/lang/Runnable;

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mTag:Ljava/lang/String;

.field private mWaitingForSurface:Z

.field private mWantRenderNotification:Z

.field private mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fputmExited(Landroid/opengl/GLSurfaceView$GLThread;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .line 1260
    .local p1, "glSurfaceViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/opengl/GLSurfaceView;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1256
    const-string v0, "GLThread"

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mTag:Ljava/lang/String;

    .line 1862
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1863
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1864
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1261
    const/4 v1, 0x0

    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1262
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1263
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1264
    iput v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1265
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1266
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1267
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->setTag()V

    .line 1268
    return-void
.end method

.method private guardedRun()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1314
    move-object/from16 v1, p0

    new-instance v0, Landroid/opengl/GLSurfaceView$EglHelper;

    iget-object v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Landroid/opengl/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    .line 1315
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1316
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1317
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1320
    const/4 v2, 0x0

    .line 1321
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1322
    .local v3, "createEglContext":Z
    const/4 v4, 0x0

    .line 1323
    .local v4, "createEglSurface":Z
    const/4 v5, 0x0

    .line 1324
    .local v5, "createGlInterface":Z
    const/4 v6, 0x0

    .line 1325
    .local v6, "lostEglContext":Z
    const/4 v7, 0x0

    .line 1326
    .local v7, "sizeChanged":Z
    const/4 v8, 0x0

    .line 1327
    .local v8, "wantRenderNotification":Z
    const/4 v9, 0x0

    .line 1328
    .local v9, "doRenderNotification":Z
    const/4 v10, 0x0

    .line 1329
    .local v10, "askedToReleaseEglContext":Z
    const/4 v11, 0x0

    .line 1330
    .local v11, "w":I
    const/4 v12, 0x0

    .line 1331
    .local v12, "h":I
    const/4 v13, 0x0

    .line 1332
    .local v13, "event":Ljava/lang/Runnable;
    const/4 v14, 0x0

    .line 1335
    .local v14, "finishDrawingRunnable":Ljava/lang/Runnable;
    :goto_1f
    :try_start_1f
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_29c

    .line 1337
    :goto_24
    :try_start_24
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_295

    if-eqz v0, :cond_3e

    .line 1338
    :try_start_28
    monitor-exit v15
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_39

    .line 1628
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v16

    monitor-enter v16

    .line 1629
    :try_start_2e
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1630
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1631
    monitor-exit v16

    .line 1338
    return-void

    .line 1631
    :catchall_36
    move-exception v0

    monitor-exit v16
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_36

    throw v0

    .line 1510
    :catchall_39
    move-exception v0

    move-object/from16 v17, v2

    goto/16 :goto_298

    .line 1341
    :cond_3e
    :try_start_3e
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_295

    move-object/from16 v17, v2

    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v17, "gl":Ljavax/microedition/khronos/opengles/GL10;
    if-nez v0, :cond_55

    .line 1342
    :try_start_48
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1343
    .end local v13    # "event":Ljava/lang/Runnable;
    .local v0, "event":Ljava/lang/Runnable;
    move-object v13, v0

    const/4 v0, 0x0

    goto/16 :goto_155

    .line 1347
    .end local v0    # "event":Ljava/lang/Runnable;
    .restart local v13    # "event":Ljava/lang/Runnable;
    :cond_55
    const/4 v0, 0x0

    .line 1348
    .local v0, "pausing":Z
    iget-boolean v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    move/from16 v18, v0

    .end local v0    # "pausing":Z
    .local v18, "pausing":Z
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    if-eq v2, v0, :cond_69

    .line 1349
    move v2, v0

    .line 1350
    .end local v18    # "pausing":Z
    .local v2, "pausing":Z
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    .line 1351
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_6b

    .line 1348
    .end local v2    # "pausing":Z
    .restart local v18    # "pausing":Z
    :cond_69
    move/from16 v2, v18

    .line 1358
    .end local v18    # "pausing":Z
    .restart local v2    # "pausing":Z
    :goto_6b
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v0, :cond_79

    .line 1362
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1363
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1364
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1365
    const/4 v10, 0x1

    .line 1369
    :cond_79
    if-eqz v6, :cond_83

    .line 1370
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1371
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1372
    const/4 v0, 0x0

    move v6, v0

    .line 1376
    :cond_83
    if-eqz v2, :cond_8c

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_8c

    .line 1380
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1384
    :cond_8c
    if-eqz v2, :cond_a8

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_a8

    .line 1385
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 1386
    .local v0, "view":Landroid/opengl/GLSurfaceView;
    if-nez v0, :cond_9f

    .line 1387
    const/16 v18, 0x0

    goto :goto_a3

    :cond_9f
    invoke-static {v0}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmPreserveEGLContextOnPause(Landroid/opengl/GLSurfaceView;)Z

    move-result v18

    .line 1388
    .local v18, "preserveEglContextOnPause":Z
    :goto_a3
    if-nez v18, :cond_a8

    .line 1389
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1397
    .end local v0    # "view":Landroid/opengl/GLSurfaceView;
    .end local v18    # "preserveEglContextOnPause":Z
    :cond_a8
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v0, :cond_c4

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_c4

    .line 1401
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_b7

    .line 1402
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1404
    :cond_b7
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1405
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1406
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1410
    :cond_c4
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_d6

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_d6

    .line 1414
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1415
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1418
    :cond_d6
    if-eqz v9, :cond_e6

    .line 1422
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1423
    const/4 v9, 0x0

    .line 1424
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1425
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1428
    :cond_e6
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_ee

    .line 1429
    move-object v14, v0

    .line 1430
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1434
    :cond_ee
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_279

    .line 1437
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z
    :try_end_f6
    .catchall {:try_start_48 .. :try_end_f6} :catchall_29a

    if-nez v0, :cond_11f

    .line 1438
    if-eqz v10, :cond_ff

    .line 1439
    const/4 v0, 0x0

    move v10, v0

    move/from16 v18, v2

    .end local v10    # "askedToReleaseEglContext":Z
    .local v0, "askedToReleaseEglContext":Z
    goto :goto_121

    .line 1442
    .end local v0    # "askedToReleaseEglContext":Z
    .restart local v10    # "askedToReleaseEglContext":Z
    :cond_ff
    :try_start_ff
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->start()V
    :try_end_104
    .catch Ljava/lang/RuntimeException; {:try_start_ff .. :try_end_104} :catch_113
    .catchall {:try_start_ff .. :try_end_104} :catchall_29a

    .line 1446
    nop

    .line 1447
    const/4 v0, 0x1

    :try_start_106
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1448
    const/4 v3, 0x1

    .line 1450
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    move/from16 v18, v2

    goto :goto_121

    .line 1443
    :catch_113
    move-exception v0

    .line 1444
    .local v0, "t":Ljava/lang/RuntimeException;
    move/from16 v18, v2

    .end local v2    # "pausing":Z
    .local v18, "pausing":Z
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1445
    nop

    .end local v3    # "createEglContext":Z
    .end local v4    # "createEglSurface":Z
    .end local v5    # "createGlInterface":Z
    .end local v6    # "lostEglContext":Z
    .end local v7    # "sizeChanged":Z
    .end local v8    # "wantRenderNotification":Z
    .end local v9    # "doRenderNotification":Z
    .end local v10    # "askedToReleaseEglContext":Z
    .end local v11    # "w":I
    .end local v12    # "h":I
    .end local v13    # "event":Ljava/lang/Runnable;
    .end local v14    # "finishDrawingRunnable":Ljava/lang/Runnable;
    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    throw v0

    .line 1437
    .end local v0    # "t":Ljava/lang/RuntimeException;
    .end local v18    # "pausing":Z
    .restart local v2    # "pausing":Z
    .restart local v3    # "createEglContext":Z
    .restart local v4    # "createEglSurface":Z
    .restart local v5    # "createGlInterface":Z
    .restart local v6    # "lostEglContext":Z
    .restart local v7    # "sizeChanged":Z
    .restart local v8    # "wantRenderNotification":Z
    .restart local v9    # "doRenderNotification":Z
    .restart local v10    # "askedToReleaseEglContext":Z
    .restart local v11    # "w":I
    .restart local v12    # "h":I
    .restart local v13    # "event":Ljava/lang/Runnable;
    .restart local v14    # "finishDrawingRunnable":Ljava/lang/Runnable;
    .restart local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_11f
    move/from16 v18, v2

    .line 1454
    .end local v2    # "pausing":Z
    .restart local v18    # "pausing":Z
    :goto_121
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_12f

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v0, :cond_12f

    .line 1455
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1456
    const/4 v4, 0x1

    .line 1457
    const/4 v5, 0x1

    .line 1458
    const/4 v7, 0x1

    .line 1461
    :cond_12f
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_289

    .line 1462
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    if-eqz v0, :cond_145

    .line 1463
    const/4 v7, 0x1

    .line 1464
    iget v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    move v11, v0

    .line 1465
    iget v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    move v12, v0

    .line 1466
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1474
    const/4 v4, 0x1

    .line 1476
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1478
    :cond_145
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1479
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1480
    iget-boolean v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z
    :try_end_151
    .catchall {:try_start_106 .. :try_end_151} :catchall_29a

    if-eqz v2, :cond_155

    .line 1481
    const/4 v2, 0x1

    move v8, v2

    .line 1510
    .end local v18    # "pausing":Z
    :cond_155
    :goto_155
    :try_start_155
    monitor-exit v15
    :try_end_156
    .catchall {:try_start_155 .. :try_end_156} :catchall_275

    .line 1512
    if-eqz v13, :cond_160

    .line 1513
    :try_start_158
    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    .line 1514
    const/4 v13, 0x0

    .line 1515
    move-object/from16 v2, v17

    goto/16 :goto_1f

    .line 1518
    :cond_160
    if-eqz v4, :cond_199

    .line 1522
    iget-object v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView$EglHelper;->createSurface()Z

    move-result v2

    if-eqz v2, :cond_180

    .line 1523
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_16f
    .catchall {:try_start_158 .. :try_end_16f} :catchall_29c

    .line 1524
    const/4 v15, 0x1

    :try_start_170
    iput-boolean v15, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1525
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1526
    monitor-exit v2

    .line 1535
    const/4 v2, 0x0

    move v4, v2

    .end local v4    # "createEglSurface":Z
    .local v2, "createEglSurface":Z
    goto :goto_199

    .line 1526
    .end local v2    # "createEglSurface":Z
    .restart local v4    # "createEglSurface":Z
    :catchall_17d
    move-exception v0

    monitor-exit v2
    :try_end_17f
    .catchall {:try_start_170 .. :try_end_17f} :catchall_17d

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :try_start_17f
    throw v0

    .line 1528
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_180
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_185
    .catchall {:try_start_17f .. :try_end_185} :catchall_29c

    .line 1529
    const/4 v15, 0x1

    :try_start_186
    iput-boolean v15, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1530
    iput-boolean v15, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1531
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1532
    monitor-exit v2

    .line 1533
    move-object/from16 v2, v17

    goto/16 :goto_1f

    .line 1532
    :catchall_196
    move-exception v0

    monitor-exit v2
    :try_end_198
    .catchall {:try_start_186 .. :try_end_198} :catchall_196

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :try_start_198
    throw v0

    .line 1538
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_199
    :goto_199
    if-eqz v5, :cond_1a5

    .line 1539
    iget-object v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    .line 1541
    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v5, 0x0

    goto :goto_1a7

    .line 1538
    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_1a5
    move-object/from16 v2, v17

    .line 1544
    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :goto_1a7
    move v15, v4

    move/from16 v16, v5

    .end local v4    # "createEglSurface":Z
    .end local v5    # "createGlInterface":Z
    .local v15, "createEglSurface":Z
    .local v16, "createGlInterface":Z
    const-wide/16 v4, 0x8

    if-eqz v3, :cond_1db

    .line 1548
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;
    :try_end_1b6
    .catchall {:try_start_198 .. :try_end_1b6} :catchall_29c

    move-object/from16 v17, v0

    .line 1549
    .local v17, "view":Landroid/opengl/GLSurfaceView;
    if-eqz v17, :cond_1d9

    .line 1551
    :try_start_1ba
    const-string/jumbo v0, "onSurfaceCreated"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1552
    invoke-static/range {v17 .. v17}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmRenderer(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    iget-object v4, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    iget-object v4, v4, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v2, v4}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_1cb
    .catchall {:try_start_1ba .. :try_end_1cb} :catchall_1d1

    .line 1554
    const-wide/16 v4, 0x8

    :try_start_1cd
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1555
    goto :goto_1d9

    .line 1554
    :catchall_1d1
    move-exception v0

    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1555
    nop

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    throw v0

    .line 1557
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_1d9
    :goto_1d9
    const/4 v0, 0x0

    move v3, v0

    .line 1560
    .end local v17    # "view":Landroid/opengl/GLSurfaceView;
    :cond_1db
    if-eqz v7, :cond_20e

    .line 1564
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;
    :try_end_1e5
    .catchall {:try_start_1cd .. :try_end_1e5} :catchall_29c

    move-object v4, v0

    .line 1565
    .local v4, "view":Landroid/opengl/GLSurfaceView;
    if-eqz v4, :cond_209

    .line 1567
    :try_start_1e8
    const-string/jumbo v0, "onSurfaceChanged"
    :try_end_1eb
    .catchall {:try_start_1e8 .. :try_end_1eb} :catchall_1ff

    move/from16 v18, v6

    const-wide/16 v5, 0x8

    .end local v6    # "lostEglContext":Z
    .local v18, "lostEglContext":Z
    :try_start_1ef
    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1568
    invoke-static {v4}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmRenderer(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    invoke-interface {v0, v2, v11, v12}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_1f9
    .catchall {:try_start_1ef .. :try_end_1f9} :catchall_1fd

    .line 1570
    :try_start_1f9
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1571
    goto :goto_20b

    .line 1570
    :catchall_1fd
    move-exception v0

    goto :goto_202

    .end local v18    # "lostEglContext":Z
    .restart local v6    # "lostEglContext":Z
    :catchall_1ff
    move-exception v0

    move/from16 v18, v6

    .end local v6    # "lostEglContext":Z
    .restart local v18    # "lostEglContext":Z
    :goto_202
    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1571
    nop

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    throw v0

    .line 1565
    .end local v18    # "lostEglContext":Z
    .restart local v6    # "lostEglContext":Z
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_209
    move/from16 v18, v6

    .line 1573
    .end local v6    # "lostEglContext":Z
    .restart local v18    # "lostEglContext":Z
    :goto_20b
    const/4 v0, 0x0

    move v7, v0

    .end local v7    # "sizeChanged":Z
    .local v0, "sizeChanged":Z
    goto :goto_210

    .line 1560
    .end local v0    # "sizeChanged":Z
    .end local v4    # "view":Landroid/opengl/GLSurfaceView;
    .end local v18    # "lostEglContext":Z
    .restart local v6    # "lostEglContext":Z
    .restart local v7    # "sizeChanged":Z
    :cond_20e
    move/from16 v18, v6

    .line 1580
    .end local v6    # "lostEglContext":Z
    .restart local v18    # "lostEglContext":Z
    :goto_210
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;
    :try_end_218
    .catchall {:try_start_1f9 .. :try_end_218} :catchall_29c

    move-object v4, v0

    .line 1581
    .restart local v4    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v4, :cond_23e

    .line 1583
    :try_start_21b
    const-string/jumbo v0, "onDrawFrame"

    const-wide/16 v5, 0x8

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1584
    invoke-static {v4}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmRenderer(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1585
    if-eqz v14, :cond_230

    .line 1586
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V
    :try_end_22f
    .catchall {:try_start_21b .. :try_end_22f} :catchall_236

    .line 1587
    const/4 v14, 0x0

    .line 1590
    :cond_230
    const-wide/16 v5, 0x8

    :try_start_232
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1591
    goto :goto_23e

    .line 1590
    :catchall_236
    move-exception v0

    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1591
    nop

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    throw v0

    .line 1594
    .end local v4    # "view":Landroid/opengl/GLSurfaceView;
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_23e
    :goto_23e
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->swap()I

    move-result v0

    move v4, v0

    .line 1595
    .local v4, "swapError":I
    sparse-switch v4, :sswitch_data_2ae

    .line 1609
    const-string v0, "GLThread"

    goto :goto_24f

    .line 1602
    :sswitch_24b
    const/4 v0, 0x1

    .line 1603
    .end local v18    # "lostEglContext":Z
    .local v0, "lostEglContext":Z
    move v6, v0

    goto :goto_266

    .line 1597
    .end local v0    # "lostEglContext":Z
    .restart local v18    # "lostEglContext":Z
    :sswitch_24e
    goto :goto_264

    .line 1609
    :goto_24f
    const-string v5, "eglSwapBuffers"

    invoke-static {v0, v5, v4}, Landroid/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1611
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v5

    monitor-enter v5
    :try_end_259
    .catchall {:try_start_232 .. :try_end_259} :catchall_29c

    .line 1612
    const/4 v0, 0x1

    :try_start_25a
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1613
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1614
    monitor-exit v5

    .line 1618
    :goto_264
    move/from16 v6, v18

    .end local v18    # "lostEglContext":Z
    .restart local v6    # "lostEglContext":Z
    :goto_266
    if-eqz v8, :cond_26c

    .line 1619
    const/4 v0, 0x1

    .line 1620
    .end local v9    # "doRenderNotification":Z
    .local v0, "doRenderNotification":Z
    const/4 v5, 0x0

    move v9, v0

    move v8, v5

    .line 1622
    .end local v0    # "doRenderNotification":Z
    .end local v4    # "swapError":I
    .restart local v9    # "doRenderNotification":Z
    :cond_26c
    move v4, v15

    move/from16 v5, v16

    const/4 v0, 0x0

    goto/16 :goto_1f

    .line 1614
    .end local v6    # "lostEglContext":Z
    .restart local v4    # "swapError":I
    .restart local v18    # "lostEglContext":Z
    :catchall_272
    move-exception v0

    monitor-exit v5
    :try_end_274
    .catchall {:try_start_25a .. :try_end_274} :catchall_272

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :try_start_274
    throw v0
    :try_end_275
    .catchall {:try_start_274 .. :try_end_275} :catchall_29c

    .line 1510
    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local v15    # "createEglSurface":Z
    .end local v16    # "createGlInterface":Z
    .end local v18    # "lostEglContext":Z
    .local v4, "createEglSurface":Z
    .restart local v5    # "createGlInterface":Z
    .restart local v6    # "lostEglContext":Z
    .local v17, "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :catchall_275
    move-exception v0

    move/from16 v18, v6

    .end local v6    # "lostEglContext":Z
    .restart local v18    # "lostEglContext":Z
    goto :goto_298

    .line 1486
    .end local v18    # "lostEglContext":Z
    .local v2, "pausing":Z
    .restart local v6    # "lostEglContext":Z
    :cond_279
    move/from16 v18, v2

    .end local v2    # "pausing":Z
    .local v18, "pausing":Z
    if-eqz v14, :cond_289

    .line 1487
    :try_start_27d
    const-string v0, "GLThread"

    const-string v2, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    .line 1490
    const/4 v0, 0x0

    move-object v14, v0

    .line 1508
    :cond_289
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 1509
    .end local v18    # "pausing":Z
    move-object/from16 v2, v17

    const/4 v0, 0x0

    goto/16 :goto_24

    .line 1510
    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL10;
    :catchall_295
    move-exception v0

    move-object/from16 v17, v2

    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :goto_298
    monitor-exit v15
    :try_end_299
    .catchall {:try_start_27d .. :try_end_299} :catchall_29a

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :try_start_299
    throw v0
    :try_end_29a
    .catchall {:try_start_299 .. :try_end_29a} :catchall_29c

    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :catchall_29a
    move-exception v0

    goto :goto_298

    .line 1628
    .end local v3    # "createEglContext":Z
    .end local v4    # "createEglSurface":Z
    .end local v5    # "createGlInterface":Z
    .end local v6    # "lostEglContext":Z
    .end local v7    # "sizeChanged":Z
    .end local v8    # "wantRenderNotification":Z
    .end local v9    # "doRenderNotification":Z
    .end local v10    # "askedToReleaseEglContext":Z
    .end local v11    # "w":I
    .end local v12    # "h":I
    .end local v13    # "event":Ljava/lang/Runnable;
    .end local v14    # "finishDrawingRunnable":Ljava/lang/Runnable;
    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :catchall_29c
    move-exception v0

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1629
    :try_start_2a2
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1630
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1631
    monitor-exit v2
    :try_end_2a9
    .catchall {:try_start_2a2 .. :try_end_2a9} :catchall_2aa

    .line 1632
    throw v0

    .line 1631
    :catchall_2aa
    move-exception v0

    :try_start_2ab
    monitor-exit v2
    :try_end_2ac
    .catchall {:try_start_2ab .. :try_end_2ac} :catchall_2aa

    throw v0

    nop

    :sswitch_data_2ae
    .sparse-switch
        0x3000 -> :sswitch_24e
        0x300e -> :sswitch_24b
    .end sparse-switch
.end method

.method static synthetic lambda$requestRenderAndNotify$0(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "oldCallback"    # Ljava/lang/Runnable;
    .param p1, "finishDrawing"    # Ljava/lang/Runnable;

    .line 1683
    if-eqz p0, :cond_5

    .line 1684
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 1686
    :cond_5
    if-eqz p1, :cond_a

    .line 1687
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1689
    :cond_a
    return-void
.end method

.method private readyToDraw()Z
    .registers 3

    .line 1640
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_1e

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    if-lez v0, :cond_1e

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    if-lez v0, :cond_1e

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_1e

    :cond_1d
    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method private setTag()V
    .registers 4

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mTag:Ljava/lang/String;

    .line 1273
    return-void
.end method

.method private stopEglContextLocked()V
    .registers 2

    .line 1307
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_13

    .line 1308
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1309
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1310
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1312
    :cond_13
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .registers 2

    .line 1296
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_c

    .line 1297
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1298
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1300
    :cond_c
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .registers 2

    .line 1636
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public getRenderMode()I
    .registers 3

    .line 1656
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1657
    :try_start_5
    iget v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v0

    return v1

    .line 1658
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public onPause()V
    .registers 4

    .line 1733
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1737
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1738
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1739
    :goto_f
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_28

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_2a

    if-nez v1, :cond_28

    .line 1744
    :try_start_17
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f
    .catchall {:try_start_17 .. :try_end_1e} :catchall_2a

    .line 1747
    :goto_1e
    goto :goto_f

    .line 1745
    :catch_1f
    move-exception v1

    .line 1746
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_1e

    .line 1749
    :cond_28
    monitor-exit v0

    .line 1750
    return-void

    .line 1749
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public onResume()V
    .registers 4

    .line 1753
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1757
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1758
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1759
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1760
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1761
    :goto_14
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_31

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_31

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_33

    if-nez v1, :cond_31

    .line 1766
    :try_start_20
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_33

    .line 1769
    :goto_27
    goto :goto_14

    .line 1767
    :catch_28
    move-exception v1

    .line 1768
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_27

    .line 1771
    :cond_31
    monitor-exit v0

    .line 1772
    return-void

    .line 1771
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public onWindowResize(II)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1775
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1776
    :try_start_5
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1777
    iput p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1778
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1779
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1780
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1787
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_19

    .line 1788
    monitor-exit v0

    return-void

    .line 1791
    :cond_19
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1794
    :goto_20
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_43

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_43

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_43

    .line 1795
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->ableToDraw()Z

    move-result v1
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_45

    if-eqz v1, :cond_43

    .line 1800
    :try_start_32
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_39} :catch_3a
    .catchall {:try_start_32 .. :try_end_39} :catchall_45

    .line 1803
    :goto_39
    goto :goto_20

    .line 1801
    :catch_3a
    move-exception v1

    .line 1802
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_3b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_39

    .line 1805
    :cond_43
    monitor-exit v0

    .line 1806
    return-void

    .line 1805
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_45

    throw v1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1834
    if-eqz p1, :cond_18

    .line 1837
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1838
    :try_start_7
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1839
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1840
    monitor-exit v0

    .line 1841
    return-void

    .line 1840
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1

    .line 1835
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestExitAndWait()V
    .registers 4

    .line 1811
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1812
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1813
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1814
    :goto_f
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_26

    if-nez v1, :cond_24

    .line 1816
    :try_start_13
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1b
    .catchall {:try_start_13 .. :try_end_1a} :catchall_26

    .line 1819
    :goto_1a
    goto :goto_f

    .line 1817
    :catch_1b
    move-exception v1

    .line 1818
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_1a

    .line 1821
    :cond_24
    monitor-exit v0

    .line 1822
    return-void

    .line 1821
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_26

    throw v1
.end method

.method public requestReleaseEglContextLocked()V
    .registers 2

    .line 1825
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1826
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1827
    return-void
.end method

.method public requestRender()V
    .registers 3

    .line 1662
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1663
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1664
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1665
    monitor-exit v0

    .line 1666
    return-void

    .line 1665
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public requestRenderAndNotify(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "finishDrawing"    # Ljava/lang/Runnable;

    .line 1669
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1674
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_d

    .line 1675
    monitor-exit v0

    return-void

    .line 1678
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1679
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1680
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1681
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1682
    .local v1, "oldCallback":Ljava/lang/Runnable;
    new-instance v2, Landroid/opengl/GLSurfaceView$GLThread$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/opengl/GLSurfaceView$GLThread$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1691
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1692
    .end local v1    # "oldCallback":Ljava/lang/Runnable;
    monitor-exit v0

    .line 1693
    return-void

    .line 1692
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public run()V
    .registers 4

    .line 1277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1283
    :try_start_1a
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_2e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_25

    .line 1287
    :goto_1d
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1288
    goto :goto_30

    .line 1287
    :catchall_25
    move-exception v0

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1288
    throw v0

    .line 1284
    :catch_2e
    move-exception v0

    goto :goto_1d

    .line 1289
    :goto_30
    return-void
.end method

.method public setRenderMode(I)V
    .registers 4
    .param p1, "renderMode"    # I

    .line 1646
    if-ltz p1, :cond_18

    const/4 v0, 0x1

    if-gt p1, v0, :cond_18

    .line 1649
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1650
    :try_start_a
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1651
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1652
    monitor-exit v0

    .line 1653
    return-void

    .line 1652
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v1

    .line 1647
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public surfaceCreated()V
    .registers 4

    .line 1696
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1700
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1701
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1702
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1703
    :goto_12
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_2f

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_2f

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_31

    if-nez v1, :cond_2f

    .line 1707
    :try_start_1e
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_25} :catch_26
    .catchall {:try_start_1e .. :try_end_25} :catchall_31

    .line 1710
    :goto_25
    goto :goto_12

    .line 1708
    :catch_26
    move-exception v1

    .line 1709
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_25

    .line 1712
    :cond_2f
    monitor-exit v0

    .line 1713
    return-void

    .line 1712
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public surfaceDestroyed()V
    .registers 4

    .line 1716
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1720
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1721
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1722
    :goto_f
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_28

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_2a

    if-nez v1, :cond_28

    .line 1724
    :try_start_17
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f
    .catchall {:try_start_17 .. :try_end_1e} :catchall_2a

    .line 1727
    :goto_1e
    goto :goto_f

    .line 1725
    :catch_1f
    move-exception v1

    .line 1726
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1e

    .line 1729
    :cond_28
    monitor-exit v0

    .line 1730
    return-void

    .line 1729
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_2a

    throw v1
.end method
