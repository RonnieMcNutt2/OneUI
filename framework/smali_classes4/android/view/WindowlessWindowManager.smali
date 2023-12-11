.class public Landroid/view/WindowlessWindowManager;
.super Ljava/lang/Object;
.source "WindowlessWindowManager.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowlessWindowManager$State;,
        Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowlessWindowManager"


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mFocusGrantToken:Landroid/os/IBinder;

.field private final mHostInputToken:Landroid/os/IBinder;

.field private mInsetsState:Landroid/view/InsetsState;

.field private final mLayout:Landroid/view/WindowlessWindowLayout;

.field private final mRealWm:Landroid/view/IWindowSession;

.field final mResizeCompletionForWindow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRootSurface:Landroid/view/SurfaceControl;

.field final mStateForWindow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/view/WindowlessWindowManager$State;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private mTaskToken:Landroid/window/WindowContainerToken;

.field private final mTmpConfig:Landroid/util/MergedConfiguration;

.field private final mTmpFrames:Landroid/window/ClientWindowFrames;


# direct methods
.method public constructor <init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "c"    # Landroid/content/res/Configuration;
    .param p2, "rootSurface"    # Landroid/view/SurfaceControl;
    .param p3, "hostInputToken"    # Landroid/os/IBinder;

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/WindowContainerToken;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/WindowContainerToken;)V
    .registers 6
    .param p1, "c"    # Landroid/content/res/Configuration;
    .param p2, "rootSurface"    # Landroid/view/SurfaceControl;
    .param p3, "hostInputToken"    # Landroid/os/IBinder;
    .param p4, "taskToken"    # Landroid/window/WindowContainerToken;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    .line 93
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 98
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mFocusGrantToken:Landroid/os/IBinder;

    .line 100
    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    .line 101
    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mTmpConfig:Landroid/util/MergedConfiguration;

    .line 102
    new-instance v0, Landroid/view/WindowlessWindowLayout;

    invoke-direct {v0}, Landroid/view/WindowlessWindowLayout;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mLayout:Landroid/view/WindowlessWindowLayout;

    .line 116
    iput-object p4, p0, Landroid/view/WindowlessWindowManager;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 118
    iput-object p2, p0, Landroid/view/WindowlessWindowManager;->mRootSurface:Landroid/view/SurfaceControl;

    .line 119
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    .line 120
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    .line 121
    iput-object p3, p0, Landroid/view/WindowlessWindowManager;->mHostInputToken:Landroid/os/IBinder;

    .line 122
    return-void
.end method

