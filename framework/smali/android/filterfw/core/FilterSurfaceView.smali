.class public Landroid/filterfw/core/FilterSurfaceView;
.super Landroid/view/SurfaceView;
.source "FilterSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static STATE_ALLOCATED:I

.field private static STATE_CREATED:I

.field private static STATE_INITIALIZED:I


# instance fields
.field private mFormat:I

.field private mGLEnv:Landroid/filterfw/core/GLEnvironment;

.field private mHeight:I

.field private mListener:Landroid/view/SurfaceHolder$Callback;

.field private mState:I

.field private mSurfaceId:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const/4 v0, 0x0

    sput v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_ALLOCATED:I

    .line 31
    const/4 v0, 0x1

    sput v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_CREATED:I

    .line 32
    const/4 v0, 0x2

    sput v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_INITIALIZED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 34
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_ALLOCATED:I

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    .line 44
    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_ALLOCATED:I

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    .line 49
    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 50
    return-void
.end method

.method private registerSurface()V
    .registers 4

    .line 145
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->registerSurface(Landroid/view/Surface;)I

    move-result v0

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    .line 146
    if-ltz v0, :cond_13

    .line 150
    return-void

    .line 147
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not register Surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in FilterSurfaceView!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unregisterSurface()V
    .registers 3

    .line 152
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    if-eqz v0, :cond_b

    iget v1, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    if-lez v1, :cond_b

    .line 153
    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 155
    :cond_b
    return-void
.end method


# virtual methods
.method public declared-synchronized bindToListener(Landroid/view/SurfaceHolder$Callback;Landroid/filterfw/core/GLEnvironment;)V
    .registers 8
    .param p1, "listener"    # Landroid/view/SurfaceHolder$Callback;
    .param p2, "glEnv"    # Landroid/filterfw/core/GLEnvironment;

    monitor-enter p0

    .line 54
    if-eqz p1, :cond_6f

    .line 56
    :try_start_3
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_35

    if-ne v0, p1, :cond_a

    goto :goto_35

    .line 57
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to bind filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to SurfaceView with another open filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attached already!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    .end local p0    # "this":Landroid/filterfw/core/FilterSurfaceView;
    :cond_35
    :goto_35
    iput-object p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    .line 66
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    if-eqz v0, :cond_42

    if-eq v0, p2, :cond_42

    .line 67
    iget v1, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 69
    :cond_42
    iput-object p2, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    .line 72
    iget v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    sget v1, Landroid/filterfw/core/FilterSurfaceView;->STATE_CREATED:I

    if-lt v0, v1, :cond_6b

    .line 75
    invoke-direct {p0}, Landroid/filterfw/core/FilterSurfaceView;->registerSurface()V

    .line 78
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 81
    iget v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    sget v1, Landroid/filterfw/core/FilterSurfaceView;->STATE_INITIALIZED:I

    if-ne v0, v1, :cond_6b

    .line 82
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget v2, p0, Landroid/filterfw/core/FilterSurfaceView;->mFormat:I

    iget v3, p0, Landroid/filterfw/core/FilterSurfaceView;->mWidth:I

    iget v4, p0, Landroid/filterfw/core/FilterSurfaceView;->mHeight:I

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_6d

    .line 85
    :cond_6b
    monitor-exit p0

    return-void

    .line 53
    .end local p1    # "listener":Landroid/view/SurfaceHolder$Callback;
    .end local p2    # "glEnv":Landroid/filterfw/core/GLEnvironment;
    :catchall_6d
    move-exception p1

    goto :goto_77

    .line 55
    .restart local p1    # "listener":Landroid/view/SurfaceHolder$Callback;
    .restart local p2    # "glEnv":Landroid/filterfw/core/GLEnvironment;
    :cond_6f
    :try_start_6f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempting to bind null filter to SurfaceView!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_6d

    .line 53
    .end local p1    # "listener":Landroid/view/SurfaceHolder$Callback;
    .end local p2    # "glEnv":Landroid/filterfw/core/GLEnvironment;
    :goto_77
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getGLEnv()Landroid/filterfw/core/GLEnvironment;
    .registers 2

    monitor-enter p0

    .line 96
    :try_start_1
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 96
    .end local p0    # "this":Landroid/filterfw/core/FilterSurfaceView;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSurfaceId()I
    .registers 2

    monitor-enter p0

    .line 92
    :try_start_1
    iget v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 92
    .end local p0    # "this":Landroid/filterfw/core/FilterSurfaceView;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    monitor-enter p0

    .line 120
    :try_start_1
    iput p2, p0, Landroid/filterfw/core/FilterSurfaceView;->mFormat:I

    .line 121
    iput p3, p0, Landroid/filterfw/core/FilterSurfaceView;->mWidth:I

    .line 122
    iput p4, p0, Landroid/filterfw/core/FilterSurfaceView;->mHeight:I

    .line 123
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_INITIALIZED:I

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    .line 126
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_12

    .line 127
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 129
    .end local p0    # "this":Landroid/filterfw/core/FilterSurfaceView;
    :cond_12
    monitor-exit p0

    return-void

    .line 119
    .end local p1    # "holder":Landroid/view/SurfaceHolder;
    .end local p2    # "format":I
    .end local p3    # "width":I
    .end local p4    # "height":I
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    monitor-enter p0

    .line 101
    :try_start_1
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_CREATED:I

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    .line 104
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    if-eqz v0, :cond_c

    .line 105
    invoke-direct {p0}, Landroid/filterfw/core/FilterSurfaceView;->registerSurface()V

    .line 109
    .end local p0    # "this":Landroid/filterfw/core/FilterSurfaceView;
    :cond_c
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_13

    .line 110
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 112
    :cond_13
    monitor-exit p0

    return-void

    .line 100
    .end local p1    # "holder":Landroid/view/SurfaceHolder;
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    monitor-enter p0

    .line 133
    :try_start_1
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_ALLOCATED:I

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    .line 136
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_c

    .line 137
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 141
    .end local p0    # "this":Landroid/filterfw/core/FilterSurfaceView;
    :cond_c
    invoke-direct {p0}, Landroid/filterfw/core/FilterSurfaceView;->unregisterSurface()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 142
    monitor-exit p0

    return-void

    .line 132
    .end local p1    # "holder":Landroid/view/SurfaceHolder;
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unbind()V
    .registers 2

    monitor-enter p0

    .line 88
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 89
    monitor-exit p0

    return-void

    .line 87
    .end local p0    # "this":Landroid/filterfw/core/FilterSurfaceView;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
