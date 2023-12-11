.class Lcom/samsung/android/media/codec/SemSdrVideoConverter$1;
.super Ljava/lang/Object;
.source "SemSdrVideoConverter.java"

# interfaces
.implements Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/codec/SemSdrVideoConverter;->setProgressEventListener(Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/media/codec/SemSdrVideoConverter;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/codec/SemSdrVideoConverter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/media/codec/SemSdrVideoConverter;

    .line 157
    iput-object p1, p0, Lcom/samsung/android/media/codec/SemSdrVideoConverter$1;->this$0:Lcom/samsung/android/media/codec/SemSdrVideoConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemSdrVideoConverter$1;->this$0:Lcom/samsung/android/media/codec/SemSdrVideoConverter;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemSdrVideoConverter;->-$$Nest$fgetmProgressEventListener(Lcom/samsung/android/media/codec/SemSdrVideoConverter;)Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;->onCancelled()V

    .line 177
    return-void
.end method

.method public onCompleted()V
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemSdrVideoConverter$1;->this$0:Lcom/samsung/android/media/codec/SemSdrVideoConverter;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemSdrVideoConverter;->-$$Nest$fgetmProgressEventListener(Lcom/samsung/android/media/codec/SemSdrVideoConverter;)Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;->onCompleted()V

    .line 167
    return-void
.end method

.method public onFailed()V
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemSdrVideoConverter$1;->this$0:Lcom/samsung/android/media/codec/SemSdrVideoConverter;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemSdrVideoConverter;->-$$Nest$fgetmProgressEventListener(Lcom/samsung/android/media/codec/SemSdrVideoConverter;)Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;->onFailed()V

    .line 172
    return-void
.end method

.method public onStarted()V
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemSdrVideoConverter$1;->this$0:Lcom/samsung/android/media/codec/SemSdrVideoConverter;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemSdrVideoConverter;->-$$Nest$fgetmProgressEventListener(Lcom/samsung/android/media/codec/SemSdrVideoConverter;)Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;->onStarted()V

    .line 162
    return-void
.end method
