.class public Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;
.super Ljava/lang/Object;
.source "SecureClient.java"


# instance fields
.field private clientId:Ljava/lang/String;

.field private privateSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;

.field private sessionHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    .line 20
    iput-object p1, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->clientId:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;

    invoke-direct {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->privateSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;

    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized decryptMessageFrom(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "fromClient"    # Ljava/lang/String;
    .param p2, "cipher"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;

    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 90
    .end local p0    # "this":Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;
    .end local p1    # "fromClient":Ljava/lang/String;
    .end local p2    # "cipher":Ljava/lang/String;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized decryptMessageFrom(Ljava/lang/String;[B)[B
    .registers 4
    .param p1, "fromClient"    # Ljava/lang/String;
    .param p2, "cipher"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 97
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;

    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->decryptBytes([B)[B

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 97
    .end local p0    # "this":Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;
    .end local p1    # "fromClient":Ljava/lang/String;
    .end local p2    # "cipher":[B
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized destroy()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 65
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, "client":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;

    invoke-virtual {v2}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->destroySessionkey()V

    .line 67
    .end local v1    # "client":Ljava/lang/String;
    goto :goto_b

    .line 68
    .end local p0    # "this":Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;
    :cond_23
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->privateSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;->destroy()V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 70
    monitor-exit p0

    return-void

    .line 64
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized encryptMessageFor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "toClient"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 76
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;

    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 76
    .end local p0    # "this":Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;
    .end local p1    # "toClient":Ljava/lang/String;
    .end local p2    # "message":Ljava/lang/String;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized encryptMessageFor(Ljava/lang/String;[B)[B
    .registers 4
    .param p1, "toClient"    # Ljava/lang/String;
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;

    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->encryptBytes([B)[B

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 83
    .end local p0    # "this":Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;
    .end local p1    # "toClient":Ljava/lang/String;
    .end local p2    # "message":[B
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getClientId()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKeyString()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->privateSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;->getPublicKeyString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized hasActiveSecureSessions()Z
    .registers 2

    monitor-enter p0

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    .line 48
    .end local p0    # "this":Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initializeSecureSession(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "otherClientId"    # Ljava/lang/String;
    .param p2, "otherClientPubKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 37
    :try_start_1
    new-instance v0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;

    invoke-direct {v0, p2}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "publicSessionEndpoint":Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;
    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    new-instance v2, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;

    iget-object v3, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->privateSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;-><init>(Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 42
    monitor-exit p0

    return-void

    .line 36
    .end local v0    # "publicSessionEndpoint":Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;
    .end local p0    # "this":Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;
    .end local p1    # "otherClientId":Ljava/lang/String;
    .end local p2    # "otherClientPubKey":Ljava/lang/String;
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized terminateSecureSession(Ljava/lang/String;)V
    .registers 3
    .param p1, "otherClientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 55
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 56
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->destroySessionkey()V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 59
    .end local p0    # "this":Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;
    :cond_19
    monitor-exit p0

    return-void

    .line 54
    .end local p1    # "otherClientId":Ljava/lang/String;
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
