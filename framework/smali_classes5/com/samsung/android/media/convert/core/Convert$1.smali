.class Lcom/samsung/android/media/convert/core/Convert$1;
.super Ljava/lang/Thread;
.source "Convert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/convert/core/Convert;->convert()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/media/convert/core/Convert;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/convert/core/Convert;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/media/convert/core/Convert;

    .line 100
    iput-object p1, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 103
    const-string v0, "SemVideoConverter"

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    new-instance v2, Landroid/media/MediaMuxer;

    iget-object v3, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget-object v3, v3, Lcom/samsung/android/media/convert/core/Convert;->mOutputFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget v4, v4, Lcom/samsung/android/media/convert/core/Convert;->mOutputFormat:I

    invoke-direct {v2, v3, v4}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Lcom/samsung/android/media/convert/core/Convert;->mMuxer:Landroid/media/MediaMuxer;

    .line 104
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/android/media/convert/core/Convert;->mMuxerStarted:Z

    .line 105
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    const/4 v2, -0x1

    iput v2, v1, Lcom/samsung/android/media/convert/core/Convert;->mVideoTrackIndex:I

    .line 106
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iput v2, v1, Lcom/samsung/android/media/convert/core/Convert;->mAudioTrackIndex:I

    .line 108
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget-object v1, v1, Lcom/samsung/android/media/convert/core/Convert;->mConvertEventListener:Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;

    if-eqz v1, :cond_2e

    .line 109
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget-object v1, v1, Lcom/samsung/android/media/convert/core/Convert;->mConvertEventListener:Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;

    invoke-interface {v1}, Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;->onStarted()V

    .line 111
    :cond_2e
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    invoke-virtual {v1}, Lcom/samsung/android/media/convert/core/Convert;->startConverting()V

    .line 113
    const-string v1, "encoding finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_3b
    .catchall {:try_start_2 .. :try_end_38} :catchall_39

    goto :goto_44

    .line 120
    :catchall_39
    move-exception v0

    goto :goto_89

    .line 116
    :catch_3b
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    iget-object v2, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/android/media/convert/core/Convert;->mError:Z
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_39

    .line 120
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_44
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    invoke-virtual {v1}, Lcom/samsung/android/media/convert/core/Convert;->release()V

    .line 121
    nop

    .line 122
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget-object v1, v1, Lcom/samsung/android/media/convert/core/Convert;->mConvertEventListener:Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;

    if-eqz v1, :cond_88

    .line 123
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget-boolean v1, v1, Lcom/samsung/android/media/convert/core/Convert;->mError:Z

    if-eqz v1, :cond_63

    .line 125
    const-string v1, "Stopped by error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget-object v0, v0, Lcom/samsung/android/media/convert/core/Convert;->mConvertEventListener:Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;

    invoke-interface {v0}, Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;->onFailed()V

    goto :goto_83

    .line 128
    :cond_63
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget-boolean v1, v1, Lcom/samsung/android/media/convert/core/Convert;->mUserStop:Z

    if-nez v1, :cond_76

    .line 130
    const-string v1, "calling onCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget-object v0, v0, Lcom/samsung/android/media/convert/core/Convert;->mConvertEventListener:Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;

    invoke-interface {v0}, Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;->onCompleted()V

    goto :goto_83

    .line 134
    :cond_76
    const-string/jumbo v1, "user stopped. Not calling onCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    iget-object v0, v0, Lcom/samsung/android/media/convert/core/Convert;->mConvertEventListener:Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;

    invoke-interface {v0}, Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;->onCancelled()V

    .line 138
    :goto_83
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/media/convert/core/Convert;->mConvertEventListener:Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;

    .line 140
    :cond_88
    return-void

    .line 120
    :goto_89
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/Convert$1;->this$0:Lcom/samsung/android/media/convert/core/Convert;

    invoke-virtual {v1}, Lcom/samsung/android/media/convert/core/Convert;->release()V

    .line 121
    throw v0
.end method
