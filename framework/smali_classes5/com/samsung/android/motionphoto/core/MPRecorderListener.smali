.class public Lcom/samsung/android/motionphoto/core/MPRecorderListener;
.super Ljava/lang/Object;
.source "MPRecorderListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-string v0, "apex_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->native_init()V

    .line 36
    const-class v0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->TAG:Ljava/lang/String;

    const-string v1, "MPRecorderListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    .local v1, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_19

    .line 50
    new-instance v0, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    invoke-direct {v0, v1}, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    goto :goto_2b

    .line 51
    :cond_19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_28

    .line 52
    new-instance v0, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    invoke-direct {v0, v1}, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    goto :goto_2b

    .line 54
    :cond_28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    .line 57
    :goto_2b
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->native_setup(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method private native native_finalize()V
.end method

.method private static native native_init()V
.end method

.method private native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 9
    .param p0, "listener_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "postEventFromNative: %d, %d, %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;

    .line 113
    .local v0, "l":Lcom/samsung/android/motionphoto/core/MPRecorderListener;
    if-nez v0, :cond_28

    .line 114
    return-void

    .line 117
    :cond_28
    iget-object v1, v0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    if-eqz v1, :cond_35

    .line 118
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 119
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    .end local v1    # "m":Landroid/os/Message;
    :cond_35
    return-void
.end method


# virtual methods
.method public release()V
    .registers 3

    .line 64
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 66
    iput-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    .line 68
    invoke-virtual {p0, v1}, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->setOnInfoListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnInfoListener;)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->setOnErrorListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnErrorListener;)V

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->native_finalize()V

    .line 72
    return-void
.end method

.method public setOnErrorListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnErrorListener;)V
    .registers 4
    .param p1, "onErrorListener"    # Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnErrorListener;

    .line 92
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOnErrorListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    if-eqz v0, :cond_f

    .line 94
    invoke-virtual {v0, p1}, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->setOnErrorListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnErrorListener;)V

    .line 96
    :cond_f
    return-void
.end method

.method public setOnInfoListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnInfoListener;)V
    .registers 4
    .param p1, "onInfoListener"    # Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnInfoListener;

    .line 104
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOnErrorListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    if-eqz v0, :cond_f

    .line 106
    invoke-virtual {v0, p1}, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->setOnInfoListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnInfoListener;)V

    .line 108
    :cond_f
    return-void
.end method

.method public setToken(I)V
    .registers 4
    .param p1, "token"    # I

    .line 80
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setToken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    if-eqz v0, :cond_f

    .line 82
    invoke-virtual {v0, p1}, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->setToken(I)V

    .line 84
    :cond_f
    return-void
.end method
