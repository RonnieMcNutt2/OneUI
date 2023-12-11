.class public interface abstract Lcom/samsung/android/core/IFoldStarManager;
.super Ljava/lang/Object;
.source "IFoldStarManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/IFoldStarManager$Stub;,
        Lcom/samsung/android/core/IFoldStarManager$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.core.IFoldStarManager"

.field public static final OPTION_GET_ALL_PACKAGES:I = 0x0

.field public static final OPTION_GET_REQUESTED_PACKAGES:I = 0x3

.field public static final OPTION_GET_SYSTEM_SETTINGS:I = 0x2

.field public static final OPTION_GET_USER_SETTINGS:I = 0x1


# virtual methods
.method public abstract getDisplayCompatPackages(IILjava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFixedAspectRatioPackages(IILjava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract initAppContinuityValueWhenReset(ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerFoldStarCallback(Lcom/samsung/android/core/IFoldStarCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setAllAppContinuityMode(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setAppContinuityMode(Ljava/lang/String;IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDisplayCompatPackages(ILjava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setFixedAspectRatioPackages(ILjava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setFrontScreenOnWhenAppContinuityMode(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterFoldStarCallback(Lcom/samsung/android/core/IFoldStarCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
