.class public interface abstract Lcom/android/ims/internal/IImsServiceController;
.super Ljava/lang/Object;
.source "IImsServiceController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsServiceController$Stub;,
        Lcom/android/ims/internal/IImsServiceController$Default;
    }
.end annotation


# virtual methods
.method public abstract addFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createEmergencyMMTelFeature(I)Lcom/android/ims/internal/IImsMMTelFeature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createMMTelFeature(I)Lcom/android/ims/internal/IImsMMTelFeature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createRcsFeature(I)Lcom/android/ims/internal/IImsRcsFeature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeImsFeature(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
