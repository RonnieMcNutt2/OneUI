.class Landroid/media/AudioManager$AudioPlaybackCallbackInfo;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioPlaybackCallbackInfo"
.end annotation


# instance fields
.field final mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V
    .registers 3
    .param p1, "cb"    # Landroid/media/AudioManager$AudioPlaybackCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 5428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5429
    iput-object p1, p0, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 5430
    iput-object p2, p0, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mHandler:Landroid/os/Handler;

    .line 5431
    return-void
.end method
