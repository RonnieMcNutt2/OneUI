.class Lcom/samsung/android/allshare/AVPlayerImpl$2;
.super Lcom/samsung/android/allshare/AllShareResponseHandler;
.source "AVPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/AVPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/allshare/AVPlayerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/allshare/AVPlayerImpl;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/allshare/AVPlayerImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 897
    iput-object p1, p0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private notifyPlaybackEvent(Landroid/os/Bundle;Lcom/samsung/android/allshare/ERROR;)V
    .registers 15
    .param p1, "resBundle"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/samsung/android/allshare/ERROR;

    .line 1094
    const-string v0, "BUNDLE_PARCELABLE_ITEM"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1095
    .local v0, "bundle":Landroid/os/Bundle;
    nop

    .line 1096
    const-string v1, "BUNDLE_LONG_CONTENT_INFO_STARTINGPOSITION"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1098
    .local v1, "contentInfoStartingPosition":J
    new-instance v3, Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    invoke-direct {v3}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;-><init>()V

    .line 1099
    .local v3, "cb":Lcom/samsung/android/allshare/media/ContentInfo$Builder;
    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->setStartingPosition(J)Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    move-result-object v3

    .line 1100
    invoke-virtual {v3}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->build()Lcom/samsung/android/allshare/media/ContentInfo;

    move-result-object v4

    .line 1102
    .local v4, "contentInfo":Lcom/samsung/android/allshare/media/ContentInfo;
    invoke-static {v0}, Lcom/samsung/android/allshare/ItemCreator;->fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;

    move-result-object v5

    .line 1104
    .local v5, "item":Lcom/samsung/android/allshare/Item;
    nop

    .line 1105
    const-string v6, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1106
    .local v6, "itemConstructor":Ljava/lang/String;
    if-eqz v6, :cond_48

    const-string v7, "WEB_CONTENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    if-eqz v4, :cond_48

    .line 1108
    new-instance v7, Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    invoke-direct {v7}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;-><init>()V

    .line 1109
    .local v7, "builder":Lcom/samsung/android/allshare/media/ContentInfo$Builder;
    invoke-virtual {v4}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v8, v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->setStartingPosition(J)Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    .line 1110
    invoke-virtual {v7}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->build()Lcom/samsung/android/allshare/media/ContentInfo;

    move-result-object v4

    .line 1113
    .end local v7    # "builder":Lcom/samsung/android/allshare/media/ContentInfo$Builder;
    :cond_48
    const-string v7, "AVPlayerImpl"

    if-nez v5, :cond_5e

    .line 1114
    const-string/jumbo v8, "notifyPlaybackEvent : item is null"

    invoke-static {v7, v8}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v7, p0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v7}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v7, v5, v4, v8}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_b7

    .line 1118
    :cond_5e
    const-string/jumbo v8, "notifyPlaybackEvent : "

    if-eqz v4, :cond_90

    .line 1120
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " position["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1121
    invoke-virtual {v4}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1120
    invoke-static {v7, v8}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ae

    .line 1123
    :cond_90
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    :goto_ae
    iget-object v7, p0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v7}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v7

    invoke-interface {v7, v5, v4, p2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 1127
    :goto_b7
    return-void
.end method


# virtual methods
.method public handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .registers 20
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 901
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v1

    .line 902
    .local v1, "actionID":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 903
    .local v2, "resBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_3f0

    if-nez v2, :cond_10

    goto/16 :goto_3f0

    .line 910
    :cond_10
    const-string v3, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v3

    .line 913
    .local v3, "error":Lcom/samsung/android/allshare/ERROR;
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_LOCAL_CONTENS_URI"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY"

    const-string v7, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_URI"

    const-string v8, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_LOCAL_CONTENS_FILEPATH"

    const-string v9, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_LOCAL_CONTENS_FILEPATH_WITH_METADATA"

    const/4 v10, 0x0

    if-nez v5, :cond_43

    .line 915
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 916
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 917
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 918
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 919
    :cond_43
    sget-object v5, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v3, v5}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 920
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5, v10}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fputmContentChangedNotified(Lcom/samsung/android/allshare/AVPlayerImpl;Z)V

    goto :goto_5a

    .line 922
    :cond_51
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmPlayingContentUris(Lcom/samsung/android/allshare/AVPlayerImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 926
    :cond_5a
    :goto_5a
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v5

    const/4 v11, 0x4

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/16 v16, 0x1

    const/16 v17, -0x1

    if-eqz v5, :cond_166

    .line 927
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_3f2

    :cond_70
    goto/16 :goto_f3

    :sswitch_72
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_WEB_CONTENTS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    move v4, v11

    goto/16 :goto_f5

    :sswitch_7d
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_PLAY_POSITION"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/16 v4, 0xa

    goto/16 :goto_f5

    :sswitch_89
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_PLAYER_STATE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/16 v4, 0xc

    goto/16 :goto_f5

    :sswitch_95
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PAUSE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/16 v4, 0x8

    goto :goto_f5

    :sswitch_a0
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_STOP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    move v4, v12

    goto :goto_f5

    :sswitch_aa
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_SEEK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/4 v4, 0x7

    goto :goto_f5

    :sswitch_b4
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    move v4, v10

    goto :goto_f5

    :sswitch_bc
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    move v4, v13

    goto :goto_f5

    :sswitch_c4
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/4 v4, 0x3

    goto :goto_f5

    :sswitch_cc
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/4 v4, 0x2

    goto :goto_f5

    :sswitch_d4
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_MEDIA_INFO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/16 v4, 0xb

    goto :goto_f5

    :sswitch_df
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_RESUME"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/16 v4, 0x9

    goto :goto_f5

    :sswitch_ea
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    move/from16 v4, v16

    goto :goto_f5

    :goto_f3
    move/from16 v4, v17

    :goto_f5
    const-string v5, "BUNDLE_LONG_POSITION"

    packed-switch v4, :pswitch_data_428

    goto :goto_166

    .line 964
    :pswitch_fb
    const-string v4, "BUNDLE_STRING_AV_PLAER_STATE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 966
    .local v4, "state":Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    move-result-object v5

    .line 968
    .local v5, "playerState":Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    iget-object v6, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetStateResponseReceived(Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_166

    .line 956
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "playerState":Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    :pswitch_10f
    const/4 v4, 0x0

    .line 958
    .local v4, "mediaInfo":Lcom/samsung/android/allshare/media/MediaInfo;
    sget-object v5, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v5, v3}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11e

    .line 959
    new-instance v5, Lcom/samsung/android/allshare/MediaInfoImpl;

    invoke-direct {v5, v2}, Lcom/samsung/android/allshare/MediaInfoImpl;-><init>(Landroid/os/Bundle;)V

    move-object v4, v5

    .line 961
    :cond_11e
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetMediaInfoResponseReceived(Lcom/samsung/android/allshare/media/MediaInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 962
    goto :goto_166

    .line 951
    .end local v4    # "mediaInfo":Lcom/samsung/android/allshare/media/MediaInfo;
    :pswitch_128
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 952
    .local v4, "position":J
    iget-object v6, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v6

    invoke-interface {v6, v4, v5, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetPlayPositionResponseReceived(JLcom/samsung/android/allshare/ERROR;)V

    .line 953
    goto :goto_166

    .line 948
    .end local v4    # "position":J
    :pswitch_136
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onResumeResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 949
    goto :goto_166

    .line 945
    :pswitch_140
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPauseResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 946
    goto :goto_166

    .line 940
    :pswitch_14a
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 941
    .restart local v4    # "position":J
    iget-object v6, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v6

    invoke-interface {v6, v4, v5, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onSeekResponseReceived(JLcom/samsung/android/allshare/ERROR;)V

    .line 942
    goto :goto_166

    .line 937
    .end local v4    # "position":J
    :pswitch_158
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 938
    goto :goto_166

    .line 934
    :pswitch_162
    invoke-direct {v0, v2, v3}, Lcom/samsung/android/allshare/AVPlayerImpl$2;->notifyPlaybackEvent(Landroid/os/Bundle;Lcom/samsung/android/allshare/ERROR;)V

    .line 935
    nop

    .line 973
    :cond_166
    :goto_166
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v4

    if-eqz v4, :cond_1e1

    .line 974
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_446

    :cond_175
    goto :goto_19f

    :sswitch_176
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_SET_VOLUME"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_175

    move/from16 v4, v16

    goto :goto_1a1

    :sswitch_181
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_MUTE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_175

    const/4 v4, 0x2

    goto :goto_1a1

    :sswitch_18b
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_VOLUME"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_175

    move v4, v10

    goto :goto_1a1

    :sswitch_195
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_SET_MUTE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_175

    const/4 v4, 0x3

    goto :goto_1a1

    :goto_19f
    move/from16 v4, v17

    :goto_1a1
    const-string v5, "BUNDLE_BOOLEAN_MUTE"

    const-string v6, "BUNDLE_INT_VOLUME"

    packed-switch v4, :pswitch_data_458

    goto :goto_1e1

    .line 991
    :pswitch_1a9
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 992
    .local v4, "onoff":Z
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetMuteResponseReceived(ZLcom/samsung/android/allshare/ERROR;)V

    .line 993
    goto :goto_1e1

    .line 986
    .end local v4    # "onoff":Z
    :pswitch_1b7
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 987
    .restart local v4    # "onoff":Z
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onGetMuteResponseReceived(ZLcom/samsung/android/allshare/ERROR;)V

    .line 988
    goto :goto_1e1

    .line 981
    .end local v4    # "onoff":Z
    :pswitch_1c5
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 982
    .local v4, "level":I
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetVolumeResponseReceived(ILcom/samsung/android/allshare/ERROR;)V

    .line 983
    goto :goto_1e1

    .line 976
    .end local v4    # "level":I
    :pswitch_1d3
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 977
    .restart local v4    # "level":I
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onGetVolumeResponseReceived(ILcom/samsung/android/allshare/ERROR;)V

    .line 978
    nop

    .line 999
    .end local v4    # "level":I
    :cond_1e1
    :goto_1e1
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    const-string v5, "AVPlayerImpl"

    if-eqz v4, :cond_34e

    .line 1000
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_464

    :cond_1f2
    goto :goto_239

    :sswitch_1f3
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_SET_ASPECT_RATIO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f2

    move v11, v10

    goto :goto_23b

    :sswitch_1fd
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_GET_CAPTION_STATE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f2

    move v11, v12

    goto :goto_23b

    :sswitch_207
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_ZOOM_360_VIEW"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f2

    const/4 v11, 0x3

    goto :goto_23b

    :sswitch_211
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_GET_ASPECT_RATIO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f2

    move/from16 v11, v16

    goto :goto_23b

    :sswitch_21c
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_CONTROL_CAPTION"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f2

    move v11, v13

    goto :goto_23b

    :sswitch_226
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_ORIGIN_360_VIEW"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f2

    goto :goto_23b

    :sswitch_22f
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_MOVE_360_VIEW"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f2

    const/4 v11, 0x2

    goto :goto_23b

    :goto_239
    move/from16 v11, v17

    :goto_23b
    packed-switch v11, :pswitch_data_482

    goto/16 :goto_34e

    .line 1024
    :pswitch_240
    nop

    .line 1025
    const-string v4, "BUNDLE_STRING_CAPTION_CAPTIONS"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1026
    .local v4, "captions":Ljava/lang/String;
    nop

    .line 1027
    const-string v6, "BUNDLE_STRING_CAPTION_ENABLEDCAPTIONS"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1028
    .local v6, "enabledCaptions":Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/allshare/Caption;->parseCaption(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 1029
    .local v7, "tempCaptionsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    invoke-static {v6}, Lcom/samsung/android/allshare/Caption;->parseCaption(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1030
    .local v8, "tempEnabledCaptionsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    .local v9, "captionsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1032
    .local v11, "enabledCaptionsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    if-eqz v7, :cond_2a6

    .line 1033
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_266
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2a6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/allshare/Caption;

    .line 1034
    .local v13, "caption":Lcom/samsung/android/allshare/Caption;
    iget-object v10, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-virtual {v13}, Lcom/samsung/android/allshare/Caption;->getCaptionUri()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/samsung/android/allshare/AVPlayerImpl;->getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1035
    .local v10, "captionUri":Ljava/lang/String;
    if-eqz v10, :cond_287

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_287

    .line 1036
    invoke-virtual {v13, v10}, Lcom/samsung/android/allshare/Caption;->setCaptionUri(Ljava/lang/String;)V

    .line 1038
    :cond_287
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACTION_AV_PLAYER_GET_CAPTION_STATE : [available caption]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1041
    invoke-virtual {v13}, Lcom/samsung/android/allshare/Caption;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1039
    invoke-static {v5, v14}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    .end local v10    # "captionUri":Ljava/lang/String;
    .end local v13    # "caption":Lcom/samsung/android/allshare/Caption;
    const/4 v10, 0x0

    goto :goto_266

    .line 1044
    :cond_2a6
    if-eqz v8, :cond_2eb

    .line 1045
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2ac
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2eb

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/allshare/Caption;

    .line 1046
    .local v12, "caption":Lcom/samsung/android/allshare/Caption;
    iget-object v13, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Caption;->getCaptionUri()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/allshare/AVPlayerImpl;->getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1047
    .local v13, "captionUri":Ljava/lang/String;
    if-eqz v13, :cond_2cd

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2cd

    .line 1048
    invoke-virtual {v12, v13}, Lcom/samsung/android/allshare/Caption;->setCaptionUri(Ljava/lang/String;)V

    .line 1050
    :cond_2cd
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACTION_AV_PLAYER_GET_CAPTION_STATE : [enabled caption]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1053
    invoke-virtual {v12}, Lcom/samsung/android/allshare/Caption;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1051
    invoke-static {v5, v14}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    .end local v12    # "caption":Lcom/samsung/android/allshare/Caption;
    .end local v13    # "captionUri":Ljava/lang/String;
    goto :goto_2ac

    .line 1056
    :cond_2eb
    iget-object v10, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v10}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v10

    invoke-interface {v10, v9, v11, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onCaptionStateResponseReceived(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_34e

    .line 1021
    .end local v4    # "captions":Ljava/lang/String;
    .end local v6    # "enabledCaptions":Ljava/lang/String;
    .end local v7    # "tempCaptionsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    .end local v8    # "tempEnabledCaptionsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    .end local v9    # "captionsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    .end local v11    # "enabledCaptionsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    :pswitch_2f5
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onControlCaptionResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1022
    goto :goto_34e

    .line 1018
    :pswitch_2ff
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onReset360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1019
    goto :goto_34e

    .line 1015
    :pswitch_309
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onZoom360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1016
    goto :goto_34e

    .line 1012
    :pswitch_313
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onMove360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1013
    goto :goto_34e

    .line 1005
    :pswitch_31d
    nop

    .line 1006
    const-string v4, "BUNDLE_STRING_ASPECT_RATIO"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1007
    .local v4, "aspectRatio":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_AV_PLAYER_GET_ASPECT_RATIO : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v6, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v6

    invoke-interface {v6, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onAspectRatioStateResponseReceived(Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    .line 1010
    goto :goto_34e

    .line 1002
    .end local v4    # "aspectRatio":Ljava/lang/String;
    :pswitch_344
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onSetAspectRatioResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1003
    nop

    .line 1063
    :cond_34e
    :goto_34e
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerWHAResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    move-result-object v4

    if-eqz v4, :cond_3ef

    .line 1064
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_494

    :cond_35d
    goto :goto_387

    :sswitch_35e
    const-string v4, "com.sec.android.allshare.action.ACTION_WHA_CREATE_PARTY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35d

    move/from16 v10, v16

    goto :goto_389

    :sswitch_369
    const-string v4, "com.sec.android.allshare.action.ACTION_WHA_GET_DEVICE_STATUS_INFO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35d

    const/4 v10, 0x0

    goto :goto_389

    :sswitch_373
    const-string v4, "com.sec.android.allshare.action.ACTION_WHA_LEAVE_PARTY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35d

    const/4 v10, 0x3

    goto :goto_389

    :sswitch_37d
    const-string v4, "com.sec.android.allshare.action.ACTION_WHA_JOIN_PARTY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35d

    const/4 v10, 0x2

    goto :goto_389

    :goto_387
    move/from16 v10, v17

    :goto_389
    packed-switch v10, :pswitch_data_4a6

    goto :goto_3ef

    .line 1085
    :pswitch_38d
    const-string v4, "ACTION_WHA_LEAVE_PARTY"

    invoke-static {v5, v4}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerWHAResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;->onLeaveWHAParty(Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_3ef

    .line 1081
    :pswitch_39c
    const-string v4, "ACTION_WHA_JOIN_PARTY"

    invoke-static {v5, v4}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerWHAResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;->onJoinWHAParty(Lcom/samsung/android/allshare/ERROR;)V

    .line 1083
    goto :goto_3ef

    .line 1075
    :pswitch_3ab
    const-string v4, "BUNDLE_STRING_WHA_PARTY_ID"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1077
    .local v4, "partyId":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_WHA_CREATE_PARTY : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerWHAResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;->onCreateWHAParty(Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    .line 1079
    goto :goto_3ef

    .line 1066
    .end local v4    # "partyId":Ljava/lang/String;
    :pswitch_3d1
    const-string v4, "ACTION_WHA_GET_DEVICE_STATUS_INFO"

    invoke-static {v5, v4}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const/4 v4, 0x0

    .line 1069
    .local v4, "whaDeviceInfo":Lcom/samsung/android/allshare/WHADeviceInfo;
    sget-object v5, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v5, v3}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e5

    .line 1070
    new-instance v5, Lcom/samsung/android/allshare/WHADeviceInfo;

    invoke-direct {v5, v2}, Lcom/samsung/android/allshare/WHADeviceInfo;-><init>(Landroid/os/Bundle;)V

    move-object v4, v5

    .line 1072
    :cond_3e5
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerWHAResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;->onGetWHADeviceStatusInfo(Lcom/samsung/android/allshare/WHADeviceInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 1073
    nop

    .line 1091
    .end local v4    # "whaDeviceInfo":Lcom/samsung/android/allshare/WHADeviceInfo;
    :cond_3ef
    :goto_3ef
    return-void

    .line 904
    .end local v3    # "error":Lcom/samsung/android/allshare/ERROR;
    :cond_3f0
    :goto_3f0
    return-void

    nop

    :sswitch_data_3f2
    .sparse-switch
        -0x7d8f058e -> :sswitch_ea
        -0x46bcb307 -> :sswitch_df
        -0x30970672 -> :sswitch_d4
        -0x7b77c7c -> :sswitch_cc
        -0x795bdc5 -> :sswitch_c4
        -0x6493073 -> :sswitch_bc
        0x124dd700 -> :sswitch_b4
        0x124f1a44 -> :sswitch_aa
        0x124f53ce -> :sswitch_a0
        0x3768538a -> :sswitch_95
        0x3f7c3598 -> :sswitch_89
        0x5da5b1b8 -> :sswitch_7d
        0x65f3faa4 -> :sswitch_72
    .end sparse-switch

    :pswitch_data_428
    .packed-switch 0x0
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_158
        :pswitch_14a
        :pswitch_140
        :pswitch_136
        :pswitch_128
        :pswitch_10f
        :pswitch_fb
    .end packed-switch

    :sswitch_data_446
    .sparse-switch
        -0x317ce26e -> :sswitch_195
        -0x2a3b9921 -> :sswitch_18b
        -0x100afce2 -> :sswitch_181
        0x4935b453 -> :sswitch_176
    .end sparse-switch

    :pswitch_data_458
    .packed-switch 0x0
        :pswitch_1d3
        :pswitch_1c5
        :pswitch_1b7
        :pswitch_1a9
    .end packed-switch

    :sswitch_data_464
    .sparse-switch
        -0x79fd1c27 -> :sswitch_22f
        -0x6ce3b8dc -> :sswitch_226
        -0x665f3a88 -> :sswitch_21c
        -0x3d761e87 -> :sswitch_211
        0x32b4de17 -> :sswitch_207
        0x379faf23 -> :sswitch_1fd
        0x556047ed -> :sswitch_1f3
    .end sparse-switch

    :pswitch_data_482
    .packed-switch 0x0
        :pswitch_344
        :pswitch_31d
        :pswitch_313
        :pswitch_309
        :pswitch_2ff
        :pswitch_2f5
        :pswitch_240
    .end packed-switch

    :sswitch_data_494
    .sparse-switch
        -0x16b2ba48 -> :sswitch_37d
        0x372ea5b7 -> :sswitch_373
        0x52ede3e2 -> :sswitch_369
        0x71c0ea4a -> :sswitch_35e
    .end sparse-switch

    :pswitch_data_4a6
    .packed-switch 0x0
        :pswitch_3d1
        :pswitch_3ab
        :pswitch_39c
        :pswitch_38d
    .end packed-switch
.end method
