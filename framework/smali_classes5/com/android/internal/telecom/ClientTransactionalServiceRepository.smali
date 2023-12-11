.class public Lcom/android/internal/telecom/ClientTransactionalServiceRepository;
.super Ljava/lang/Object;
.source "ClientTransactionalServiceRepository.java"


# static fields
.field private static final LOOKUP_TABLE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/PhoneAccountHandle;",
            "Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->LOOKUP_TABLE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTransactionalServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;
    .registers 3
    .param p1, "pah"    # Landroid/telecom/PhoneAccountHandle;

    .line 57
    sget-object v0, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->LOOKUP_TABLE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    return-object v0
.end method

.method private hasExistingServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 3
    .param p1, "pah"    # Landroid/telecom/PhoneAccountHandle;

    .line 61
    sget-object v0, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->LOOKUP_TABLE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addNewCallForTransactionalServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;
    .registers 4
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "service":Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;
    invoke-direct {p0, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->hasExistingServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 45
    new-instance v1, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-direct {v1, p1, p0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;-><init>(Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telecom/ClientTransactionalServiceRepository;)V

    move-object v0, v1

    goto :goto_12

    .line 47
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->getTransactionalServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    move-result-object v0

    .line 50
    :goto_12
    sget-object v1, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->LOOKUP_TABLE:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-object v0
.end method

.method public removeCallFromServiceWrapper(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .registers 5
    .param p1, "pah"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->hasExistingServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 83
    const/4 v0, 0x0

    return v0

    .line 85
    :cond_8
    sget-object v0, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->LOOKUP_TABLE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    .line 86
    .local v0, "service":Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;
    invoke-virtual {v0, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->untrackCall(Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x1

    return v1
.end method

.method public removeServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 3
    .param p1, "pah"    # Landroid/telecom/PhoneAccountHandle;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->hasExistingServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 70
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_8
    sget-object v0, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->LOOKUP_TABLE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const/4 v0, 0x1

    return v0
.end method
