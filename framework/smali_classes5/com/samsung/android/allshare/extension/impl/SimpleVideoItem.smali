.class public Lcom/samsung/android/allshare/extension/impl/SimpleVideoItem;
.super Lcom/samsung/android/allshare/Item;
.source "SimpleVideoItem.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleVideoItem;->mBundle:Landroid/os/Bundle;

    .line 36
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/impl/SimpleVideoItem;->mBundle:Landroid/os/Bundle;

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleVideoItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getArtist()Ljava/lang/String;
    .registers 3

    .line 97
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleVideoItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBitrate()I
    .registers 3

    .line 189
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleVideoItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleVideoItem;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCaptionList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleVideoItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_a

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 211
    :cond_a
    const-string v1, "BUNDLE_PARCELABLE_ITEM_CAPTION_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getChannelNr()Ljava/lang/String;
    .registers 3

    .line 201
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleVideoItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;
    .registers 3

    .line 158
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleVideoItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDate()Ljava/util/Date;
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleVideoItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDuration()J
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleVideoItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    goto :goto_d

    :cond_7
    const-string v1, "BUNDLE_LONG_VIDEO_ITEM_DURATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_d
    return-wide v0
.end method

.method public getExtension()Ljava/lang/String;
    .registers 3

    .line 140
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleVideoItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFileSize()J
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleVideoItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    goto :goto_d

    :cond_7
    const-string v1, "BUNDLE_LONG_ITEM_FILE_SIZE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_d
    return-wide v0
.end method

.method public getGenre()Ljava/lang/String;
    .registers 3

    .line 103
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleVideoItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 3

    .line 109
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleVideoItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMimetype()Ljava/lang/String;
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleVideoItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_d

    :cond_7
    const-string v1, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleVideoItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResourceList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item$Resource;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleVideoItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;
    .registers 3

    .line 183
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleVideoItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSubtitle()Landroid/net/Uri;
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleVideoItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    .line 122
    :cond_6
    const-string v1, "BUNDLE_PARCELABLE_VIDEO_ITEM_SUBTITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_c
    check-cast v0, Landroid/net/Uri;

    .line 121
    return-object v0
.end method

.method public getSubtitleList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Subtitle;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleVideoItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getThumbnail()Landroid/net/Uri;
    .registers 3

    .line 128
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleVideoItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleVideoItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_d

    :cond_7
    const-string v1, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getType()Lcom/samsung/android/allshare/Item$MediaType;
    .registers 2

    .line 60
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public getURI()Landroid/net/Uri;
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleVideoItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    .line 67
    :cond_6
    const-string v1, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_c
    check-cast v0, Landroid/net/Uri;

    .line 66
    return-object v0
.end method

.method public getWebContentDeliveryMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .registers 3

    .line 164
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleVideoItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWebContentPlayMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleVideoItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRootFolder()Z
    .registers 3

    .line 134
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleVideoItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleVideoItem;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 80
    return-void
.end method
