.class final Lcom/samsung/android/allshare/PlaylistPlayerImpl;
.super Lcom/samsung/android/allshare/media/PlaylistPlayer;
.source "PlaylistPlayerImpl.java"


# static fields
.field private static final MIN_TRACK_NUMBER:I = 0x1

.field private static final TAG_CLASS:Ljava/lang/String; = "PlaylistPlayerImpl"


# instance fields
.field private mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

.field mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

.field mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

.field mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

.field private mFilePath:Ljava/lang/String;

.field private mIsAutoSlideShowMode:Z

.field private mIsNavigateInPause:Z

.field private mIsSeekable:Z

.field private mIsSubscribed:Z

.field private mPlaylist:Lcom/samsung/android/allshare/media/Playlist;

.field private mPlaylistPlayerEventListener:Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;

.field private mPlaylistPlayerResponseListener:Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

.field private mTrackNumber:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmPlaylistPlayerEventListener(Lcom/samsung/android/allshare/PlaylistPlayerImpl;)Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerEventListener:Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlaylistPlayerResponseListener(Lcom/samsung/android/allshare/PlaylistPlayerImpl;)Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    return-object p0
.end method

.method constructor <init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V
    .registers 6
    .param p1, "connector"    # Lcom/samsung/android/allshare/IAllShareConnector;
    .param p2, "deviceImpl"    # Lcom/samsung/android/allshare/DeviceImpl;

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/allshare/media/PlaylistPlayer;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 51
    iput-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    .line 55
    iput-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerEventListener:Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;

    .line 57
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylist:Lcom/samsung/android/allshare/media/Playlist;

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    .line 63
    iput-boolean v1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mIsSeekable:Z

    .line 65
    iput-boolean v1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mIsNavigateInPause:Z

    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mIsAutoSlideShowMode:Z

    .line 69
    iput-boolean v1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mIsSubscribed:Z

    .line 71
    iput-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$1;

    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/PlaylistPlayerImpl$1;-><init>(Lcom/samsung/android/allshare/PlaylistPlayerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 169
    new-instance v0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$2;

    .line 170
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/PlaylistPlayerImpl$2;-><init>(Lcom/samsung/android/allshare/PlaylistPlayerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    .line 74
    const-string v0, "PlaylistPlayerImpl"

    if-nez p1, :cond_3f

    .line 75
    const-string v1, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void

    .line 79
    :cond_3f
    iput-object p2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 80
    iput-object p1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 82
    invoke-virtual {p2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 83
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_4f

    .line 84
    const-string v2, "Cannot get bundle from deviceImpl"

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void

    .line 88
    :cond_4f
    const-string v0, "BUNDLE_BOOLEAN_SEEKABLE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mIsSeekable:Z

    .line 89
    const-string v0, "BUNDLE_BOOLEAN_NAVIGATE_IN_PAUSE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mIsNavigateInPause:Z

    .line 90
    const-string v0, "BUNDLE_BOOLEAN_AUTO_SLIDE_SHOW"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mIsAutoSlideShowMode:Z

    .line 91
    return-void
.end method

.method private createFilePathForZoom(I)V
    .registers 6
    .param p1, "trackNumber"    # I

    .line 372
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylist:Lcom/samsung/android/allshare/media/Playlist;

    if-eqz v0, :cond_27

    if-gez p1, :cond_7

    goto :goto_27

    .line 374
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/Playlist;->getPlaylist()Ljava/util/ArrayList;

    move-result-object v0

    .line 376
    .local v0, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->getCursorFromSelectedItem(Ljava/util/ArrayList;I)Landroid/database/Cursor;

    move-result-object v1

    .line 378
    .local v1, "cur":Landroid/database/Cursor;
    if-nez v1, :cond_12

    .line 379
    return-void

    .line 380
    :cond_12
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 381
    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 382
    .local v2, "idx":I
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    .line 383
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 384
    iput p1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    .line 385
    return-void

    .line 373
    .end local v0    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    .end local v1    # "cur":Landroid/database/Cursor;
    .end local v2    # "idx":I
    :cond_27
    :goto_27
    return-void
.end method

.method private getCursorFromSelectedItem(Ljava/util/ArrayList;I)Landroid/database/Cursor;
    .registers 14
    .param p2, "trackNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 388
    .local p1, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_44

    .line 391
    :cond_c
    add-int/lit8 v0, p2, -0x1

    .line 393
    .local v0, "itemIndex":I
    if-ltz v0, :cond_41

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_17

    goto :goto_41

    .line 398
    :cond_17
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/Item;

    .line 399
    .local v2, "item":Lcom/samsung/android/allshare/Item;
    if-nez v2, :cond_22

    .line 400
    iput-object v1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    .line 401
    return-object v1

    .line 403
    :cond_22
    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v9

    .line 404
    .local v9, "uri":Landroid/net/Uri;
    if-nez v9, :cond_2b

    .line 405
    iput-object v1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    .line 406
    return-object v1

    .line 408
    :cond_2b
    iget-object v3, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v3}, Lcom/samsung/android/allshare/IAllShareConnector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 409
    .local v10, "resolver":Landroid/content/ContentResolver;
    if-nez v10, :cond_36

    .line 410
    iput-object v1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    .line 411
    return-object v1

    .line 414
    :cond_36
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v10

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 415
    .local v1, "cur":Landroid/database/Cursor;
    return-object v1

    .line 394
    .end local v1    # "cur":Landroid/database/Cursor;
    .end local v2    # "item":Lcom/samsung/android/allshare/Item;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    :cond_41
    :goto_41
    iput-object v1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    .line 395
    return-object v1

    .line 389
    .end local v0    # "itemIndex":I
    :cond_44
    :goto_44
    return-object v1
.end method

.method private registerFilePath(Lcom/samsung/android/allshare/media/Playlist;Ljava/util/ArrayList;I)V
    .registers 8
    .param p1, "playlist"    # Lcom/samsung/android/allshare/media/Playlist;
    .param p3, "trackNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/media/Playlist;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;I)V"
        }
    .end annotation

    .line 329
    .local p2, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    iput-object p1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylist:Lcom/samsung/android/allshare/media/Playlist;

    .line 330
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    .line 332
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->getCursorFromSelectedItem(Ljava/util/ArrayList;I)Landroid/database/Cursor;

    move-result-object v0

    .line 333
    .local v0, "cur":Landroid/database/Cursor;
    if-nez v0, :cond_f

    .line 334
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    .line 335
    return-void

    .line 337
    :cond_f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 338
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 339
    .local v1, "idx":I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    .line 340
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Play:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PlaylistPlayerImpl"

    invoke-static {v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method


# virtual methods
.method getCurrentFilePath()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayPosition()V
    .registers 5

    .line 521
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_30

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_30

    .line 527
    :cond_b
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 528
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_REQUEST_PLAY_POSITION"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 529
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 531
    .local v1, "req_bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 534
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 535
    return-void

    .line 522
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    const/4 v1, -0x1

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onGetPlayPositionResponseReceived(ILcom/samsung/android/allshare/ERROR;)V

    .line 524
    return-void
.end method

.method public isSeekable()Z
    .registers 2

    .line 568
    iget-boolean v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mIsSeekable:Z

    return v0
.end method

.method public isSupportAudio()Z
    .registers 9

    .line 646
    const/4 v0, 0x0

    .line 647
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4c

    .line 650
    :cond_d
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 651
    .local v1, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v3, "com.sec.android.allshare.action.ACTION_AV_PLAYER_IS_SUPPORT_AUDIO_PLAYLIST_PLAYER_SYNC"

    invoke-virtual {v1, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 653
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 654
    .local v3, "req_bundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BUNDLE_STRING_ID"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-virtual {v1, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 657
    iget-object v4, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v4, v1}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v4

    .line 658
    .local v4, "res_msg":Lcom/sec/android/allshare/iface/CVMessage;
    if-nez v4, :cond_33

    .line 659
    return v2

    .line 661
    :cond_33
    invoke-virtual {v4}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 663
    .local v5, "res_bundle":Landroid/os/Bundle;
    if-nez v5, :cond_3a

    .line 664
    return v2

    .line 667
    :cond_3a
    :try_start_3a
    const-string v2, "BUNDLE_BOOLEAN_SUPPORT_AUDIO_PLAYLIST_PLAYER"

    .line 668
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_40} :catch_42

    move v0, v2

    .line 671
    goto :goto_4b

    .line 669
    :catch_42
    move-exception v2

    .line 670
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "PlaylistPlayerImpl"

    const-string/jumbo v7, "isSupportAudio Exception"

    invoke-static {v6, v7, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 672
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4b
    return v0

    .line 648
    .end local v1    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v3    # "req_bundle":Landroid/os/Bundle;
    .end local v4    # "res_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v5    # "res_bundle":Landroid/os/Bundle;
    :cond_4c
    :goto_4c
    return v2
.end method

.method public isSupportImage()Z
    .registers 9

    .line 615
    const/4 v0, 0x0

    .line 616
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4c

    .line 619
    :cond_d
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 620
    .local v1, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v3, "com.sec.android.allshare.action.ACTION_AV_PLAYER_IS_SUPPORT_IMAGE_PLAYLIST_PLAYER_SYNC"

    invoke-virtual {v1, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 622
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 623
    .local v3, "req_bundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BUNDLE_STRING_ID"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-virtual {v1, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 626
    iget-object v4, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v4, v1}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v4

    .line 627
    .local v4, "res_msg":Lcom/sec/android/allshare/iface/CVMessage;
    if-nez v4, :cond_33

    .line 628
    return v2

    .line 630
    :cond_33
    invoke-virtual {v4}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 632
    .local v5, "res_bundle":Landroid/os/Bundle;
    if-nez v5, :cond_3a

    .line 633
    return v2

    .line 636
    :cond_3a
    :try_start_3a
    const-string v2, "BUNDLE_BOOLEAN_SUPPORT_PLAYLIST_PLAYER"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_40} :catch_42

    move v0, v2

    .line 639
    goto :goto_4b

    .line 637
    :catch_42
    move-exception v2

    .line 638
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "PlaylistPlayerImpl"

    const-string/jumbo v7, "isSupportImage Exception"

    invoke-static {v6, v7, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 640
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4b
    return v0

    .line 617
    .end local v1    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v3    # "req_bundle":Landroid/os/Bundle;
    .end local v4    # "res_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v5    # "res_bundle":Landroid/os/Bundle;
    :cond_4c
    :goto_4c
    return v2
.end method

.method public isSupportNavigateInPause()Z
    .registers 2

    .line 605
    iget-boolean v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mIsNavigateInPause:Z

    return v0
.end method

.method public isSupportSetAutoFlipMode()Z
    .registers 2

    .line 610
    iget-boolean v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mIsAutoSlideShowMode:Z

    return v0
.end method

.method public isSupportVideo()Z
    .registers 9

    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4c

    .line 682
    :cond_d
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 683
    .local v1, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v3, "com.sec.android.allshare.action.ACTION_AV_PLAYER_IS_SUPPORT_VIDEO_PLAYLIST_PLAYER_SYNC"

    invoke-virtual {v1, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 685
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 686
    .local v3, "req_bundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BUNDLE_STRING_ID"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-virtual {v1, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 689
    iget-object v4, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v4, v1}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v4

    .line 690
    .local v4, "res_msg":Lcom/sec/android/allshare/iface/CVMessage;
    if-nez v4, :cond_33

    .line 691
    return v2

    .line 693
    :cond_33
    invoke-virtual {v4}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 695
    .local v5, "res_bundle":Landroid/os/Bundle;
    if-nez v5, :cond_3a

    .line 696
    return v2

    .line 699
    :cond_3a
    :try_start_3a
    const-string v2, "BUNDLE_BOOLEAN_SUPPORT_VIDEO_PLAYLIST_PLAYER"

    .line 700
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_40} :catch_42

    move v0, v2

    .line 703
    goto :goto_4b

    .line 701
    :catch_42
    move-exception v2

    .line 702
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "PlaylistPlayerImpl"

    const-string/jumbo v7, "isSupportVideo Exception"

    invoke-static {v6, v7, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 704
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4b
    return v0

    .line 680
    .end local v1    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v3    # "req_bundle":Landroid/os/Bundle;
    .end local v4    # "res_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v5    # "res_bundle":Landroid/os/Bundle;
    :cond_4c
    :goto_4c
    return v2
.end method

.method public next()V
    .registers 5

    .line 444
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_58

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_58

    .line 449
    :cond_b
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 450
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_NEXT"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 451
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 453
    .local v1, "req_bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 456
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 458
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylist:Lcom/samsung/android/allshare/media/Playlist;

    if-eqz v2, :cond_57

    .line 459
    iget v3, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    .line 460
    invoke-virtual {v2}, Lcom/samsung/android/allshare/media/Playlist;->getPlaylist()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v3, v2, :cond_50

    .line 461
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylist:Lcom/samsung/android/allshare/media/Playlist;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/media/Playlist;->getPlaylist()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_52

    :cond_50
    iget v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    :goto_52
    iput v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    .line 463
    invoke-direct {p0, v2}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->createFilePathForZoom(I)V

    .line 465
    :cond_57
    return-void

    .line 445
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onNextResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 446
    return-void
.end method

.method public pause()V
    .registers 5

    .line 487
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_30

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_30

    .line 492
    :cond_b
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 493
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_PAUSE"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 494
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 495
    .local v1, "req_bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 498
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 499
    return-void

    .line 488
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPauseResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 489
    return-void
.end method

.method public play(Lcom/samsung/android/allshare/media/Playlist;I)V
    .registers 10
    .param p1, "playlist"    # Lcom/samsung/android/allshare/media/Playlist;
    .param p2, "trackNumber"    # I

    .line 267
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_a2

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_a2

    .line 273
    :cond_c
    const/4 v0, 0x0

    if-nez p1, :cond_19

    .line 274
    iget-object v1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v1, p1, p2, v2}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/media/Playlist;ILcom/samsung/android/allshare/ERROR;)V

    .line 276
    iput-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    .line 277
    return-void

    .line 280
    :cond_19
    const/4 v1, 0x1

    if-ge p2, v1, :cond_26

    .line 281
    iget-object v1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v1, p1, p2, v2}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/media/Playlist;ILcom/samsung/android/allshare/ERROR;)V

    .line 283
    iput-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    .line 284
    return-void

    .line 287
    :cond_26
    invoke-virtual {p1}, Lcom/samsung/android/allshare/media/Playlist;->getPlaylist()Ljava/util/ArrayList;

    move-result-object v1

    .line 288
    .local v1, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    if-eqz v1, :cond_98

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_98

    .line 295
    :cond_33
    iput-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v0, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v2, ""

    .line 300
    .local v2, "mimeType":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Item;

    .line 301
    .local v4, "item":Lcom/samsung/android/allshare/Item;
    if-eqz v4, :cond_60

    .line 302
    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item;->getMimetype()Ljava/lang/String;

    move-result-object v2

    .line 304
    instance-of v5, v4, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v5, :cond_60

    .line 305
    move-object v5, v4

    check-cast v5, Lcom/sec/android/allshare/iface/IBundleHolder;

    invoke-interface {v5}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .end local v4    # "item":Lcom/samsung/android/allshare/Item;
    :cond_60
    goto :goto_40

    .line 310
    :cond_61
    new-instance v3, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v3}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 311
    .local v3, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v4, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_PLAY"

    invoke-virtual {v3, v4}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 313
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 314
    .local v4, "req_bundle":Landroid/os/Bundle;
    const-string v5, "BUNDLE_PARCELABLE_ARRAYLIST_CONTENT_URI"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 317
    iget-object v5, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BUNDLE_STRING_ID"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v5, "BUNDLE_STRING_MIME_TYPE"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v5, "BUNDLE_INT_PLAYLIST_TRACKNUMBER"

    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    invoke-virtual {v3, v4}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 322
    iget-object v5, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v6, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v5, v3, v6}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 324
    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->registerFilePath(Lcom/samsung/android/allshare/media/Playlist;Ljava/util/ArrayList;I)V

    .line 326
    return-void

    .line 289
    .end local v0    # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v4    # "req_bundle":Landroid/os/Bundle;
    :cond_98
    :goto_98
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v3, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v2, p1, p2, v3}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/media/Playlist;ILcom/samsung/android/allshare/ERROR;)V

    .line 291
    iput-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    .line 292
    return-void

    .line 268
    .end local v1    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    :cond_a2
    :goto_a2
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/media/Playlist;ILcom/samsung/android/allshare/ERROR;)V

    .line 270
    return-void
