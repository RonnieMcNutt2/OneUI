.class Lcom/samsung/android/allshare/ImageViewerImpl$2;
.super Lcom/samsung/android/allshare/AllShareResponseHandler;
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
.field final synthetic this$0:Lcom/samsung/android/allshare/ImageViewerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/allshare/ImageViewerImpl;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/allshare/ImageViewerImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 227
    iput-object p1, p0, Lcom/samsung/android/allshare/ImageViewerImpl$2;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private removeUri(Ljava/lang/String;)V
    .registers 7
    .param p1, "currentTrackUri"    # Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl$2;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmPlayingContentUris(Lcom/samsung/android/allshare/ImageViewerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_48

    if-nez p1, :cond_b

    goto :goto_48

    .line 317
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl$2;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmPlayingContentUris(Lcom/samsung/android/allshare/ImageViewerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 318
    .local v1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_46

    .line 319
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 320
    .local v3, "uri":Ljava/lang/String;
    if-eqz v3, :cond_45

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 321
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl$2;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmPlayingContentUris(Lcom/samsung/android/allshare/ImageViewerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 322
    return-void

    .line 324
    .end local v3    # "uri":Ljava/lang/String;
    :cond_45
    goto :goto_27

    .line 326
    .end local v1    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_46
    goto :goto_15

    .line 328
    :cond_47
    return-void

    .line 315
    :cond_48
    :goto_48
    return-void
.end method


# virtual methods
.method public handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .registers 21
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 231
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "actionID":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 234
    .local v2, "resBundle":Landroid/os/Bundle;
    const-string v3, "ImageViewerImpl"

    if-eqz v1, :cond_133

    if-nez v2, :cond_12

    goto/16 :goto_133

    .line 240
    :cond_12
    sget-object v4, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    .line 241
    .local v4, "error":Lcom/samsung/android/allshare/ERROR;
    const-string v5, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "errorStr":Ljava/lang/String;
    if-eqz v5, :cond_20

    .line 243
    invoke-static {v5}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v4

    .line 245
    :cond_20
    nop

    .line 246
    const-string v6, "BUNDLE_LONG_CONTENT_INFO_STARTINGPOSITION"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 248
    .local v6, "contentInfoStartingPosition":J
    new-instance v8, Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    invoke-direct {v8}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;-><init>()V

    .line 249
    .local v8, "cb":Lcom/samsung/android/allshare/media/ContentInfo$Builder;
    invoke-virtual {v8, v6, v7}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->setStartingPosition(J)Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    move-result-object v8

    .line 250
    invoke-virtual {v8}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->build()Lcom/samsung/android/allshare/media/ContentInfo;

    move-result-object v9

    .line 252
    .local v9, "info":Lcom/samsung/android/allshare/media/ContentInfo;
    const-string v10, "BUNDLE_PARCELABLE_ITEM"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 254
    .local v10, "itemBundle":Landroid/os/Bundle;
    invoke-static {v10}, Lcom/samsung/android/allshare/ItemCreator;->fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;

    move-result-object v11

    .line 257
    .local v11, "item":Lcom/samsung/android/allshare/Item;
    const-string v12, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW_LOCAL_CONTENT"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW"

    const-string v15, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW_URI"

    move-object/from16 v16, v5

    .end local v5    # "errorStr":Ljava/lang/String;
    .local v16, "errorStr":Ljava/lang/String;
    const-string v5, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW_LOCAL_CONTENT_URI"

    move-wide/from16 v17, v6

    .end local v6    # "contentInfoStartingPosition":J
    .local v17, "contentInfoStartingPosition":J
    const/4 v6, 0x1

    if-eq v13, v6, :cond_65

    .line 258
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eq v7, v6, :cond_65

    .line 259
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eq v7, v6, :cond_65

    .line 260
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v6, :cond_c4

    .line 261
    :cond_65
    sget-object v7, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v4, v7}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 262
    iget-object v7, v0, Lcom/samsung/android/allshare/ImageViewerImpl$2;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    const/4 v13, 0x0

    invoke-static {v7, v13}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fputmContentChangedNotified(Lcom/samsung/android/allshare/ImageViewerImpl;Z)V

    goto :goto_c4

    .line 264
    :cond_74
    if-eqz v11, :cond_c4

    .line 265
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eq v7, v6, :cond_b9

    .line 266
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v6, :cond_83

    goto :goto_b9

    .line 268
    :cond_83
    nop

    .line 269
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v6, :cond_a4

    .line 270
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 271
    .local v7, "bundle":Landroid/os/Bundle;
    instance-of v13, v11, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v13, :cond_9a

    .line 272
    move-object v13, v11

    check-cast v13, Lcom/sec/android/allshare/iface/IBundleHolder;

    invoke-interface {v13}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 274
    :cond_9a
    const-string v13, "BUNDLE_STRING_FILEPATH"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 275
    .local v13, "filePath":Ljava/lang/String;
    invoke-direct {v0, v13}, Lcom/samsung/android/allshare/ImageViewerImpl$2;->removeUri(Ljava/lang/String;)V

    .line 276
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v13    # "filePath":Ljava/lang/String;
    goto :goto_c4

    :cond_a4
    nop

    .line 277
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v6, :cond_c4

    .line 278
    iget-object v7, v0, Lcom/samsung/android/allshare/ImageViewerImpl$2;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-virtual {v11}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$mparseUriFilePath(Lcom/samsung/android/allshare/ImageViewerImpl;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 279
    .local v7, "filePath":Ljava/lang/String;
    invoke-direct {v0, v7}, Lcom/samsung/android/allshare/ImageViewerImpl$2;->removeUri(Ljava/lang/String;)V

    goto :goto_c4

    .line 267
    .end local v7    # "filePath":Ljava/lang/String;
    :cond_b9
    :goto_b9
    invoke-virtual {v11}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/samsung/android/allshare/ImageViewerImpl$2;->removeUri(Ljava/lang/String;)V

    .line 285
    :cond_c4
    :goto_c4
    iget-object v7, v0, Lcom/samsung/android/allshare/ImageViewerImpl$2;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v7}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ImageViewerImpl;)Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    move-result-object v7

    if-nez v7, :cond_d3

    .line 286
    const-string/jumbo v5, "handleResponseMessage : mResponseListener == null"

    invoke-static {v3, v5}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void

    .line 290
    :cond_d3
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v6, :cond_11b

    .line 291
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v6, :cond_11b

    .line 292
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v6, :cond_11b

    .line 293
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v6, :cond_ec

    goto :goto_11b

    .line 300
    :cond_ec
    const-string v3, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_STOP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v6, :cond_fe

    .line 301
    iget-object v3, v0, Lcom/samsung/android/allshare/ImageViewerImpl$2;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v3}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ImageViewerImpl;)Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_132

    .line 302
    :cond_fe
    const-string v3, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_REQUEST_GET_VIEWER_STATE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11a

    .line 303
    const-string v3, "BUNDLE_STRING_IMAGE_VIEWEW_STATE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "state":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    move-result-object v5

    .line 307
    .local v5, "viewerState":Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;
    iget-object v6, v0, Lcom/samsung/android/allshare/ImageViewerImpl$2;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ImageViewerImpl;)Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    move-result-object v6

    invoke-interface {v6, v5, v4}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onGetStateResponseReceived(Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;Lcom/samsung/android/allshare/ERROR;)V

    .line 308
    .end local v3    # "state":Ljava/lang/String;
    .end local v5    # "viewerState":Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;
    goto :goto_132

    .line 309
    :cond_11a
    return-void

    .line 296
    :cond_11b
    :goto_11b
    if-nez v11, :cond_129

    .line 297
    iget-object v3, v0, Lcom/samsung/android/allshare/ImageViewerImpl$2;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v3}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ImageViewerImpl;)Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v3, v11, v9, v5}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_132

    .line 299
    :cond_129
    iget-object v3, v0, Lcom/samsung/android/allshare/ImageViewerImpl$2;->this$0:Lcom/samsung/android/allshare/ImageViewerImpl;

    invoke-static {v3}, Lcom/samsung/android/allshare/ImageViewerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ImageViewerImpl;)Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    move-result-object v3

    invoke-interface {v3, v11, v9, v4}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 311
    :goto_132
    return-void

    .line 235
    .end local v4    # "error":Lcom/samsung/android/allshare/ERROR;
    .end local v8    # "cb":Lcom/samsung/android/allshare/media/ContentInfo$Builder;
    .end local v9    # "info":Lcom/samsung/android/allshare/media/ContentInfo;
    .end local v10    # "itemBundle":Landroid/os/Bundle;
    .end local v11    # "item":Lcom/samsung/android/allshare/Item;
    .end local v16    # "errorStr":Ljava/lang/String;
    .end local v17    # "contentInfoStartingPosition":J
    :cond_133
    :goto_133
    const-string/jumbo v4, "handleResponseMessage : actionID == null || resBundle == null"

    invoke-static {v3, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method
