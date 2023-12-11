.class public interface abstract Landroid/media/ISpatializerHeadTrackingModeCallback;
.super Ljava/lang/Object;
.source "ISpatializerHeadTrackingModeCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;,
        Landroid/media/ISpatializerHeadTrackingModeCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.media.ISpatializerHeadTrackingModeCallback"


# virtual methods
.method public abstract dispatchSpatializerActualHeadTrackingModeChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dispatchSpatializerDesiredHeadTrackingModeChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
