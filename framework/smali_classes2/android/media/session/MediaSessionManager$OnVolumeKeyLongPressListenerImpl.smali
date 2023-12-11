.class final Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;
.super Landroid/media/session/IOnVolumeKeyLongPressListener$Stub;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnVolumeKeyLongPressListenerImpl"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;)Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;->mListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;Landroid/os/Handler;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1331
    invoke-direct {p0}, Landroid/media/session/IOnVolumeKeyLongPressListener$Stub;-><init>()V

    .line 1332
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;->mListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;

    .line 1333
    iput-object p2, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;->mHandler:Landroid/os/Handler;

    .line 1334
    return-void
.end method


# virtual methods
.method public onVolumeKeyLongPress(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1338
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;->mListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_9

    goto :goto_12

    .line 1343
    :cond_9
    new-instance v1, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl$1;

    invoke-direct {v1, p0, p1}, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl$1;-><init>(Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1349
    return-void

    .line 1339
    :cond_12
    :goto_12
    const-string v0, "SessionManager"

    const-string v1, "Failed to call volume key long-press listener. Either mListener or mHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    return-void
.end method
