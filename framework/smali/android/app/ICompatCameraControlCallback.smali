.class public interface abstract Landroid/app/ICompatCameraControlCallback;
.super Ljava/lang/Object;
.source "ICompatCameraControlCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ICompatCameraControlCallback$Stub;,
        Landroid/app/ICompatCameraControlCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.ICompatCameraControlCallback"


# virtual methods
.method public abstract applyCameraCompatTreatment()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract revertCameraCompatTreatment()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
