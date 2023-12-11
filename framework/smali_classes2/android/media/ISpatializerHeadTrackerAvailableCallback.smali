.class public interface abstract Landroid/media/ISpatializerHeadTrackerAvailableCallback;
.super Ljava/lang/Object;
.source "ISpatializerHeadTrackerAvailableCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ISpatializerHeadTrackerAvailableCallback$Stub;,
        Landroid/media/ISpatializerHeadTrackerAvailableCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.media.ISpatializerHeadTrackerAvailableCallback"


# virtual methods
.method public abstract dispatchSpatializerHeadTrackerAvailable(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
