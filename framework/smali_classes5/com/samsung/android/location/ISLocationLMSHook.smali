.class public interface abstract Lcom/samsung/android/location/ISLocationLMSHook;
.super Ljava/lang/Object;
.source "ISLocationLMSHook.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/location/ISLocationLMSHook$Stub;,
        Lcom/samsung/android/location/ISLocationLMSHook$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.location.ISLocationLMSHook"


# virtual methods
.method public abstract getHWGeofence()Landroid/location/IGpsGeofenceHardware;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isProviderEnabledForUser(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isUidForeground(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateRequestInfo(ZIILjava/lang/String;Ljava/lang/String;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
