.class public Lcom/samsung/android/net/ExtendedEthernetManager;
.super Ljava/lang/Object;
.source "ExtendedEthernetManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtendedEthernetManager"


# instance fields
.field private final mService:Lcom/samsung/android/net/IExtendedEthernetManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/net/IExtendedEthernetManager;)V
    .registers 4
    .param p1, "service"    # Lcom/samsung/android/net/IExtendedEthernetManager;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "ExtendedEthernetManager"

    const-string v1, "ExtendedEthernetManager created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iput-object p1, p0, Lcom/samsung/android/net/ExtendedEthernetManager;->mService:Lcom/samsung/android/net/IExtendedEthernetManager;

    .line 25
    return-void
.end method


# virtual methods
.method public getConfiguration(Ljava/lang/String;)Landroid/net/IpConfiguration;
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;

    .line 32
    const-string v0, "ExtendedEthernetManager"

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/net/ExtendedEthernetManager;->mService:Lcom/samsung/android/net/IExtendedEthernetManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/net/IExtendedEthernetManager;->getConfiguration(Ljava/lang/String;)Landroid/net/IpConfiguration;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    return-object v0

    .line 35
    :catch_9
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 33
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_12
    move-exception v1

    .line 34
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 38
    :goto_1b
    const/4 v0, 0x0

    return-object v0
.end method