.method private isInTouchModeInternal(I)Z
    .registers 5
    .param p1, "displayId"    # I

    .line 355
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->isInTouchMode(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 356
    :catch_9
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowlessWindowManager"

    const-string v2, "Unable to check if the window is in touch mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method private isOpaque(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 345
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_26

    :cond_a
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_26

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_26

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_1d

    goto :goto_26

    .line 350
    :cond_1d
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 348
    :cond_26
    :goto_26
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I
    .registers 41
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "viewVisibility"    # I
    .param p4, "displayId"    # I
    .param p5, "requestedVisibleTypes"    # I
    .param p6, "outInputChannel"    # Landroid/view/InputChannel;
    .param p7, "outInsetsState"    # Landroid/view/InsetsState;
    .param p8, "outActiveControls"    # Landroid/view/InsetsSourceControl$Array;
    .param p9, "outAttachedFrame"    # Landroid/graphics/Rect;
    .param p10, "outSizeCompatScale"    # [F

    .line 207
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p9

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v1, v9, Landroid/view/WindowlessWindowManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Leash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "WindowlessWindowManager.addToDisplay"

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 210
    invoke-virtual/range {p0 .. p2}, Landroid/view/WindowlessWindowManager;->getParentSurface(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v12

    .line 213
    .local v12, "leash":Landroid/view/SurfaceControl;
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v1, v9, Landroid/view/WindowlessWindowManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget v1, v10, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 214
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "WindowlessWindowManager.addToDisplay"

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 218
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0, v12}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v15

    .line 222
    .local v15, "sc":Landroid/view/SurfaceControl;
    new-instance v0, Landroid/view/WindowlessWindowManager$State;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v6, p1

    move-object v7, v12

    invoke-direct/range {v1 .. v8}, Landroid/view/WindowlessWindowManager$State;-><init>(Landroid/view/WindowlessWindowManager;Landroid/view/SurfaceControl;Landroid/view/WindowManager$LayoutParams;ILandroid/view/IWindow;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    .line 223
    .local v1, "state":Landroid/view/WindowlessWindowManager$State;
    monitor-enter p0

    .line 224
    :try_start_84
    iget-object v0, v9, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    iget-object v2, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;
    :try_end_8e
    .catchall {:try_start_84 .. :try_end_8e} :catchall_1be

    .line 225
    .local v0, "parentState":Landroid/view/WindowlessWindowManager$State;
    if-eqz v0, :cond_9c

    .line 226
    :try_start_90
    iget-object v2, v0, Landroid/view/WindowlessWindowManager$State;->mFrame:Landroid/graphics/Rect;

    iput-object v2, v1, Landroid/view/WindowlessWindowManager$State;->mAttachedFrame:Landroid/graphics/Rect;
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_95

    goto :goto_9c

    .line 238
    .end local v0    # "parentState":Landroid/view/WindowlessWindowManager$State;
    :catchall_95
    move-exception v0

    move/from16 v2, p4

    move-object/from16 v29, v15

    goto/16 :goto_1c3

    .line 231
    .restart local v0    # "parentState":Landroid/view/WindowlessWindowManager$State;
    :cond_9c
    :goto_9c
    :try_start_9c
    iget-object v2, v9, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2
    :try_end_a2
    .catchall {:try_start_9c .. :try_end_a2} :catchall_1be

    if-eqz v2, :cond_a9

    .line 232
    :try_start_a4
    iget-object v2, v9, Landroid/view/WindowlessWindowManager;->mFocusGrantToken:Landroid/os/IBinder;

    iput-object v2, v1, Landroid/view/WindowlessWindowManager$State;->mFocusGrantToken:Landroid/os/IBinder;
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_95

    goto :goto_b0

    .line 234
    :cond_a9
    :try_start_a9
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v1, Landroid/view/WindowlessWindowManager$State;->mFocusGrantToken:Landroid/os/IBinder;

    .line 237
    :goto_b0
    iget-object v2, v9, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    nop

    .end local v0    # "parentState":Landroid/view/WindowlessWindowManager$State;
    monitor-exit p0
    :try_end_bb
    .catchall {:try_start_a9 .. :try_end_bb} :catchall_1be

    .line 240
    iget-object v0, v1, Landroid/view/WindowlessWindowManager$State;->mAttachedFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_c4

    .line 241
    const/4 v0, -0x1

    invoke-virtual {v11, v13, v13, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_c9

    .line 243
    :cond_c4
    iget-object v0, v1, Landroid/view/WindowlessWindowManager$State;->mAttachedFrame:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 245
    :goto_c9
    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p10, v13

    .line 247
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1ac

    .line 250
    :try_start_d3
    iget-object v0, v9, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    instance-of v2, v0, Landroid/view/IWindowSession$Stub;
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_d7} :catch_1a1

    if-eqz v2, :cond_11a

    .line 251
    :try_start_d9
    new-instance v2, Landroid/view/SurfaceControl;

    const-string v3, "WindowlessWindowManager.addToDisplay"

    invoke-direct {v2, v15, v3}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iget-object v3, v9, Landroid/view/WindowlessWindowManager;->mHostInputToken:Landroid/os/IBinder;

    iget v4, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v5, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v6, v10, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v7, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v8, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v13, v1, Landroid/view/WindowlessWindowManager$State;->mFocusGrantToken:Landroid/os/IBinder;

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    .line 251
    move-object/from16 v16, v0

    move/from16 v17, p4

    move-object/from16 v18, v2

    move-object/from16 v19, p1

    move-object/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v13

    move-object/from16 v28, p6

    invoke-interface/range {v16 .. v28}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIIILandroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_111
    .catch Landroid/os/RemoteException; {:try_start_d9 .. :try_end_111} :catch_115

    move-object/from16 v29, v15

    goto/16 :goto_193

    .line 274
    :catch_115
    move-exception v0

    move-object/from16 v29, v15

    goto/16 :goto_1a4

    .line 259
    :cond_11a
    :try_start_11a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_160

    iget-object v0, v9, Landroid/view/WindowlessWindowManager;->mTaskToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_160

    .line 260
    iget-object v14, v9, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    iget-object v0, v9, Landroid/view/WindowlessWindowManager;->mHostInputToken:Landroid/os/IBinder;

    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v4, v10, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v5, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v6, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v7, v1, Landroid/view/WindowlessWindowManager$State;->mFocusGrantToken:Landroid/os/IBinder;

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    iget-object v8, v10, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v13, v9, Landroid/view/WindowlessWindowManager;->mTaskToken:Landroid/window/WindowContainerToken;
    :try_end_140
    .catch Landroid/os/RemoteException; {:try_start_11a .. :try_end_140} :catch_1a1

    .line 260
    move-object/from16 v29, v15

    .end local v15    # "sc":Landroid/view/SurfaceControl;
    .local v29, "sc":Landroid/view/SurfaceControl;
    move/from16 v15, p4

    move-object/from16 v16, v29

    move-object/from16 v17, p1

    move-object/from16 v18, v0

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v26, p6

    move/from16 v27, v8

    move-object/from16 v28, v13

    :try_start_15c
    invoke-interface/range {v14 .. v28}, Landroid/view/IWindowSession;->grantInputChannelWithTaskToken(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIIILandroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/window/WindowContainerToken;)V

    goto :goto_193

    .line 259
    .end local v29    # "sc":Landroid/view/SurfaceControl;
    .restart local v15    # "sc":Landroid/view/SurfaceControl;
    :cond_160
    move-object/from16 v29, v15

    .line 267
    .end local v15    # "sc":Landroid/view/SurfaceControl;
    .restart local v29    # "sc":Landroid/view/SurfaceControl;
    iget-object v14, v9, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    iget-object v0, v9, Landroid/view/WindowlessWindowManager;->mHostInputToken:Landroid/os/IBinder;

    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v4, v10, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v5, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v6, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v7, v1, Landroid/view/WindowlessWindowManager$State;->mFocusGrantToken:Landroid/os/IBinder;

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    .line 267
    move/from16 v15, p4

    move-object/from16 v16, v29

    move-object/from16 v17, p1

    move-object/from16 v18, v0

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v26, p6

    invoke-interface/range {v14 .. v26}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIIILandroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V

    .line 272
    :goto_193
    nop

    .line 273
    if-eqz p6, :cond_19b

    invoke-virtual/range {p6 .. p6}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_19c

    :cond_19b
    const/4 v0, 0x0

    :goto_19c
    iput-object v0, v1, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;
    :try_end_19e
    .catch Landroid/os/RemoteException; {:try_start_15c .. :try_end_19e} :catch_19f

    .line 276
    goto :goto_1ae

    .line 274
    :catch_19f
    move-exception v0

    goto :goto_1a4

    .end local v29    # "sc":Landroid/view/SurfaceControl;
    .restart local v15    # "sc":Landroid/view/SurfaceControl;
    :catch_1a1
    move-exception v0

    move-object/from16 v29, v15

    .line 275
    .end local v15    # "sc":Landroid/view/SurfaceControl;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v29    # "sc":Landroid/view/SurfaceControl;
    :goto_1a4
    const-string v2, "WindowlessWindowManager"

    const-string v3, "Failed to grant input to surface: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1ae

    .line 247
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v29    # "sc":Landroid/view/SurfaceControl;
    .restart local v15    # "sc":Landroid/view/SurfaceControl;
    :cond_1ac
    move-object/from16 v29, v15

    .line 279
    .end local v15    # "sc":Landroid/view/SurfaceControl;
    .restart local v29    # "sc":Landroid/view/SurfaceControl;
    :goto_1ae
    const/16 v0, 0xa

    .line 283
    .local v0, "res":I
    move/from16 v2, p4

    invoke-direct {v9, v2}, Landroid/view/WindowlessWindowManager;->isInTouchModeInternal(I)Z

    move-result v3

    if-eqz v3, :cond_1bb

    const/16 v3, 0xb

    goto :goto_1bd

    .line 284
    :cond_1bb
    const/16 v3, 0xa

    .line 283
    :goto_1bd
    return v3

    .line 238
    .end local v0    # "res":I
    .end local v29    # "sc":Landroid/view/SurfaceControl;
    .restart local v15    # "sc":Landroid/view/SurfaceControl;
    :catchall_1be
    move-exception v0

    move/from16 v2, p4

    move-object/from16 v29, v15

    .end local v15    # "sc":Landroid/view/SurfaceControl;
    .restart local v29    # "sc":Landroid/view/SurfaceControl;
    :goto_1c3
    :try_start_1c3
    monitor-exit p0
    :try_end_1c4
    .catchall {:try_start_1c3 .. :try_end_1c4} :catchall_1c5

    throw v0

    :catchall_1c5
    move-exception v0

    goto :goto_1c3
.end method

.method public addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I
    .registers 23
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "viewVisibility"    # I
    .param p4, "displayId"    # I
    .param p5, "userId"    # I
    .param p6, "requestedVisibleTypes"    # I
    .param p7, "outInputChannel"    # Landroid/view/InputChannel;
    .param p8, "outInsetsState"    # Landroid/view/InsetsState;
    .param p9, "outActiveControls"    # Landroid/view/InsetsSourceControl$Array;
    .param p10, "outAttachedFrame"    # Landroid/graphics/Rect;
    .param p11, "outSizeCompatScale"    # [F

    .line 296
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-virtual/range {v0 .. v10}, Landroid/view/WindowlessWindowManager;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    move-result v0

    return v0
.end method

.method public addToDisplayWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsState;Landroid/graphics/Rect;[F)I
    .registers 9
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "viewVisibility"    # I
    .param p4, "layerStackId"    # I
    .param p5, "insetsState"    # Landroid/view/InsetsState;
    .param p6, "outAttachedFrame"    # Landroid/graphics/Rect;
    .param p7, "outSizeCompatScale"    # [F

    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 686
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .registers 3
    .param p1, "dragToken"    # Landroid/os/IBinder;
    .param p2, "skipAnimation"    # Z

    .line 575
    return-void
.end method

.method public cancelDraw(Landroid/view/IWindow;)Z
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;

    .line 726
    const/4 v0, 0x0

    return v0
.end method

.method public clearTouchableRegion(Landroid/view/IWindow;)V
    .registers 4
    .param p1, "window"    # Landroid/view/IWindow;

    .line 503
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    .line 504
    return-void
.end method

.method public clearTspDeadzone(Landroid/view/IWindow;)V
    .registers 2
    .param p1, "window"    # Landroid/view/IWindow;

    .line 743
    return-void
.end method

.method public dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 2
    .param p1, "window"    # Landroid/view/IWindow;

    .line 579
    return-void
.end method

.method public dragRecipientExited(Landroid/view/IWindow;)V
    .registers 2
    .param p1, "window"    # Landroid/view/IWindow;

    .line 583
    return-void
.end method

.method public dropForAccessibility(Landroid/view/IWindow;II)Z
    .registers 5
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 705
    const/4 v0, 0x0

    return v0
.end method

.method public finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    .registers 9
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "postDrawTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "seqId"    # I

    .line 509
    monitor-enter p0

    .line 510
    :try_start_1
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    .line 511
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;

    .line 514
    .local v0, "c":Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_4e

    .line 515
    iget-object v1, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowlessWindowManager$State;

    .line 516
    .local v1, "state":Landroid/view/WindowlessWindowManager$State;
    if-eqz v1, :cond_4e

    .line 517
    const-string v2, "WindowlessWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishDrawing, seqId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hasCallback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_42

    const/4 v4, 0x1

    goto :goto_43

    :cond_42
    const/4 v4, 0x0

    :goto_43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .end local v1    # "state":Landroid/view/WindowlessWindowManager$State;
    :cond_4e
    if-nez v0, :cond_55

    .line 525
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 526
    monitor-exit p0

    return-void

    .line 528
    :cond_55
    invoke-interface {v0, p2}, Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;->finished(Landroid/view/SurfaceControl$Transaction;)V

    .line 529
    iget-object v1, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    nop

    .end local v0    # "c":Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;
    monitor-exit p0

    .line 531
    return-void

    .line 530
    :catchall_64
    move-exception v0

    monitor-exit p0
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_64

    throw v0
.end method

.method public finishMovingTask(Landroid/view/IWindow;)V
    .registers 2
    .param p1, "window"    # Landroid/view/IWindow;

    .line 637
    return-void
.end method

.method public generateDisplayHash(Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 5
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "boundsInWindow"    # Landroid/graphics/Rect;
    .param p3, "hashAlgorithm"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 697
    return-void
.end method

.method getFocusGrantToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 4
    .param p1, "window"    # Landroid/os/IBinder;

    .line 129
    monitor-enter p0

    .line 133
    :try_start_1
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 134
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mFocusGrantToken:Landroid/os/IBinder;

    monitor-exit p0

    return-object v0

    .line 136
    :cond_d
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    .line 137
    .local v0, "state":Landroid/view/WindowlessWindowManager$State;
    if-eqz v0, :cond_1b

    .line 138
    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mFocusGrantToken:Landroid/os/IBinder;

    monitor-exit p0

    return-object v1

    .line 140
    .end local v0    # "state":Landroid/view/WindowlessWindowManager$State;
    :cond_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_25

    .line 142
    const-string v0, "WindowlessWindowManager"

    const-string v1, "Failed to get focusGrantToken. Returning null token"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 140
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method protected getParentSurface(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/SurfaceControl;
    .registers 5
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 190
    monitor-enter p0

    .line 191
    :try_start_1
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 192
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mRootSurface:Landroid/view/SurfaceControl;

    monitor-exit p0

    return-object v0

    .line 194
    :cond_d
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    iget-object v0, v0, Landroid/view/WindowlessWindowManager$State;->mLeash:Landroid/view/SurfaceControl;

    monitor-exit p0

    return-object v0

    .line 195
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method protected getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;
    .registers 4
    .param p1, "window"    # Landroid/view/IWindow;

    .line 386
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    .line 387
    .local v0, "s":Landroid/view/WindowlessWindowManager$State;
    if-nez v0, :cond_10

    .line 388
    const/4 v1, 0x0

    return-object v1

    .line 390
    :cond_10
    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v1
.end method

.method protected getSurfaceControl(Landroid/view/View;)Landroid/view/SurfaceControl;
    .registers 4
    .param p1, "rootView"    # Landroid/view/View;

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 377
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_8

    .line 378
    const/4 v1, 0x0

    return-object v1

    .line 380
    :cond_8
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {p0, v1}, Landroid/view/WindowlessWindowManager;->getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method protected getWindowBinder(Landroid/view/View;)Landroid/os/IBinder;
    .registers 4
    .param p1, "rootView"    # Landroid/view/View;

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 367
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_8

    .line 368
    const/4 v1, 0x0

    return-object v1

    .line 370
    :cond_8
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .registers 3
    .param p1, "window"    # Landroid/os/IBinder;

    .line 623
    const/4 v0, 0x0

    return-object v0
.end method

.method public grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "callingWindow"    # Landroid/view/IWindow;
    .param p2, "targetInputToken"    # Landroid/os/IBinder;
    .param p3, "grantFocus"    # Z

    .line 692
    return-void
.end method

.method public grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIIILandroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    .registers 13
    .param p1, "displayId"    # I
    .param p2, "surface"    # Landroid/view/SurfaceControl;
    .param p3, "window"    # Landroid/view/IWindow;
    .param p4, "hostInputToken"    # Landroid/os/IBinder;
    .param p5, "flags"    # I
    .param p6, "privateFlags"    # I
    .param p7, "inputFeatures"    # I
    .param p8, "type"    # I
    .param p9, "windowToken"    # Landroid/os/IBinder;
    .param p10, "focusGrantToken"    # Landroid/os/IBinder;
    .param p11, "inputHandleName"    # Ljava/lang/String;
    .param p12, "outInputChannel"    # Landroid/view/InputChannel;

    .line 668
    return-void
.end method

.method public grantInputChannelWithTaskToken(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIIILandroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/window/WindowContainerToken;)V
    .registers 15
    .param p1, "displayId"    # I
    .param p2, "surface"    # Landroid/view/SurfaceControl;
    .param p3, "window"    # Landroid/view/IWindow;
    .param p4, "hostInputToken"    # Landroid/os/IBinder;
    .param p5, "flags"    # I
    .param p6, "privateFlags"    # I
    .param p7, "inputFeatures"    # I
    .param p8, "type"    # I
    .param p9, "windowToken"    # Landroid/os/IBinder;
    .param p10, "focusGrantToken"    # Landroid/os/IBinder;
    .param p11, "inputHandleName"    # Ljava/lang/String;
    .param p12, "outInputChannel"    # Landroid/view/InputChannel;
    .param p13, "surfaceInset"    # I
    .param p14, "taskToken"    # Landroid/window/WindowContainerToken;

    .line 676
    return-void
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "rectangle"    # Landroid/graphics/Rect;

    .line 619
    return-void
.end method

.method public outOfMemory(Landroid/view/IWindow;)Z
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;

    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method public performClipDataUpdate(Landroid/content/ClipData;)V
    .registers 2
    .param p1, "data"    # Landroid/content/ClipData;

    .line 159
    return-void
.end method

.method public performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .registers 11
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "flags"    # I
    .param p3, "surface"    # Landroid/view/SurfaceControl;
    .param p4, "touchSource"    # I
    .param p5, "touchX"    # F
    .param p6, "touchY"    # F
    .param p7, "thumbCenterX"    # F
    .param p8, "thumbCenterY"    # F
    .param p9, "data"    # Landroid/content/ClipData;

    .line 556
    const/4 v0, 0x0

    return-object v0
.end method

.method public performDragWithArea(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;Landroid/graphics/RectF;Landroid/graphics/Point;)Landroid/os/IBinder;
    .registers 13
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "flags"    # I
    .param p3, "surface"    # Landroid/view/SurfaceControl;
    .param p4, "touchSource"    # I
    .param p5, "touchX"    # F
    .param p6, "touchY"    # F
    .param p7, "thumbCenterX"    # F
    .param p8, "thumbCenterY"    # F
    .param p9, "data"    # Landroid/content/ClipData;
    .param p10, "selectedArea"    # Landroid/graphics/RectF;
    .param p11, "viewLocation"    # Landroid/graphics/Point;

    .line 565
    const/4 v0, 0x0

    return-object v0
.end method

.method public performHapticFeedback(IZ)Z
    .registers 5
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    .line 538
    :try_start_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(IZ)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 539
    :catch_7
    move-exception v0

    .line 540
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public performHapticFeedbackAsync(IZ)V
    .registers 3
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    .line 549
    invoke-virtual {p0, p1, p2}, Landroid/view/WindowlessWindowManager;->performHapticFeedback(IZ)Z

    .line 550
    return-void
.end method

.method public pokeDrawLock(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "window"    # Landroid/os/IBinder;

    .line 628
    return-void
.end method

.method public relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/os/Bundle;)I
    .registers 43
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "inAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "requestedWidth"    # I
    .param p4, "requestedHeight"    # I
    .param p5, "viewFlags"    # I
    .param p6, "flags"    # I
    .param p7, "seq"    # I
    .param p8, "lastSyncSeqId"    # I
    .param p9, "outFrames"    # Landroid/window/ClientWindowFrames;
    .param p10, "outMergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p11, "outSurfaceControl"    # Landroid/view/SurfaceControl;
    .param p12, "outInsetsState"    # Landroid/view/InsetsState;
    .param p13, "outActiveControls"    # Landroid/view/InsetsSourceControl$Array;
    .param p14, "outSyncSeqIdBundle"    # Landroid/os/Bundle;

    .line 401
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    monitor-enter p0

    .line 402
    :try_start_d
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    move-object v7, v0

    .line 403
    .local v7, "state":Landroid/view/WindowlessWindowManager$State;
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_147

    .line 404
    if-eqz v7, :cond_13f

    .line 408
    iget-object v15, v7, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 409
    .local v15, "sc":Landroid/view/SurfaceControl;
    iget-object v14, v7, Landroid/view/WindowlessWindowManager$State;->mLeash:Landroid/view/SurfaceControl;

    .line 410
    .local v14, "leash":Landroid/view/SurfaceControl;
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    move-object v13, v0

    .line 412
    .local v13, "t":Landroid/view/SurfaceControl$Transaction;
    const/4 v0, 0x0

    .line 413
    .local v0, "attrChanges":I
    if-eqz v2, :cond_33

    .line 414
    iget-object v8, v7, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    move/from16 v16, v0

    goto :goto_35

    .line 413
    :cond_33
    move/from16 v16, v0

    .line 416
    .end local v0    # "attrChanges":I
    .local v16, "attrChanges":I
    :goto_35
    iget-object v12, v7, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 418
    .local v12, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    move-object v11, v0

    .line 419
    .local v11, "frames":Landroid/window/ClientWindowFrames;
    iget-object v0, v7, Landroid/view/WindowlessWindowManager$State;->mAttachedFrame:Landroid/graphics/Rect;

    iput-object v0, v11, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 421
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mLayout:Landroid/view/WindowlessWindowLayout;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v12

    move/from16 v23, p3

    move/from16 v24, p4

    move-object/from16 v27, v11

    invoke-virtual/range {v17 .. v27}, Landroid/view/WindowlessWindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;)V

    .line 425
    iget-object v0, v7, Landroid/view/WindowlessWindowManager$State;->mFrame:Landroid/graphics/Rect;

    iget-object v8, v11, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 426
    if-eqz v3, :cond_7a

    .line 427
    iget-object v0, v3, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget-object v8, v11, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 428
    iget-object v0, v3, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    iget-object v8, v11, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 429
    iget-object v0, v3, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v8, v11, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 432
    :cond_7a
    iget-object v0, v11, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v8, v11, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {v13, v14, v0, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 434
    if-nez p5, :cond_a0

    .line 438
    invoke-direct {v1, v12}, Landroid/view/WindowlessWindowManager;->isOpaque(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    invoke-virtual {v13, v15, v0}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 439
    if-eqz v5, :cond_ac

    .line 440
    const-string v0, "WindowlessWindowManager.relayout"

    invoke-virtual {v5, v15, v0}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    goto :goto_ac

    .line 443
    :cond_a0
    invoke-virtual {v13, v14}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 444
    if-eqz v5, :cond_ac

    .line 445
    invoke-virtual/range {p11 .. p11}, Landroid/view/SurfaceControl;->release()V

    .line 449
    :cond_ac
    :goto_ac
    if-eqz v4, :cond_b3

    .line 450
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, v0, v0}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 453
    :cond_b3
    const v17, 0x10004

    .line 455
    .local v17, "inputChangeMask":I
    const v0, 0x10004

    and-int v0, v16, v0

    if-eqz v0, :cond_12d

    iget-object v0, v7, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    if-eqz v0, :cond_12d

    .line 457
    :try_start_c1
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    instance-of v8, v0, Landroid/view/IWindowSession$Stub;
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_c5} :catch_11d

    if-eqz v8, :cond_fe

    .line 458
    :try_start_c7
    iget-object v8, v7, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    iget v9, v7, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    new-instance v10, Landroid/view/SurfaceControl;

    const-string v2, "WindowlessWindowManager.relayout"

    invoke-direct {v10, v15, v2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iget v2, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v4, v12, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v5, v7, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    move-object/from16 v18, v0

    move-object/from16 v19, v8

    move/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v5

    invoke-interface/range {v18 .. v25}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    :try_end_ed
    .catch Landroid/os/RemoteException; {:try_start_c7 .. :try_end_ed} :catch_f5

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    goto :goto_11a

    .line 467
    :catch_f5
    move-exception v0

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    goto :goto_125

    .line 463
    :cond_fe
    :try_start_fe
    iget-object v9, v7, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    iget v10, v7, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    iget v2, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v4, v12, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v5, v7, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;
    :try_end_10a
    .catch Landroid/os/RemoteException; {:try_start_fe .. :try_end_10a} :catch_11d

    move-object v8, v0

    move-object/from16 v18, v11

    .end local v11    # "frames":Landroid/window/ClientWindowFrames;
    .local v18, "frames":Landroid/window/ClientWindowFrames;
    move-object v11, v15

    move-object/from16 v19, v12

    .end local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v19, "attrs":Landroid/view/WindowManager$LayoutParams;
    move v12, v2

    move-object v2, v13

    .end local v13    # "t":Landroid/view/SurfaceControl$Transaction;
    .local v2, "t":Landroid/view/SurfaceControl$Transaction;
    move v13, v3

    move-object v3, v14

    .end local v14    # "leash":Landroid/view/SurfaceControl;
    .local v3, "leash":Landroid/view/SurfaceControl;
    move v14, v4

    move-object v4, v15

    .end local v15    # "sc":Landroid/view/SurfaceControl;
    .local v4, "sc":Landroid/view/SurfaceControl;
    move-object v15, v5

    :try_start_117
    invoke-interface/range {v8 .. v15}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    :try_end_11a
    .catch Landroid/os/RemoteException; {:try_start_117 .. :try_end_11a} :catch_11b

    .line 469
    :goto_11a
    goto :goto_134

    .line 467
    :catch_11b
    move-exception v0

    goto :goto_125

    .end local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v3    # "leash":Landroid/view/SurfaceControl;
    .end local v4    # "sc":Landroid/view/SurfaceControl;
    .end local v18    # "frames":Landroid/window/ClientWindowFrames;
    .end local v19    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v11    # "frames":Landroid/window/ClientWindowFrames;
    .restart local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v13    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v14    # "leash":Landroid/view/SurfaceControl;
    .restart local v15    # "sc":Landroid/view/SurfaceControl;
    :catch_11d
    move-exception v0

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    .line 468
    .end local v11    # "frames":Landroid/window/ClientWindowFrames;
    .end local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v14    # "leash":Landroid/view/SurfaceControl;
    .end local v15    # "sc":Landroid/view/SurfaceControl;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v3    # "leash":Landroid/view/SurfaceControl;
    .restart local v4    # "sc":Landroid/view/SurfaceControl;
    .restart local v18    # "frames":Landroid/window/ClientWindowFrames;
    .restart local v19    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_125
    const-string v5, "WindowlessWindowManager"

    const-string v8, "Failed to update surface input channel: "

    invoke-static {v5, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_134

    .line 455
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v3    # "leash":Landroid/view/SurfaceControl;
    .end local v4    # "sc":Landroid/view/SurfaceControl;
    .end local v18    # "frames":Landroid/window/ClientWindowFrames;
    .end local v19    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v11    # "frames":Landroid/window/ClientWindowFrames;
    .restart local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v13    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v14    # "leash":Landroid/view/SurfaceControl;
    .restart local v15    # "sc":Landroid/view/SurfaceControl;
    :cond_12d
    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    .line 472
    .end local v11    # "frames":Landroid/window/ClientWindowFrames;
    .end local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v14    # "leash":Landroid/view/SurfaceControl;
    .end local v15    # "sc":Landroid/view/SurfaceControl;
    .restart local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v3    # "leash":Landroid/view/SurfaceControl;
    .restart local v4    # "sc":Landroid/view/SurfaceControl;
    .restart local v18    # "frames":Landroid/window/ClientWindowFrames;
    .restart local v19    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_134
    if-eqz v6, :cond_13d

    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mInsetsState:Landroid/view/InsetsState;

    if-eqz v0, :cond_13d

    .line 473
    invoke-virtual {v6, v0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    .line 476
    :cond_13d
    const/4 v0, 0x0

    return v0

    .line 405
    .end local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v3    # "leash":Landroid/view/SurfaceControl;
    .end local v4    # "sc":Landroid/view/SurfaceControl;
    .end local v16    # "attrChanges":I
    .end local v17    # "inputChangeMask":I
    .end local v18    # "frames":Landroid/window/ClientWindowFrames;
    .end local v19    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_13f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid window token (never added or removed already)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    .end local v7    # "state":Landroid/view/WindowlessWindowManager$State;
    :catchall_147
    move-exception v0

    :try_start_148
    monitor-exit p0
    :try_end_149
    .catchall {:try_start_148 .. :try_end_149} :catchall_147

    throw v0
.end method

.method public relayoutAsync(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIII)V
    .registers 24
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "inAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "requestedWidth"    # I
    .param p4, "requestedHeight"    # I
    .param p5, "viewFlags"    # I
    .param p6, "flags"    # I
    .param p7, "seq"    # I
    .param p8, "lastSyncSeqId"    # I

    .line 483
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v14}, Landroid/view/WindowlessWindowManager;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/os/Bundle;)I

    .line 487
    return-void
.end method

.method public remove(Landroid/view/IWindow;)V
    .registers 5
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mTaskToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_e

    .line 313
    iget-object v1, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowSession;->removeWithTaskToken(Landroid/view/IWindow;Landroid/window/WindowContainerToken;)V

    goto :goto_13

    .line 316
    :cond_e
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    invoke-interface {v0, p1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V

    .line 319
    :goto_13
    monitor-enter p0

    .line 320
    :try_start_14
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    .line 321
    .local v0, "state":Landroid/view/WindowlessWindowManager$State;
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_36

    .line 322
    if-eqz v0, :cond_2e

    .line 326
    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1}, Landroid/view/WindowlessWindowManager;->removeSurface(Landroid/view/SurfaceControl;)V

    .line 327
    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1}, Landroid/view/WindowlessWindowManager;->removeSurface(Landroid/view/SurfaceControl;)V

    .line 328
    return-void

    .line 323
    :cond_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid window token (never added or removed already)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    .end local v0    # "state":Landroid/view/WindowlessWindowManager$State;
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0
.end method

.method protected removeSurface(Landroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 339
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 340
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    :try_start_5
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    .line 341
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 342
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    return-void

    .line 339
    .restart local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :catchall_10
    move-exception v1

    :try_start_11
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw v1
.end method

.method public removeWithTaskToken(Landroid/view/IWindow;Landroid/window/WindowContainerToken;)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "taskToken"    # Landroid/window/WindowContainerToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    return-void
.end method

.method public reportDropResult(Landroid/view/IWindow;Z)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "consumed"    # Z

    .line 571
    return-void
.end method

.method public reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 661
    .local p2, "restrictedRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .local p3, "unrestrictedRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    return-void
.end method

.method public reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 656
    .local p2, "exclusionRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    return-void
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 9
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z

    .line 609
    const/4 v0, 0x0

    return-object v0
.end method

.method setCompletionCallback(Landroid/os/IBinder;Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;)V
    .registers 5
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;

    .line 150
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 151
    const-string v0, "WindowlessWindowManager"

    const-string v1, "Unsupported overlapping resizes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_f
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 125
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 126
    return-void
.end method

.method public setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 7
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "touchableInsets"    # I
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "touchableRegion"    # Landroid/graphics/Region;

    .line 498
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    .line 499
    return-void
.end method

.method public setInsetsState(Landroid/view/InsetsState;)V
    .registers 16
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 709
    iput-object p1, p0, Landroid/view/WindowlessWindowManager;->mInsetsState:Landroid/view/InsetsState;

    .line 710
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowlessWindowManager$State;

    .line 712
    .local v1, "s":Landroid/view/WindowlessWindowManager$State;
    :try_start_18
    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget-object v3, v1, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, v1, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 713
    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v3, v3, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 714
    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mTmpConfig:Landroid/util/MergedConfiguration;

    iget-object v3, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3, v3}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 715
    iget-object v4, v1, Landroid/view/WindowlessWindowManager$State;->mClient:Landroid/view/IWindow;

    iget-object v5, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/view/WindowlessWindowManager;->mTmpConfig:Landroid/util/MergedConfiguration;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, v1, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    const v12, 0x7fffffff

    const/4 v13, 0x0

    move-object v8, p1

    invoke-interface/range {v4 .. v13}, Landroid/view/IWindow;->resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZ)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_4d} :catch_4e

    .line 720
    goto :goto_4f

    .line 718
    :catch_4e
    move-exception v2

    .line 721
    .end local v1    # "s":Landroid/view/WindowlessWindowManager$State;
    :goto_4f
    goto :goto_c

    .line 722
    :cond_50
    return-void
.end method

.method public setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V
    .registers 3
    .param p1, "iWindow"    # Landroid/view/IWindow;
    .param p2, "callbackInfo"    # Landroid/window/OnBackInvokedCallbackInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 701
    return-void
.end method

.method public setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V
    .registers 3
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "shouldZoom"    # Z

    .line 596
    return-void
.end method

.method protected setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V
    .registers 13
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "region"    # Landroid/graphics/Region;

    .line 164
    monitor-enter p0

    .line 167
    :try_start_1
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    .line 168
    .local v0, "state":Landroid/view/WindowlessWindowManager$State;
    if-nez v0, :cond_d

    .line 169
    monitor-exit p0

    return-void

    .line 171
    :cond_d
    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 172
    monitor-exit p0

    return-void

    .line 174
    :cond_17
    if-eqz p2, :cond_1f

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    iput-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    .line 175
    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_4a

    if-eqz v1, :cond_48

    .line 177
    :try_start_26
    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    iget-object v3, v0, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    iget v4, v0, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    iget-object v5, v0, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v9, v0, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    invoke-interface/range {v2 .. v9}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_3f} :catch_40
    .catchall {:try_start_26 .. :try_end_3f} :catchall_4a

    .line 182
    goto :goto_48

    .line 180
    :catch_40
    move-exception v1

    .line 181
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_41
    const-string v2, "WindowlessWindowManager"

    const-string v3, "Failed to update surface input channel: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_48
    :goto_48
    monitor-exit p0

    .line 185
    return-void

    .line 184
    .end local v0    # "state":Landroid/view/WindowlessWindowManager$State;
    :catchall_4a
    move-exception v0

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public setTspDeadzone(Landroid/view/IWindow;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "deadzone"    # Landroid/os/Bundle;

    .line 739
    return-void
.end method

.method public setTspNoteMode(Landroid/view/IWindow;Z)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "isTspNoteMode"    # Z

    .line 749
    return-void
.end method

.method public setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    .registers 4
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 604
    return-void
.end method

.method public setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .registers 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "xstep"    # F
    .param p5, "ystep"    # F

    .line 588
    return-void
.end method

.method public setWallpaperZoomOut(Landroid/os/IBinder;F)V
    .registers 3
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "zoom"    # F

    .line 592
    return-void
.end method

.method public startMovingTask(Landroid/view/IWindow;FF)Z
    .registers 5
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "startX"    # F
    .param p3, "startY"    # F

    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public transferEmbeddedTouchFocusToHost(Landroid/view/IWindow;)Z
    .registers 4
    .param p1, "window"    # Landroid/view/IWindow;

    .line 731
    const-string v0, "WindowlessWindowManager"

    const-string v1, "Received request to transferEmbeddedTouch focus on WindowlessWindowManager we shouldn\'t get here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 v0, 0x0

    return v0
.end method

.method public updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    .registers 8
    .param p1, "channelToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "surface"    # Landroid/view/SurfaceControl;
    .param p4, "flags"    # I
    .param p5, "privateFlags"    # I
    .param p6, "inputFeatures"    # I
    .param p7, "region"    # Landroid/graphics/Region;

    .line 682
    return-void
.end method

.method public updatePointerIcon(Landroid/view/IWindow;)V
    .registers 2
    .param p1, "window"    # Landroid/view/IWindow;

    .line 641
    return-void
.end method

.method public updateRequestedVisibleTypes(Landroid/view/IWindow;I)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "requestedVisibleTypes"    # I

    .line 651
    return-void
.end method

.method public updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "region"    # Landroid/graphics/Region;

    .line 646
    return-void
.end method

.method public wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 614
    return-void
.end method

.method public wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "window"    # Landroid/os/IBinder;

    .line 600
    return-void
.end method
