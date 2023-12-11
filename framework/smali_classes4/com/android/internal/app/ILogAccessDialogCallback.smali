.class public interface abstract Lcom/android/internal/app/ILogAccessDialogCallback;
.super Ljava/lang/Object;
.source "ILogAccessDialogCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ILogAccessDialogCallback$Stub;,
        Lcom/android/internal/app/ILogAccessDialogCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.ILogAccessDialogCallback"


# virtual methods
.method public abstract approveAccessForClient(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract declineAccessForClient(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
