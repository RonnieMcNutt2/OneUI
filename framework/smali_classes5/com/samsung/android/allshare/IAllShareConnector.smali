.class public interface abstract Lcom/samsung/android/allshare/IAllShareConnector;
.super Ljava/lang/Object;
.source "IAllShareConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;
    }
.end annotation


# virtual methods
.method public abstract connect()V
.end method

.method public abstract destroyInstance()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public abstract isAllShareServiceConnected()Z
.end method

.method public abstract requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J
.end method

.method public abstract requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;
.end method

.method public abstract subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)Z
.end method

.method public abstract unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V
.end method
