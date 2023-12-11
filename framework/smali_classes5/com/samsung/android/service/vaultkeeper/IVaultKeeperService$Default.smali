.class public Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Default;
.super Ljava/lang/Object;
.source "IVaultKeeperService.java"

# interfaces
.implements Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public checkDataWritable(Ljava/lang/String;)I
    .registers 3
    .param p1, "vaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public destroy(Ljava/lang/String;[B[B[B)I
    .registers 6
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "hmac"    # [B
    .param p3, "cert"    # [B
    .param p4, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public encryptMessage(Ljava/lang/String;[B)[B
    .registers 4
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public generateHotpCode(Ljava/lang/String;)I
    .registers 3
    .param p1, "vaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Ljava/lang/String;[B[B[B[B)I
    .registers 7
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "initUnsheltered"    # [B
    .param p4, "cert"    # [B
    .param p5, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public isInitialized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "vaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public migrationStorage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "vaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public read(Ljava/lang/String;I[I)[B
    .registers 5
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "errorCode"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public sensitiveBox(Ljava/lang/String;I[I)[B
    .registers 5
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "errorCode"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public verifyCertificate(Ljava/lang/String;[B)Z
    .registers 4
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "cert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public write(Ljava/lang/String;I[B[B[B)I
    .registers 7
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "data"    # [B
    .param p4, "cert"    # [B
    .param p5, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return v0
.end method
