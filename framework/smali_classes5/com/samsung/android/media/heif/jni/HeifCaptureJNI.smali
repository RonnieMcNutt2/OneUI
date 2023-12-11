.class public Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;
.super Ljava/lang/Object;
.source "HeifCaptureJNI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HeifCaptureJNI"


# instance fields
.field private mNativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-string/jumbo v0, "heifcapture_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;->nativeSetup()V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setup : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;->mNativeHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeifCaptureJNI"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeSetup()V
.end method


# virtual methods
.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;->nativeFinalize()V

    .line 21
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 22
    return-void
.end method

.method public native nativeStart(Lcom/samsung/android/media/heif/jni/AMessageJNI;)I
.end method

.method public native nativeStop()I
.end method

.method public native nativeStore(Lcom/samsung/android/media/heif/jni/AMessageJNI;)I
.end method
