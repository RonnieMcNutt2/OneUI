.class public Lcom/samsung/android/wifi/aware/SemWifiAwareManager;
.super Ljava/lang/Object;
.source "SemWifiAwareManager.java"


# static fields
.field public static final STATUS_FALSE:I = 0x2

.field public static final STATUS_TRUE:I = 0x1

.field public static final STATUS_UNABLE_TO_CHECK:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->mService:Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    .line 48
    return-void
.end method


# virtual methods
.method public isPreEnabled()I
    .registers 3

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->mService:Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;->isPreEnabled()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 78
    :catch_7
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public setClusterMergingEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->mService:Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;->setClusterMergingEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 62
    nop

    .line 63
    return-void

    .line 60
    :catch_7
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
