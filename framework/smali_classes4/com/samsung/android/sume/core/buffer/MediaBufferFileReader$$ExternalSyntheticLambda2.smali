.class public final synthetic Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;

    iput-object p2, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->lambda$read$2$com-samsung-android-sume-core-buffer-MediaBufferFileReader(Ljava/lang/String;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method
