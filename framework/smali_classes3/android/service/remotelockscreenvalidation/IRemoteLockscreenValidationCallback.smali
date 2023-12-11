.class public interface abstract Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;
.super Ljava/lang/Object;
.source "IRemoteLockscreenValidationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback$Stub;,
        Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.remotelockscreenvalidation.IRemoteLockscreenValidationCallback"


# virtual methods
.method public abstract onFailure(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSuccess(Landroid/app/RemoteLockscreenValidationResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
