.class Lcom/samsung/android/allshare/ImageViewerImpl$1;
.super Lcom/samsung/android/allshare/AllShareEventHandler;
.source "ImageViewerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ImageViewerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/allshare/ImageViewerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/allshare/ImageViewerImpl;Landroid/os/Looper;)V
    .registers 6
    .param p1, "this$0"    # Lcom/samsung/android/allshare/ImageViewerImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 108
    iput-object p1, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->mStateMap:Ljava/util/HashMap;

    .line 112
    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_BUFFERING"

    sget-object v2, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->BUFFERING:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->mStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_NOMEDIA"

    sget-object v2, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->STOPPED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->mStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_PAUSED"

    sget-object v2, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->SHOWING:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->mStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_STOPPED"

    sget-object v2, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->STOPPED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->mStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_PLAYING"

    sget-object v2, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->SHOWING:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->mStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_CONTENT_CHANGED"

    sget-object v2, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->CONTENT_CHANGED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method private isContains(Ljava/lang/String;)Z
    .registers 8
    .param p1, "currentTrackUri"    # Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmPlayingContentUris(Lcom/samsung/android/allshare/ImageViewerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    if-nez p1, :cond_c

    goto :goto_46

    .line 213
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmPlayingContentUris(Lcom/samsung/android/allshare/ImageViewerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 214
    .local v2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 215
    .local v4, "uri":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 216
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmPlayingContentUris(Lcom/samsung/android/allshare/ImageViewerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 217
    const/4 v0, 0x1

    return v0

    .line 219
    .end local v4    # "uri":Ljava/lang/String;
    :cond_43
    goto :goto_26

    .line 220
    .end local v2    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_44
    goto :goto_16

    .line 222
    :cond_45
    return v1

    .line 211
    :cond_46
    :goto_46
    return v1
.end method

.method private notifyEvent(Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;Lcom/samsung/android/allshare/ERROR;)V
    .registers 6
    .param p1, "state"    # Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;
    .param p2, "error"    # Lcom/samsung/android/allshare/ERROR;

    .line 195
    const-string v0, "ImageViewerImpl"

    iget-object v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v1}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmEventListener(Lcom/samsung/android/allshare/ImageViewerImpl;)Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerEventListener;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 197
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEventHandler.notifyEvent to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v2}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmEventListener(Lcom/samsung/android/allshare/ImageViewerImpl;)Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerEventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 198
    invoke-virtual {p1}, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->enumToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] error["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/allshare/ERROR;->enumToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v1}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmEventListener(Lcom/samsung/android/allshare/ImageViewerImpl;)Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerEventListener;->onDeviceChanged(Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;Lcom/samsung/android/allshare/ERROR;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_52} :catch_5b
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_52} :catch_53

    goto :goto_62

    .line 203
    :catch_53
    move-exception v1

    .line 204
    .local v1, "err":Ljava/lang/Error;
    const-string/jumbo v2, "mEventHandler.notifyEvent Error"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_63

    .line 201
    .end local v1    # "err":Ljava/lang/Error;
    :catch_5b
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "mEventHandler.notifyEvent Exception"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 205
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_62
    nop

    .line 207
    :cond_63
    :goto_63
    return-void
.end method


