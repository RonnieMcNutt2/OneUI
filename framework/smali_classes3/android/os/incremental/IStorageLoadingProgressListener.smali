.class public interface abstract Landroid/os/incremental/IStorageLoadingProgressListener;
.super Ljava/lang/Object;
.source "IStorageLoadingProgressListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/incremental/IStorageLoadingProgressListener$Stub;,
        Landroid/os/incremental/IStorageLoadingProgressListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.incremental.IStorageLoadingProgressListener"


# virtual methods
.method public abstract onStorageLoadingProgressChanged(IF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