.end method

.method public previous()V
    .registers 5

    .line 420
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_42

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_42

    .line 425
    :cond_b
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 426
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_PERVIOUS"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 427
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 429
    .local v1, "req_bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 432
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 434
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylist:Lcom/samsung/android/allshare/media/Playlist;

    if-eqz v2, :cond_41

    .line 435
    iget v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    .line 436
    if-gez v2, :cond_3c

    const/4 v2, 0x0

    :cond_3c
    iput v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    .line 438
    invoke-direct {p0, v2}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->createFilePathForZoom(I)V

    .line 440
    :cond_41
    return-void

    .line 421
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPreviousResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 422
    return-void
.end method

.method public removeEventHandler()V
    .registers 5

    .line 709
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 710
    invoke-virtual {v1}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 709
    const-string v3, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    invoke-interface {v0, v3, v1, v2}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mIsSubscribed:Z

    .line 712
    return-void
.end method

.method public resume()V
    .registers 5

    .line 503
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_30

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_30

    .line 508
    :cond_b
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 509
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_RESUME"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 510
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 512
    .local v1, "req_bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 515
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 517
    return-void

    .line 504
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onResumeResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 505
    return-void
.end method

.method public seek(I)V
    .registers 6
    .param p1, "trackNumber"    # I

    .line 347
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_45

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_45

    .line 350
    :cond_b
    const/4 v0, 0x1

    if-ge p1, v0, :cond_16

    .line 351
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onSeekResponseReceived(ILcom/samsung/android/allshare/ERROR;)V

    .line 354
    return-void

    .line 357
    :cond_16
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 358
    .local v0, "mMessage":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_SEEK"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 359
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 361
    .local v1, "mBundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v2, "BUNDLE_INT_PLAYLIST_TRACKNUMBER"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 364
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 365
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 367
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->createFilePathForZoom(I)V

    .line 369
    return-void

    .line 348
    .end local v0    # "mMessage":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "mBundle":Landroid/os/Bundle;
    :cond_45
    :goto_45
    return-void
