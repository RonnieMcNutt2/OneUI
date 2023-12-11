.class Landroid/media/AudioManager$NativeEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
    .registers 6
    .param p2, "callback"    # Landroid/media/AudioDeviceCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 9818
    iput-object p1, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9821
    if-eqz p3, :cond_c

    .line 9822
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    goto :goto_10

    .line 9825
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_c
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 9829
    .restart local v0    # "looper":Landroid/os/Looper;
    :goto_10
    if-eqz v0, :cond_1a

    .line 9831
    new-instance v1, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;-><init>(Landroid/media/AudioManager$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;)V

    iput-object v1, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_1d

    .line 9855
    :cond_1a
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 9857
    :goto_1d
    return-void
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .registers 2

    .line 9860
    iget-object v0, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
