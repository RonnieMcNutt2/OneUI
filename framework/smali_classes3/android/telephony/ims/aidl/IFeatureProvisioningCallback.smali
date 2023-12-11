.class public interface abstract Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;
.super Ljava/lang/Object;
.source "IFeatureProvisioningCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub;,
        Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.ims.aidl.IFeatureProvisioningCallback"


# virtual methods
.method public abstract onFeatureProvisioningChanged(IIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRcsFeatureProvisioningChanged(IIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
