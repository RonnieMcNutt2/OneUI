.class public Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
.super Ljava/lang/Object;
.source "EnhancedAttestationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;
    }
.end annotation


# static fields
.field private static final EA_BIND_ACTION:Ljava/lang/String; = "com.samsung.android.knox.intent.action.BIND_KNOX_EA_SERVICE"

.field private static final EA_PACKAGE_CLASS:Ljava/lang/String; = "com.samsung.android.knox.attestation.controller.SemEnhancedAttestation"

.field private static final EA_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.attestation"

.field private static final TAG:Ljava/lang/String; = "SEMEAPolicy"

.field private static mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;


# instance fields
.field private conn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

.field private mProcessPendingRequest:Z

.field private final mTrackOpsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fputmEnhancedAttestation(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePendingRequest(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->handlePendingRequest()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    .line 183
    new-instance v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$1;-><init>(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;)V

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->conn:Landroid/content/ServiceConnection;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mContext:Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    .line 54
    return-void
.end method

.method private declared-synchronized addToTrackMap(Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Z
    .registers 6
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "opt"    # Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;

    monitor-enter p0

    .line 247
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 248
    const-string v0, "SEMEAPolicy"

    const-string/jumbo v1, "same nonce onProcessing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_38

    .line 249
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 251
    .end local p0    # "this":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v0, "SEMEAPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToTrackMap:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getTrackMapSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_14 .. :try_end_35} :catchall_38

    .line 253
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 246
    .end local p1    # "nonce":Ljava/lang/String;
    .end local p2    # "opt":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;
    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private bindService()Z
    .registers 7

    .line 203
    const-class v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    monitor-enter v0

    .line 204
    :try_start_3
    const-string v1, "SEMEAPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_83

    .line 206
    const/4 v1, 0x1

    :try_start_1e
    iget-object v2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    if-eqz v2, :cond_2e

    invoke-interface {v2}, Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2a} :catch_2f
    .catchall {:try_start_1e .. :try_end_2a} :catchall_83

    if-eqz v2, :cond_2e

    .line 207
    :try_start_2c
    monitor-exit v0

    return v1

    .line 211
    :cond_2e
    goto :goto_4c

    .line 209
    :catch_2f
    move-exception v2

    .line 210
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SEMEAPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_2c .. :try_end_4d} :catchall_83

    .line 214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.knox.attestation"

    const-string v3, "com.samsung.android.knox.attestation.controller.SemEnhancedAttestation"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v2, "com.samsung.android.knox.intent.action.BIND_KNOX_EA_SERVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->conn:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    .line 218
    .local v1, "result":Z
    const-string v2, "SEMEAPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bind service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return v1

    .line 212
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "result":Z
    :catchall_83
    move-exception v1

    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v1
.end method

.method private declared-synchronized clearTrackMap()V
    .registers 2

    monitor-enter p0

    .line 269
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 270
    monitor-exit p0

    return-void

    .line 268
    .end local p0    # "this":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;
    .registers 6
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .line 173
    new-instance v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    invoke-direct {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;-><init>()V

    .line 174
    .local v0, "result":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;
    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->setErrorCode(I)V

    .line 176
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "dataFieldUniqueId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->setData(Landroid/os/Bundle;)V

    .line 180
    return-object v0
.end method

.method static declared-synchronized getInstance()Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    monitor-enter v0

    .line 47
    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 47
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    monitor-enter v0

    .line 36
    if-nez p0, :cond_f

    .line 37
    :try_start_5
    const-string v1, "SEMEAPolicy"

    const-string v2, "context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1e

    .line 38
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_f
    :try_start_f
    sget-object v1, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    if-nez v1, :cond_1a

    .line 41
    new-instance v1, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    .line 43
    :cond_1a
    sget-object v1, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1e

    monitor-exit v0

    return-object v1

    .line 35
    .end local p0    # "context":Landroid/content/Context;
    :catchall_1e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static getKnoxVersion()I
    .registers 1

    .line 105
    const-string v0, "37"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    return v0
.end method

.method private declared-synchronized getTrackMapSize()I
    .registers 2

    monitor-enter p0

    .line 273
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 273
    .end local p0    # "this":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handlePendingRequest()V
    .registers 10

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getTrackMapSize()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_8

    .line 224
    return-void

    .line 228
    :cond_8
    const-class v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    monitor-enter v0

    .line 229
    :try_start_b
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 230
    .local v2, "trackOpsHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;>;"
    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->clearTrackMap()V

    .line 231
    iput-boolean v1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    .line 232
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_74

    .line 234
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 235
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 236
    .local v3, "nonce":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;

    .line 237
    .local v4, "key":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;
    const-string v5, "SEMEAPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "process pending request: nonce len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {v4}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmAuk(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmNonce(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmCb(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    move-result-object v7

    invoke-static {v4}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmOnPrem(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Z

    move-result v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;Z)V

    .line 239
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;>;"
    .end local v3    # "nonce":Ljava/lang/String;
    .end local v4    # "key":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;
    goto :goto_20

    .line 241
    :cond_69
    const-class v1, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    monitor-enter v1

    .line 242
    const/4 v0, 0x0

    :try_start_6d
    iput-boolean v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    .line 243
    monitor-exit v1

    .line 244
    return-void

    .line 243
    :catchall_71
    move-exception v0

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_6d .. :try_end_73} :catchall_71

    throw v0

    .line 232
    .end local v2    # "trackOpsHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;>;"
    :catchall_74
    move-exception v1

    :try_start_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v1
.end method

.method private isDongleDevice()Z
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method private isEaSupportedFromSepLite()Z
    .registers 2

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method private isJdmDevice()Z
    .registers 3

    .line 89
    const-string/jumbo v0, "jdm"

    const-string/jumbo v1, "in_house"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 90
    const-string v0, "SEMEAPolicy"

    const-string/jumbo v1, "jdm device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x1

    return v0

    .line 93
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private isKnoxVersionSupported()Z
    .registers 3

    .line 97
    invoke-static {}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getKnoxVersion()I

    move-result v0

    .line 98
    .local v0, "knoxSdkver":I
    const/16 v1, 0x18

    if-lt v0, v1, :cond_a

    .line 99
    const/4 v1, 0x1

    return v1

    .line 101
    :cond_a
    const/4 v1, 0x0

    return v1
.end method

.method private isSepLiteDevice()Z
    .registers 4

    .line 80
    const-string/jumbo v0, "sep_basic"

    .line 81
    .local v0, "sepCategory":Ljava/lang/String;
    const-string/jumbo v1, "sep_lite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string/jumbo v1, "sep_lite_new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_18

    .line 85
    :cond_16
    const/4 v1, 0x0

    return v1

    .line 82
    :cond_18
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sep Lite Device : sepCategory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SEMEAPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v1, 0x1

    return v1
.end method

.method private startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;Z)V
    .registers 12
    .param p1, "auk"    # Ljava/lang/String;
    .param p2, "nonce"    # Ljava/lang/String;
    .param p3, "cb"    # Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;
    .param p4, "onPrem"    # Z

    .line 122
    const-string v0, "SEMEAPolicy"

    if-nez p3, :cond_b

    .line 123
    const-string/jumbo v1, "startAttestation: cb == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 127
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isSupported()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 128
    const-string v1, "EA is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, -0x4

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    .line 130
    return-void

    .line 133
    :cond_1f
    if-eqz p1, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_38

    :cond_28
    if-nez p4, :cond_38

    .line 134
    const-string v1, "auk is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, -0x6

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    .line 136
    return-void

    .line 139
    :cond_38
    const/4 v1, -0x5

    if-eqz p2, :cond_c1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_c1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x80

    if-le v2, v3, :cond_4e

    goto :goto_c1

    .line 146
    :cond_4e
    :try_start_4e
    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->bindService()Z

    move-result v2

    if-nez v2, :cond_62

    .line 147
    const-string v1, "bind request fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v1, -0x7

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    .line 149
    return-void

    .line 152
    :cond_62
    new-instance v2, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;Z)V

    .line 153
    .local v2, "requestInfo":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->addToTrackMap(Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Z

    move-result v3

    if-nez v3, :cond_75

    .line 154
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    .line 155
    return-void

    .line 158
    :cond_75
    iget-object v1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    if-eqz v1, :cond_90

    .line 159
    invoke-static {v2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmNonce(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmAuk(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmCb(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    move-result-object v5

    .line 160
    invoke-virtual {v5, p2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->getEaAttestationCb(Ljava/lang/String;)Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback;

    move-result-object v5

    invoke-static {v2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->-$$Nest$fgetmOnPrem(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Z

    move-result v6

    .line 159
    invoke-interface {v1, v3, v4, v5, v6}, Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;->enhancedAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback;Z)V

    .line 162
    :cond_90
    const-string v1, "enhancedAttestation requested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_95} :catch_96

    .line 163
    return-void

    .line 164
    .end local v2    # "requestInfo":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;
    :catch_96
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAttestation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    .end local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->removeFromTrackMap(Ljava/lang/String;)V

    .line 169
    const/4 v0, -0x1

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    .line 170
    return-void

    .line 140
    :cond_c1
    :goto_c1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nonce len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_d3

    const-string/jumbo v3, "null"

    goto :goto_dc

    :cond_d3
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_dc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    .line 142
    return-void
.end method


# virtual methods
.method isSupported()Z
    .registers 3

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isDongleDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 58
    return v1

    .line 60
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isKnoxVersionSupported()Z

    move-result v0

    if-nez v0, :cond_f

    .line 61
    return v1

    .line 63
    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isSepLiteDevice()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isJdmDevice()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 64
    :cond_1b
    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isEaSupportedFromSepLite()Z

    move-result v0

    if-nez v0, :cond_22

    .line 65
    return v1

    .line 68
    :cond_22
    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized removeFromTrackMap(Ljava/lang/String;)V
    .registers 5
    .param p1, "nonce"    # Ljava/lang/String;

    monitor-enter p0

    .line 257
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v0, "SEMEAPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeFromTrackMap: size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    if-nez v0, :cond_4e

    .line 262
    const-string v0, "SEMEAPolicy"

    const-string v1, "Map is empty, call unBindService: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    .line 264
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_50

    .line 266
    .end local p0    # "this":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    :cond_4e
    monitor-exit p0

    return-void

    .line 256
    .end local p1    # "nonce":Ljava/lang/String;
    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method startAttestation(Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;)V
    .registers 5
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "cb"    # Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    .line 112
    const-string v0, "SEMEAPolicy"

    const-string/jumbo v1, "startAttestation on-prem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;Z)V

    .line 114
    return-void
.end method

.method startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;)V
    .registers 6
    .param p1, "auk"    # Ljava/lang/String;
    .param p2, "nonce"    # Ljava/lang/String;
    .param p3, "cb"    # Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    .line 116
    const-string v0, "SEMEAPolicy"

    const-string/jumbo v1, "startAttestation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;Z)V

    .line 118
    return-void
.end method
