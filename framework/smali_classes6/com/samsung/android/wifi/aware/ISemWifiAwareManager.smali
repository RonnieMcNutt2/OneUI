.class public interface abstract Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;
.super Ljava/lang/Object;
.source "ISemWifiAwareManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub;,
        Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wifi.aware.ISemWifiAwareManager"


# virtual methods
.method public abstract isPreEnabled()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setClusterMergingEnabled(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
