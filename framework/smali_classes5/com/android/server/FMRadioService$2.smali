.class Lcom/android/server/FMRadioService$2;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/FMRadioService;

    .line 390
    iput-object p1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** mVolumeEventReceiver: ACTION  - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 395
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_103

    .line 396
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/16 v3, 0xa

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 397
    .local v0, "stream":I
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 400
    .local v3, "volume":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  and volume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 402
    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v4

    if-eq v0, v4, :cond_67

    const/4 v4, 0x3

    if-ne v0, v4, :cond_103

    iget-object v4, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsOn(Lcom/android/server/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_103

    .line 404
    :cond_67
    iget-object v4, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetvolumeLock(Lcom/android/server/FMRadioService;)Z

    move-result v4

    if-nez v4, :cond_fb

    .line 406
    iget-object v4, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioManager(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 407
    .local v4, "current_stream_volume":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current_stream_volume: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 408
    if-ne v3, v4, :cond_b7

    iget-object v5, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v5}, Lcom/android/server/FMRadioService;->isDNDEnable()Z

    move-result v5

    if-nez v5, :cond_b7

    .line 409
    iget-object v5, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    iget-object v5, v5, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 410
    iget-object v5, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    iget-object v5, v5, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    :cond_b0
    iget-object v5, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    int-to-long v6, v3

    invoke-virtual {v5, v6, v7}, Lcom/android/server/FMRadioService;->setVolume(J)V

    goto :goto_fa

    .line 414
    :cond_b7
    iget-object v5, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioManager(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v5

    .line 415
    .local v5, "type":I
    iget-object v6, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v6}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmContext(Lcom/android/server/FMRadioService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "bluetooth_avc_mode"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v2, :cond_d5

    move v7, v2

    goto :goto_d6

    :cond_d5
    move v7, v1

    :goto_d6
    invoke-static {v6, v7}, Lcom/android/server/FMRadioService;->-$$Nest$fputmAvrcpMode(Lcom/android/server/FMRadioService;Z)V

    .line 416
    iget-object v6, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v6}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAvrcpMode(Lcom/android/server/FMRadioService;)Z

    move-result v6

    if-eqz v6, :cond_fa

    const/16 v6, 0x8

    if-ne v5, v6, :cond_fa

    sget-boolean v6, Lcom/android/server/FMRadioServiceFeature;->FEATURE_USE_CHIPSET_VOLUME:Z

    if-eqz v6, :cond_fa

    .line 417
    const-string/jumbo v6, "mAvrcpMode = true set chip volume 15"

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 418
    iget-object v6, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v6}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerNative(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v6

    const-wide/16 v7, 0xf

    invoke-virtual {v6, v7, v8}, Lcom/android/server/FMPlayerNativeBase;->setVolume(J)V

    .line 421
    .end local v4    # "current_stream_volume":I
    .end local v5    # "type":I
    :cond_fa
    :goto_fa
    goto :goto_103

    .line 422
    :cond_fb
    iget-object v4, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 428
    .end local v0    # "stream":I
    .end local v3    # "volume":I
    :cond_103
    :goto_103
    const-string v0, "com.sec.android.fm.volume_lock"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 429
    const-string v0, "Volume Locked..."

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v2}, Lcom/android/server/FMRadioService;->-$$Nest$fputvolumeLock(Lcom/android/server/FMRadioService;Z)V

    goto :goto_130

    .line 431
    :cond_11a
    const-string v0, "com.sec.android.fm.volume_unlock"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 432
    const-string v0, "Volume Unlocked..."

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v1}, Lcom/android/server/FMRadioService;->-$$Nest$fputvolumeLock(Lcom/android/server/FMRadioService;Z)V

    .line 435
    :cond_130
    :goto_130
    return-void
.end method
