.class public Lcom/samsung/android/motionphoto/core/MPSplitter;
.super Ljava/lang/Object;
.source "MPSplitter.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-string v0, "apex_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native native_reserve_xmp_on_heic(Ljava/io/FileDescriptor;I)J
.end method

.method private native native_split(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/lang/String;)I
.end method


# virtual methods
.method public reserveXMPOnHeic(Ljava/io/FileDescriptor;I)J
    .registers 5
    .param p1, "inputFd"    # Ljava/io/FileDescriptor;
    .param p2, "reservedSize"    # I

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/motionphoto/core/MPSplitter;->native_reserve_xmp_on_heic(Ljava/io/FileDescriptor;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public split(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/lang/String;)I
    .registers 5
    .param p1, "videoFd"    # Ljava/io/FileDescriptor;
    .param p2, "imageFd"    # Ljava/io/FileDescriptor;
    .param p3, "params"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/motionphoto/core/MPSplitter;->native_split(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
