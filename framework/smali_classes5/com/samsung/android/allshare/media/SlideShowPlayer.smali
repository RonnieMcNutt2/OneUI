.class public abstract Lcom/samsung/android/allshare/media/SlideShowPlayer;
.super Ljava/lang/Object;
.source "SlideShowPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;,
        Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerEventListener;,
        Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public abstract setBGMList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setBGMVolume(I)V
.end method

.method public abstract setEventListener(Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerEventListener;)V
.end method

.method public abstract setList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setResponseListener(Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerResponseListener;)V
.end method

.method public abstract start(I)V
.end method

.method public abstract stop()V
.end method
