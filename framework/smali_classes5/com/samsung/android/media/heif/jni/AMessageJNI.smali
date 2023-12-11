.class public Lcom/samsung/android/media/heif/jni/AMessageJNI;
.super Ljava/lang/Object;
.source "AMessageJNI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AMessageJNI"


# instance fields
.field private mNativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    const-string/jumbo v0, "heifcapture_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->nativeSetup()V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setup : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/media/heif/jni/AMessageJNI;->mNativeHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AMessageJNI"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
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

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->nativeFinalize()V

    .line 24
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 25
    return-void
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3
    .param p1, "paramString"    # Ljava/lang/String;

    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->nativeGetInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public native nativeGetInt(Ljava/lang/String;)I
.end method

.method public native nativeSetByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
.end method

.method public native nativeSetFileDescriptor(Ljava/lang/String;Ljava/io/FileDescriptor;)V
.end method

.method public native nativeSetInt(Ljava/lang/String;I)V
.end method

.method public native nativeSetMessage(Ljava/lang/String;Lcom/samsung/android/media/heif/jni/AMessageJNI;)V
.end method

.method public setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 33
    if-eqz p2, :cond_14

    .line 36
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->nativeSetByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 40
    return-void

    .line 37
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer is not allocated direct, please allocate direct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFileDescriptor(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 43
    if-eqz p2, :cond_6

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->nativeSetFileDescriptor(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 47
    return-void

    .line 44
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInt(Ljava/lang/String;I)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # I

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->nativeSetInt(Ljava/lang/String;I)V

    .line 29
    return-void
.end method

.method public setMessage(Ljava/lang/String;Lcom/samsung/android/media/heif/jni/AMessageJNI;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "msg"    # Lcom/samsung/android/media/heif/jni/AMessageJNI;

    .line 51
    if-eqz p2, :cond_6

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->nativeSetMessage(Ljava/lang/String;Lcom/samsung/android/media/heif/jni/AMessageJNI;)V

    .line 55
    return-void

    .line 52
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "msg cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
