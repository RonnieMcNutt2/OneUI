.class Lcom/samsung/android/allshare/SlideShowPlayerImpl$1;
.super Lcom/samsung/android/allshare/AllShareResponseHandler;
.source "SlideShowPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/SlideShowPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/allshare/SlideShowPlayerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/allshare/SlideShowPlayerImpl;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/allshare/SlideShowPlayerImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 69
    iput-object p1, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$1;->this$0:Lcom/samsung/android/allshare/SlideShowPlayerImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .registers 12
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 73
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "actionID":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 76
    .local v1, "resBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_ff

    if-nez v1, :cond_e

    goto/16 :goto_ff

    .line 79
    :cond_e
    sget-object v2, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    .line 80
    .local v2, "error":Lcom/samsung/android/allshare/ERROR;
    const-string v3, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "errorStr":Ljava/lang/String;
    if-eqz v3, :cond_1c

    .line 82
    invoke-static {v3}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v2

    .line 84
    :cond_1c
    const-string v4, "com.sec.android.allshare.action.ACTION_SLIDESHOW_PLAYER_START"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "BUNDLE_INT_SLIDESHOW_BGM_VOLUME"

    if-eqz v4, :cond_3d

    .line 86
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 88
    .local v4, "interval":I
    iget-object v5, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$1;->this$0:Lcom/samsung/android/allshare/SlideShowPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/SlideShowPlayerImpl;)Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    move-result-object v5

    if-eqz v5, :cond_3b

    .line 89
    iget-object v5, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$1;->this$0:Lcom/samsung/android/allshare/SlideShowPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/SlideShowPlayerImpl;)Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;->onStartResponseReceived(ILcom/samsung/android/allshare/ERROR;)V

    .line 91
    .end local v4    # "interval":I
    :cond_3b
    goto/16 :goto_fe

    :cond_3d
    const-string v4, "com.sec.android.allshare.action.ACTION_SLIDESHOW_PLAYER_STOP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 93
    iget-object v4, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$1;->this$0:Lcom/samsung/android/allshare/SlideShowPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/SlideShowPlayerImpl;)Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    move-result-object v4

    if-eqz v4, :cond_fe

    .line 94
    iget-object v4, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$1;->this$0:Lcom/samsung/android/allshare/SlideShowPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/SlideShowPlayerImpl;)Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;->onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    goto/16 :goto_fe

    .line 96
    :cond_58
    const-string v4, "com.sec.android.allshare.action.ACTION_SLIDESHOW_PLAYER_SETLIST"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 98
    nop

    .line 99
    const-string v4, "BUNDLE_STRING_SLIDESHOW_ALBUM_TITLE"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "albumTitle":Ljava/lang/String;
    nop

    .line 101
    const-string v5, "BUNDLE_PARCELABLE_ARRAYLIST_SLIDESHOW_IMAGE_CONTENT_URI"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 103
    .local v5, "slideUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v6, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    if-eqz v5, :cond_8d

    .line 106
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_79
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 107
    .local v8, "itemBundle":Landroid/os/Bundle;
    invoke-static {v8}, Lcom/samsung/android/allshare/ItemCreator;->fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;

    move-result-object v9

    .line 108
    .local v9, "item":Lcom/samsung/android/allshare/Item;
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v8    # "itemBundle":Landroid/os/Bundle;
    .end local v9    # "item":Lcom/samsung/android/allshare/Item;
    goto :goto_79

    .line 112
    :cond_8d
    iget-object v7, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$1;->this$0:Lcom/samsung/android/allshare/SlideShowPlayerImpl;

    invoke-static {v7}, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/SlideShowPlayerImpl;)Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    move-result-object v7

    if-eqz v7, :cond_9e

    .line 113
    iget-object v7, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$1;->this$0:Lcom/samsung/android/allshare/SlideShowPlayerImpl;

    invoke-static {v7}, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/SlideShowPlayerImpl;)Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    move-result-object v7

    invoke-interface {v7, v4, v6, v2}, Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;->onSetListResponseReceived(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/ERROR;)V

    .line 115
    .end local v4    # "albumTitle":Ljava/lang/String;
    .end local v5    # "slideUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v6    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    :cond_9e
    goto :goto_fe

    :cond_9f
    const-string v4, "com.sec.android.allshare.action.ACTION_SLIDESHOW_PLAYER_SETBGMLIST"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_df

    .line 117
    nop

    .line 118
    const-string v4, "BUNDLE_PARCELABLE_ARRAYLIST_SLIDESHOW_AUDIO_CONTENT_URI"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 120
    .local v4, "bgmUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v5, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    if-eqz v4, :cond_cd

    .line 123
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_cd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 124
    .local v7, "itemBundle":Landroid/os/Bundle;
    invoke-static {v7}, Lcom/samsung/android/allshare/ItemCreator;->fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;

    move-result-object v8

    .line 125
    .local v8, "item":Lcom/samsung/android/allshare/Item;
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v7    # "itemBundle":Landroid/os/Bundle;
    .end local v8    # "item":Lcom/samsung/android/allshare/Item;
    goto :goto_b9

    .line 129
    :cond_cd
    iget-object v6, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$1;->this$0:Lcom/samsung/android/allshare/SlideShowPlayerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/SlideShowPlayerImpl;)Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    move-result-object v6

    if-eqz v6, :cond_fd

    .line 130
    iget-object v6, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$1;->this$0:Lcom/samsung/android/allshare/SlideShowPlayerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/SlideShowPlayerImpl;)Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    move-result-object v6

    invoke-interface {v6, v5, v2}, Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;->onSetBGMListResponseReceived(Ljava/util/ArrayList;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_fd

    .line 132
    .end local v4    # "bgmUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v5    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    :cond_df
    const-string v4, "com.sec.android.allshare.action.ACTION_SLIDESHOW_PLAYER_SETBGMVOLUME"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fd

    .line 134
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 136
    .local v4, "level":I
    iget-object v5, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$1;->this$0:Lcom/samsung/android/allshare/SlideShowPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/SlideShowPlayerImpl;)Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    move-result-object v5

    if-eqz v5, :cond_fe

    .line 137
    iget-object v5, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$1;->this$0:Lcom/samsung/android/allshare/SlideShowPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/SlideShowPlayerImpl;)Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;->onSetBGMVolumeResponseReceived(ILcom/samsung/android/allshare/ERROR;)V

    goto :goto_fe

    .line 132
    .end local v4    # "level":I
    :cond_fd
    :goto_fd
    nop

    .line 139
    :cond_fe
    :goto_fe
    return-void

    .line 77
    .end local v2    # "error":Lcom/samsung/android/allshare/ERROR;
    .end local v3    # "errorStr":Ljava/lang/String;
    :cond_ff
    :goto_ff
    return-void
.end method
