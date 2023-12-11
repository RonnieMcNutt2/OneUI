.class public interface abstract Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;
.super Ljava/lang/Object;
.source "FileReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/file/FileReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFileReceiverProgressUpdateEventListener"
.end annotation


# virtual methods
.method public abstract onCompleted(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;Ljava/io/File;Landroid/net/Uri;Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onFailed(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;Ljava/io/File;Landroid/net/Uri;Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onProgressUpdated(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;JJLjava/io/File;Landroid/net/Uri;Lcom/samsung/android/allshare/ERROR;)V
.end method
