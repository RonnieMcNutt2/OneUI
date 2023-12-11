.class public abstract Lcom/samsung/android/allshare/media/ViewController;
.super Ljava/lang/Object;
.source "ViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/media/ViewController$IResponseListener;,
        Lcom/samsung/android/allshare/media/ViewController$IEventListener;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract getViewHeight()I
.end method

.method public abstract getViewWidth()I
.end method

.method public abstract isConnected()Z
.end method

.method public abstract move(IIZ)V
.end method

.method public abstract setEventListener(Lcom/samsung/android/allshare/media/ViewController$IEventListener;)V
.end method

.method public abstract setResponseListener(Lcom/samsung/android/allshare/media/ViewController$IResponseListener;)V
.end method

.method public abstract setViewAngle(I)V
.end method

.method public abstract zoom(IIII)V
.end method

.method public abstract zoom(IIIIII)V
.end method
