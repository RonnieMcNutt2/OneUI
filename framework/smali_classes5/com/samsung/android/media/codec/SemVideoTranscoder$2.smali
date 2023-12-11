.class Lcom/samsung/android/media/codec/SemVideoTranscoder$2;
.super Ljava/lang/Object;
.source "SemVideoTranscoder.java"

# interfaces
.implements Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/codec/SemVideoTranscoder;->setProgressListener(Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/media/codec/SemVideoTranscoder;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/codec/SemVideoTranscoder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/media/codec/SemVideoTranscoder;

    .line 327
    iput-object p1, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder$2;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder$2;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->-$$Nest$fgetmProgressListener(Lcom/samsung/android/media/codec/SemVideoTranscoder;)Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressListener;->onCompleted()V

    .line 342
    return-void
.end method

.method public onProgressChanged(I)V
    .registers 3
    .param p1, "progress"    # I

    .line 336
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder$2;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->-$$Nest$fgetmProgressListener(Lcom/samsung/android/media/codec/SemVideoTranscoder;)Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressListener;->onProgressChanged(I)V

    .line 337
    return-void
.end method

.method public onStarted()V
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder$2;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->-$$Nest$fgetmProgressListener(Lcom/samsung/android/media/codec/SemVideoTranscoder;)Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressListener;->onStarted()V

    .line 332
    return-void
.end method
