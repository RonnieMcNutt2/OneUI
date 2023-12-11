.class public Lcom/android/server/CassATCmd;
.super Ljava/lang/Object;
.source "CassATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final AT_COMMAND_CASS:Ljava/lang/String; = "MGRTCASS"

.field private static final AT_RESPONSE_CONN_FAILED:Ljava/lang/String; = "NG_FAILEDCONNECTION"

.field private static final AT_RESPONSE_EXCEPTION:Ljava/lang/String; = "NG_EXCEPTION"

.field private static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG_INVALIDPARAM"

.field private static final AT_RESPONSE_NG:Ljava/lang/String; = "NG"

.field private static final AT_RESPONSE_NO_KEY:Ljava/lang/String; = "NG_NOKEY"

.field private static final AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field private static final TAG:Ljava/lang/String;

.field private static final mCassVaultName:Ljava/lang/String; = "CASS"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/android/server/CassATCmd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CassATCmd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sput-object p1, Lcom/android/server/CassATCmd;->mContext:Landroid/content/Context;

    .line 38
    const-string v0, "CASS"

    invoke-static {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/CassATCmd;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    .line 39
    return-void
.end method

.method private parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    .line 95
    .local v0, "result":[Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "params":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    move-object v0, v2

    .line 100
    .end local v1    # "params":Ljava/lang/String;
    goto :goto_17

    .line 97
    :catch_12
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 99
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_17
    return-object v0
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .registers 2

    .line 44
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 45
    .local v0, "response":Ljava/lang/String;
    const-string v0, "MGRTCASS"

    .line 46
    return-object v0
.end method

.method public processCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "cmd"    # Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 53
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/CassATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "params":[Ljava/lang/String;
    const-string v2, "0,0,0,0"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "supportedParams":[Ljava/lang/String;
    const-string v3, "NG_INVALIDPARAM"

    if-nez v1, :cond_14

    .line 60
    return-object v3

    .line 63
    :cond_14
    iget-object v4, p0, Lcom/android/server/CassATCmd;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v4, :cond_1b

    .line 64
    const-string v3, "NG_FAILEDCONNECTION"

    return-object v3

    .line 68
    :cond_1b
    :try_start_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v6, v1, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 70
    aget-object v4, v2, v5

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 71
    iget-object v3, p0, Lcom/android/server/CassATCmd;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 72
    iget-object v3, p0, Lcom/android/server/CassATCmd;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->migrationStorage()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "OK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_9b

    .line 75
    :cond_5f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_9b

    .line 78
    :cond_74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NG_NOKEY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_9b

    .line 81
    :cond_89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_9a} :catch_9c

    move-object v0, v3

    .line 85
    :goto_9b
    goto :goto_b0

    .line 83
    :catch_9c
    move-exception v3

    .line 84
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "NG_EXCEPTION"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_b0
    return-object v0
.end method
