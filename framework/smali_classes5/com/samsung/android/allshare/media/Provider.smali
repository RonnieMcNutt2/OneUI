.class public abstract Lcom/samsung/android/allshare/media/Provider;
.super Lcom/samsung/android/allshare/Device;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;,
        Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;,
        Lcom/samsung/android/allshare/media/Provider$IProviderEventListener;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 149
    invoke-direct {p0}, Lcom/samsung/android/allshare/Device;-><init>()V

    .line 150
    return-void
.end method


# virtual methods
.method public abstract browse(Lcom/samsung/android/allshare/Item;II)V
.end method

.method public abstract getReceiver()Lcom/samsung/android/allshare/media/Receiver;
.end method

.method public abstract getRootFolder()Lcom/samsung/android/allshare/Item;
.end method

.method public abstract isSearchable()Z
.end method

.method public abstract search(Lcom/samsung/android/allshare/media/SearchCriteria;II)V
.end method

.method public abstract setBrowseItemsResponseListener(Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;)V
.end method

.method public abstract setEventListener(Lcom/samsung/android/allshare/media/Provider$IProviderEventListener;)V
.end method

.method public abstract setSearchResponseListener(Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;)V
.end method
