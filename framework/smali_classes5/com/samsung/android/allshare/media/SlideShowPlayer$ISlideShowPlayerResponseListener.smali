.class public interface abstract Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;
.super Ljava/lang/Object;
.source "SlideShowPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/media/SlideShowPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISlideShowPlayerResponseListener"
.end annotation


# virtual methods
.method public abstract onSetBGMListResponseReceived(Ljava/util/ArrayList;Lcom/samsung/android/allshare/ERROR;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;",
            "Lcom/samsung/android/allshare/ERROR;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onSetBGMVolumeResponseReceived(ILcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onSetListResponseReceived(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/ERROR;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;",
            "Lcom/samsung/android/allshare/ERROR;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onStartResponseReceived(ILcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method
