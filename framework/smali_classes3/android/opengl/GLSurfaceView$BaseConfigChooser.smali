.class abstract Landroid/opengl/GLSurfaceView$BaseConfigChooser;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseConfigChooser"
.end annotation


# instance fields
.field protected mConfigSpec:[I

.field final synthetic this$0:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;[I)V
    .registers 3
    .param p2, "configSpec"    # [I

    .line 875
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 876
    invoke-direct {p0, p2}, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->filterConfigSpec([I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    .line 877
    return-void
.end method

.method private filterConfigSpec([I)[I
    .registers 7
    .param p1, "configSpec"    # [I

    .line 911
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-static {v0}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmEGLContextClientVersion(Landroid/opengl/GLSurfaceView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-static {v0}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmEGLContextClientVersion(Landroid/opengl/GLSurfaceView;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_13

    .line 912
    return-object p1

    .line 917
    :cond_13
    array-length v0, p1

    .line 918
    .local v0, "len":I
    add-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    .line 919
    .local v2, "newConfigSpec":[I
    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    add-int/lit8 v3, v0, -0x1

    const/16 v4, 0x3040

    aput v4, v2, v3

    .line 921
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-static {v3}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmEGLContextClientVersion(Landroid/opengl/GLSurfaceView;)I

    move-result v3

    if-ne v3, v1, :cond_30

    .line 922
    const/4 v1, 0x4

    aput v1, v2, v0

    goto :goto_34

    .line 924
    :cond_30
    const/16 v1, 0x40

    aput v1, v2, v0

    .line 926
    :goto_34
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x3038

    aput v3, v2, v1

    .line 927
    return-object v2
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 12
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 880
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 881
    .local v0, "num_config":[I
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 886
    const/4 v1, 0x0

    aget v7, v0, v1

    .line 888
    .local v7, "numConfigs":I
    if-lez v7, :cond_3b

    .line 893
    new-array v8, v7, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 894
    .local v8, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v8

    move v5, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 898
    invoke-virtual {p0, p1, p2, v8}, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    .line 899
    .local v1, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    if-eqz v1, :cond_2b

    .line 902
    return-object v1

    .line 900
    :cond_2b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No config chosen"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 896
    .end local v1    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "eglChooseConfig#2 failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 889
    .end local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    :cond_3b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No configs match configSpec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 883
    .end local v7    # "numConfigs":I
    :cond_43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "eglChooseConfig failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method abstract chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
