.class public Lcom/samsung/android/media/imagecrop/NativeBuffer;
.super Ljava/lang/Object;
.source "NativeBuffer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native allocNativeBuffer(J)Ljava/nio/ByteBuffer;
.end method

.method static native freeNativeBuffer(Ljava/nio/ByteBuffer;)V
.end method