# virtual methods
.method public handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .registers 10
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 124
    const-string v0, "ImageViewerImpl"

    :try_start_2
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    .line 125
    .local v1, "error":Lcom/samsung/android/allshare/ERROR;
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 126
    .local v2, "resBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->mStateMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    .line 127
    .local v3, "state":Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;
    const-string v4, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "errorStr":Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v5

    move-object v1, v5

    .line 131
    if-nez v3, :cond_24

    .line 132
    sget-object v5, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    move-object v3, v5

    .line 135
    :cond_24
    sget-object v5, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->CONTENT_CHANGED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    invoke-virtual {v3, v5}, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12f

    .line 136
    const-string v5, "BUNDLE_STRING_APP_ITEM_ID"

    .line 137
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "currentTrackUri":Ljava/lang/String;
    if-eqz v5, :cond_129

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3c

    goto/16 :goto_129

    .line 143
    :cond_3c
    iget-object v6, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmContentChangedNotified(Lcom/samsung/android/allshare/ImageViewerImpl;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 144
    const-string v6, "do not notify CONTENT_CHANGED event yet"

    invoke-static {v0, v6}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v6, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v6, v5}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fputmCurrentDMRUri(Lcom/samsung/android/allshare/ImageViewerImpl;Ljava/lang/String;)V

    .line 146
    return-void

    .line 149
    :cond_4f
    iget-object v6, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmCurrentDMRUri(Lcom/samsung/android/allshare/ImageViewerImpl;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7a

    iget-object v6, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmCurrentDMRUri(Lcom/samsung/android/allshare/ImageViewerImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "do not notify CONTENT_CHANGED event, mCurrentDMRUri is same as currentTrackUri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void

    .line 155
    :cond_7a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CONTENT_CHANGED, mCurrentDMRUri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v7}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmCurrentDMRUri(Lcom/samsung/android/allshare/ImageViewerImpl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  currentTrackUri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v6, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmCurrentDMRUri(Lcom/samsung/android/allshare/ImageViewerImpl;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_b3

    .line 158
    const-string v6, "do not notify CONTENT_CHANGED event, mCurrentDMRUri is null"

    invoke-static {v0, v6}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v6, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v6, v5}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fputmCurrentDMRUri(Lcom/samsung/android/allshare/ImageViewerImpl;Ljava/lang/String;)V

    .line 161
    return-void

    .line 163
    :cond_b3
    iget-object v6, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v6, v5}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fputmCurrentDMRUri(Lcom/samsung/android/allshare/ImageViewerImpl;Ljava/lang/String;)V

    .line 166
    iget-object v6, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmPlayingContentUris(Lcom/samsung/android/allshare/ImageViewerImpl;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_123

    iget-object v6, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmPlayingContentUris(Lcom/samsung/android/allshare/ImageViewerImpl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_cd

    goto :goto_123

    .line 172
    :cond_cd
    invoke-direct {p0, v5}, Lcom/samsung/android/allshare/ImageViewerImpl$1;->isContains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f0

    .line 173
    const-string/jumbo v6, "handleEventMessage: this is playing content."

    invoke-static {v0, v6}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "do not notify CONTENT_CHANGED event, this is my="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void

    .line 180
    :cond_f0
    iget-object v6, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fputmContentChangedNotified(Lcom/samsung/android/allshare/ImageViewerImpl;Z)V

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notify CONTENT_CHANGED event, mPlayingContentUris["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/allshare/ImageViewerImpl$1;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v7}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmPlayingContentUris(Lcom/samsung/android/allshare/ImageViewerImpl;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] vs currentTrackUri["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12f

    .line 167
    :cond_123
    :goto_123
    const-string v6, "do not notify CONTENT_CHANGED event, mPlayingContentUris is null"

    invoke-static {v0, v6}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void

    .line 139
    :cond_129
    :goto_129
    const-string v6, "do not notify CONTENT_CHANGED event, currentTrackUri is null"

    invoke-static {v0, v6}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void

    .line 185
    .end local v5    # "currentTrackUri":Ljava/lang/String;
    :cond_12f
    :goto_12f
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/allshare/ImageViewerImpl$1;->notifyEvent(Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;Lcom/samsung/android/allshare/ERROR;)V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_132} :catch_13b
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_132} :catch_133

    .end local v1    # "error":Lcom/samsung/android/allshare/ERROR;
    .end local v2    # "resBundle":Landroid/os/Bundle;
    .end local v3    # "state":Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;
    .end local v4    # "errorStr":Ljava/lang/String;
    goto :goto_142

    .line 189
    :catch_133
    move-exception v1

    .line 190
    .local v1, "err":Ljava/lang/Error;
    const-string/jumbo v2, "mEventHandler.handleEventMessage Error"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_143

    .line 187
    .end local v1    # "err":Ljava/lang/Error;
    :catch_13b
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "mEventHandler.handleEventMessage Fail to notify event"

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_142
    nop

    .line 192
    :goto_143
    return-void
.end method