.end method

.method public setAutoFlipMode(Z)V
    .registers 6
    .param p1, "onoff"    # Z

    .line 573
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_35

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_35

    .line 576
    :cond_b
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 577
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_SET_AUTO_FLIP_MODE"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 578
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 580
    .local v1, "req_bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v2, "BUNDLE_BOOLEAN_AUTO_SLIDE_SHOW"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 583
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 584
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 585
    return-void

    .line 574
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_35
    :goto_35
    return-void
.end method

.method setCurrentFilePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "strFilePath"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setPlaybackResponseListener(Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;)V
    .registers 2
    .param p1, "l"    # Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    .line 539
    iput-object p1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    .line 541
    return-void
.end method

.method public setPlaylistPlayerEventListener(Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;)V
    .registers 6
    .param p1, "l"    # Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;

    .line 545
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3b

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3b

    .line 550
    :cond_b
    iput-object p1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerEventListener:Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;

    .line 552
    iget-boolean v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mIsSubscribed:Z

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    if-nez v0, :cond_26

    if-eqz p1, :cond_26

    .line 553
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 554
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 553
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)Z

    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mIsSubscribed:Z

    goto :goto_3a

    .line 556
    :cond_26
    if-eqz v0, :cond_3a

    if-nez p1, :cond_3a

    .line 557
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 558
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 557
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mIsSubscribed:Z

    .line 564
    :cond_3a
    :goto_3a
    return-void

    .line 546
    :cond_3b
    :goto_3b
    const-string v0, "PlaylistPlayerImpl"

    const-string/jumbo v1, "setEventListener error! AllShareService is not connected"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public setQuickNavigate(Z)V
    .registers 6
    .param p1, "onoff"    # Z

    .line 589
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_35

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_35

    .line 592
    :cond_b
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 593
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_SET_QUICK_NAVIGATE"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 594
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 596
    .local v1, "req_bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v2, "BUNDLE_BOOLEAN_NAVIGATE_IN_PAUSE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 599
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 600
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 601
    return-void

    .line 590
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_35
    :goto_35
    return-void
.end method

.method public stop()V
    .registers 5

    .line 469
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_30

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_30

    .line 474
    :cond_b
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 475
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_STOP"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 476
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 478
    .local v1, "req_bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 481
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 483
    return-void

    .line 470
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 471
    return-void
.end method
