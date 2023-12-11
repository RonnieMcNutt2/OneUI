.class public interface abstract Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;
.super Ljava/lang/Object;
.source "IRemoteAppTransitionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener$Stub;,
        Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multiwindow.IRemoteAppTransitionListener"


# virtual methods
.method public abstract onFinishRecentsAnimation(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStartHomeAnimation(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStartRecentsAnimation(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onWallpaperVisibilityChanged(ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
