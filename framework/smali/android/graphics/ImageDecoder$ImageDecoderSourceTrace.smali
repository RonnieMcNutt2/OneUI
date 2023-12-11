.class final Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;
.super Ljava/lang/Object;
.source "ImageDecoder.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImageDecoderSourceTrace"
.end annotation


# instance fields
.field private final mResourceTracingEnabled:Z


# direct methods
.method constructor <init>(Landroid/graphics/ImageDecoder;)V
    .registers 5
    .param p1, "decoder"    # Landroid/graphics/ImageDecoder;

    .line 2407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2408
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iput-boolean v2, p0, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->mResourceTracingEnabled:Z

    .line 2409
    if-eqz v2, :cond_14

    .line 2410
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->-$$Nest$smdescribeDecoderForTrace(Landroid/graphics/ImageDecoder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2412
    :cond_14
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 2416
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->mResourceTracingEnabled:Z

    if-eqz v0, :cond_9

    .line 2417
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2419
    :cond_9
    return-void
.end method
