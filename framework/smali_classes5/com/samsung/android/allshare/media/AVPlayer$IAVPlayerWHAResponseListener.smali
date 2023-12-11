.class public interface abstract Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;
.super Ljava/lang/Object;
.source "AVPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/media/AVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAVPlayerWHAResponseListener"
.end annotation


# virtual methods
.method public abstract onCreateWHAParty(Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onGetWHADeviceStatusInfo(Lcom/samsung/android/allshare/WHADeviceInfo;Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onJoinWHAParty(Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onLeaveWHAParty(Lcom/samsung/android/allshare/ERROR;)V
.end method
