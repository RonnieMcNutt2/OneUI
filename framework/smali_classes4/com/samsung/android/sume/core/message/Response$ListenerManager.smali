.class final Lcom/samsung/android/sume/core/message/Response$ListenerManager;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/message/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListenerManager"
.end annotation


# static fields
.field private static volatile sInstance:Lcom/samsung/android/sume/core/message/Response$ListenerManager;


# instance fields
.field private final consumerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/message/Message;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->consumerMap:Ljava/util/Map;

    .line 184
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/sume/core/message/Response$ListenerManager;
    .registers 2

    .line 172
    sget-object v0, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->sInstance:Lcom/samsung/android/sume/core/message/Response$ListenerManager;

    if-nez v0, :cond_17

    .line 173
    const-class v0, Lcom/samsung/android/sume/core/message/Response$ListenerManager;

    monitor-enter v0

    .line 174
    :try_start_7
    sget-object v1, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->sInstance:Lcom/samsung/android/sume/core/message/Response$ListenerManager;

    if-nez v1, :cond_12

    .line 175
    new-instance v1, Lcom/samsung/android/sume/core/message/Response$ListenerManager;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/message/Response$ListenerManager;-><init>()V

    sput-object v1, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->sInstance:Lcom/samsung/android/sume/core/message/Response$ListenerManager;

    .line 177
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 179
    :cond_17
    :goto_17
    sget-object v0, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->sInstance:Lcom/samsung/android/sume/core/message/Response$ListenerManager;

    return-object v0
.end method


# virtual methods
.method clear()V
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->consumerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 198
    return-void
.end method

.method register(Ljava/util/function/Consumer;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/message/Message;",
            ">;)I"
        }
    .end annotation

    .line 187
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/samsung/android/sume/core/message/Message;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 188
    .local v0, "id":I
    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->consumerMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return v0
.end method

.method unRegister(I)Ljava/util/function/Consumer;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/message/Message;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->consumerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    return-object v0
.end method
