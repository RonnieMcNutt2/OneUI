.class public abstract Lcom/samsung/android/allshare/media/ViewController2;
.super Ljava/lang/Object;
.source "ViewController2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;,
        Lcom/samsung/android/allshare/media/ViewController2$IViewController2EventListener;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract isConnected()Z
.end method

.method public abstract setEventListener(Lcom/samsung/android/allshare/media/ViewController2$IViewController2EventListener;)V
.end method

.method public abstract setResponseListener(Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;)V
.end method

.method public abstract setViewAngle(I)V
.end method

.method public abstract zoom(IIF)V
.end method
