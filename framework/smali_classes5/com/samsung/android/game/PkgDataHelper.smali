.class public Lcom/samsung/android/game/PkgDataHelper;
.super Ljava/lang/Object;
.source "PkgDataHelper.java"


# static fields
.field private static final MSG_APP_CREATE:I = 0x271a

.field private static final TAG:Ljava/lang/String; = "PkgDataHelper"

.field private static mInstance:Lcom/samsung/android/game/PkgDataHelper;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPkgDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/game/PkgData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/game/PkgDataHelper;->mInstance:Lcom/samsung/android/game/PkgDataHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/PkgDataHelper;->mPkgDataMap:Ljava/util/HashMap;

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/PkgDataHelper;->mHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/game/PkgDataHelper;
    .registers 2

    const-class v0, Lcom/samsung/android/game/PkgDataHelper;

    monitor-enter v0

    .line 26
    :try_start_3
    sget-object v1, Lcom/samsung/android/game/PkgDataHelper;->mInstance:Lcom/samsung/android/game/PkgDataHelper;

    if-nez v1, :cond_e

    .line 27
    new-instance v1, Lcom/samsung/android/game/PkgDataHelper;

    invoke-direct {v1}, Lcom/samsung/android/game/PkgDataHelper;-><init>()V

    sput-object v1, Lcom/samsung/android/game/PkgDataHelper;->mInstance:Lcom/samsung/android/game/PkgDataHelper;

    .line 29
    :cond_e
    sget-object v1, Lcom/samsung/android/game/PkgDataHelper;->mInstance:Lcom/samsung/android/game/PkgDataHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 25
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized dumpPkgDataHelper(Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 126
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/game/PkgDataHelper;->mPkgDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 127
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 128
    .local v2, "userId":Ljava/lang/Integer;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 129
    .local v3, "userPkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 130
    .local v5, "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/game/PkgData;

    .line 131
    .local v6, "pkgData":Lcom/samsung/android/game/PkgData;
    if-eqz v6, :cond_12b

    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v7, "sb":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Category: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/samsung/android/game/PkgData;->getCategory()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v6}, Lcom/samsung/android/game/PkgData;->getCategory()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_11d

    .line 137
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", GTC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/samsung/android/game/PkgData;->getCpuLevel()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/samsung/android/game/PkgData;->getGpuLevel()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/samsung/android/game/PkgData;->getShiftTemperature()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", GameSDK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/samsung/android/game/PkgData;->getCpuMinPercent()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/samsung/android/game/PkgData;->getGpuMinPercent()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", UserID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/samsung/android/game/PkgData;->getUserID()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v6}, Lcom/samsung/android/game/PkgData;->getGovernorSetting()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11d

    .line 141
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", Setting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/samsung/android/game/PkgData;->getGovernorSetting()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .end local p0    # "this":Lcom/samsung/android/game/PkgDataHelper;
    :cond_11d
    if-eqz p1, :cond_12b

    .line 146
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 147
    const-string v8, "PkgDataHelper"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12b
    .catchall {:try_start_1 .. :try_end_12b} :catchall_131

    .line 150
    .end local v5    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    .end local v6    # "pkgData":Lcom/samsung/android/game/PkgData;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_12b
    goto/16 :goto_2b

    .line 151
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;>;"
    .end local v2    # "userId":Ljava/lang/Integer;
    .end local v3    # "userPkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    :cond_12d
    goto/16 :goto_b

    .line 152
    :cond_12f
    monitor-exit p0

    return-void

    .line 125
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_131
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getGamePkgData(Ljava/lang/String;)Lcom/samsung/android/game/PkgData;
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    monitor-enter p0

    .line 202
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/game/PkgDataHelper;->getGamePkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 202
    .end local p0    # "this":Lcom/samsung/android/game/PkgDataHelper;
    .end local p1    # "pkgName":Ljava/lang/String;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getGamePkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userID"    # I

    monitor-enter p0

    .line 182
    :try_start_1
    const-string v0, "PkgDataHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getGamePkgData(). "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "resultData":Lcom/samsung/android/game/PkgData;
    iget-object v1, p0, Lcom/samsung/android/game/PkgDataHelper;->mPkgDataMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 185
    iget-object v1, p0, Lcom/samsung/android/game/PkgDataHelper;->mPkgDataMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 186
    .local v1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    if-eqz v1, :cond_47

    if-eqz p1, :cond_47

    .line 187
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/PkgData;

    .line 188
    .local v2, "tempData":Lcom/samsung/android/game/PkgData;
    if-eqz v2, :cond_47

    .line 189
    invoke-virtual {v2}, Lcom/samsung/android/game/PkgData;->getCategory()I

    move-result v3
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_49

    const/4 v4, 0x1

    if-ne v3, v4, :cond_47

    .line 190
    move-object v0, v2

    .line 194
    .end local v1    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    .end local v2    # "tempData":Lcom/samsung/android/game/PkgData;
    .end local p0    # "this":Lcom/samsung/android/game/PkgDataHelper;
    :cond_47
    monitor-exit p0

    return-object v0

    .line 181
    .end local v0    # "resultData":Lcom/samsung/android/game/PkgData;
    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "userID":I
    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userID"    # I

    monitor-enter p0

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "resultData":Lcom/samsung/android/game/PkgData;
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/game/PkgDataHelper;->mPkgDataMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 159
    iget-object v1, p0, Lcom/samsung/android/game/PkgDataHelper;->mPkgDataMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 160
    .local v1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    if-eqz v1, :cond_25

    if-eqz p1, :cond_25

    .line 161
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/PkgData;
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_27

    move-object v0, v2

    .line 164
    .end local v1    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    .end local p0    # "this":Lcom/samsung/android/game/PkgDataHelper;
    :cond_25
    monitor-exit p0

    return-object v0

    .line 155
    .end local v0    # "resultData":Lcom/samsung/android/game/PkgData;
    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "userID":I
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPkgDataSet(I)Ljava/util/Collection;
    .registers 5
    .param p1, "userID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/game/PkgData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 77
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 78
    .local v0, "set":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/game/PkgData;>;"
    iget-object v1, p0, Lcom/samsung/android/game/PkgDataHelper;->mPkgDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 79
    iget-object v1, p0, Lcom/samsung/android/game/PkgDataHelper;->mPkgDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 80
    .local v1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    if-eqz v1, :cond_25

    .line 81
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_27

    move-object v0, v2

    .line 84
    .end local v1    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    .end local p0    # "this":Lcom/samsung/android/game/PkgDataHelper;
    :cond_25
    monitor-exit p0

    return-object v0

    .line 76
    .end local v0    # "set":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/game/PkgData;>;"
    .end local p1    # "userID":I
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPkgNameSet(I)Ljava/util/Set;
    .registers 5
    .param p1, "userID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 40
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 41
    .local v0, "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/game/PkgDataHelper;->mPkgDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 42
    iget-object v1, p0, Lcom/samsung/android/game/PkgDataHelper;->mPkgDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 43
    .local v1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    if-eqz v1, :cond_25

    .line 44
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_27

    move-object v0, v2

    .line 47
    .end local v1    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    .end local p0    # "this":Lcom/samsung/android/game/PkgDataHelper;
    :cond_25
    monitor-exit p0

    return-object v0

    .line 39
    .end local v0    # "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "userID":I
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPkgNameUserIdMap()Ljava/util/HashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 55
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v0, "pkgNameUserId":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v1, p0, Lcom/samsung/android/game/PkgDataHelper;->mPkgDataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 58
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 59
    .local v3, "key_UserId":Ljava/lang/Integer;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 61
    .local v4, "userPkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 63
    .local v6, "values":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 64
    .local v7, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4e

    .line 65
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_54

    .line 67
    .end local v8    # "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p0    # "this":Lcom/samsung/android/game/PkgDataHelper;
    :cond_4e
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 69
    .restart local v8    # "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_54
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5f

    .line 71
    nop

    .end local v6    # "values":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_30

    .line 72
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;>;"
    .end local v3    # "key_UserId":Ljava/lang/Integer;
    .end local v4    # "userPkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    :cond_5c
    goto :goto_10

    .line 73
    :cond_5d
    monitor-exit p0

    return-object v0

    .line 54
    .end local v0    # "pkgNameUserId":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :catchall_5f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyAppCreate(Ljava/lang/String;I)V
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 207
    iget-object v0, p0, Lcom/samsung/android/game/PkgDataHelper;->mHandler:Landroid/os/Handler;

    const-string v1, ", userId: "

    const-string/jumbo v2, "notifyAppCreate(), pkgName: "

    const-string v3, "PkgDataHelper"

    if-eqz v0, :cond_42

    .line 208
    const/16 v4, 0x271a

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 209
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 210
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 211
    iget-object v4, p0, Lcom/samsung/android/game/PkgDataHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v4

    .line 212
    .local v4, "sendRet":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sendRet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v0    # "m":Landroid/os/Message;
    .end local v4    # "sendRet":Z
    goto :goto_64

    .line 214
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHandler is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_64
    return-void
.end method

.method public declared-synchronized preparePkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userID"    # I

    monitor-enter p0

    .line 168
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/game/PkgDataHelper;->getPkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;

    move-result-object v0

    .line 169
    .local v0, "resultData":Lcom/samsung/android/game/PkgData;
    if-nez v0, :cond_13

    .line 170
    new-instance v1, Lcom/samsung/android/game/PkgData;

    invoke-direct {v1, p1}, Lcom/samsung/android/game/PkgData;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 171
    invoke-virtual {v0, p2}, Lcom/samsung/android/game/PkgData;->setUserID(I)V

    .line 172
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/game/PkgDataHelper;->putPkgData(Ljava/lang/String;ILcom/samsung/android/game/PkgData;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 174
    .end local p0    # "this":Lcom/samsung/android/game/PkgDataHelper;
    :cond_13
    monitor-exit p0

    return-object v0

    .line 167
    .end local v0    # "resultData":Lcom/samsung/android/game/PkgData;
    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "userID":I
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putPkgData(Ljava/lang/String;ILcom/samsung/android/game/PkgData;)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userID"    # I
    .param p3, "pkgData"    # Lcom/samsung/android/game/PkgData;

    monitor-enter p0

    .line 89
    if-eqz p1, :cond_4c

    if-eqz p3, :cond_4c

    .line 90
    :try_start_5
    const-string v0, "PkgDataHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putPkgData(). "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/game/PkgDataHelper;->mPkgDataMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 93
    .local v0, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    if-nez v0, :cond_45

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 95
    iget-object v1, p0, Lcom/samsung/android/game/PkgDataHelper;->mPkgDataMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local p0    # "this":Lcom/samsung/android/game/PkgDataHelper;
    :cond_45
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_49

    goto :goto_4c

    .line 88
    .end local v0    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "userID":I
    .end local p3    # "pkgData":Lcom/samsung/android/game/PkgData;
    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1

    .line 100
    .restart local p0    # "this":Lcom/samsung/android/game/PkgDataHelper;
    .restart local p1    # "pkgName":Ljava/lang/String;
    .restart local p2    # "userID":I
    .restart local p3    # "pkgData":Lcom/samsung/android/game/PkgData;
    :cond_4c
    :goto_4c
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removePkgData(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userID"    # I

    monitor-enter p0

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/game/PkgDataHelper;->mPkgDataMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 105
    const-string v0, "PkgDataHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removePkgData(). "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/game/PkgDataHelper;->mPkgDataMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 107
    .local v0, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    if-eqz v0, :cond_52

    if-eqz p1, :cond_52

    .line 108
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 111
    iget-object v1, p0, Lcom/samsung/android/game/PkgDataHelper;->mPkgDataMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_54

    .line 115
    .end local v0    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    .end local p0    # "this":Lcom/samsung/android/game/PkgDataHelper;
    :cond_52
    monitor-exit p0

    return-void

    .line 103
    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "userID":I
    :catchall_54
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeUser(I)V
    .registers 5
    .param p1, "userId"    # I

    monitor-enter p0

    .line 119
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/game/PkgDataHelper;->mPkgDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 120
    const-string v0, "PkgDataHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeUserId(). userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/game/PkgDataHelper;->mPkgDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 123
    .end local p0    # "this":Lcom/samsung/android/game/PkgDataHelper;
    :cond_2f
    monitor-exit p0

    return-void

    .line 118
    .end local p1    # "userId":I
    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFgCheckHandler(Landroid/os/Handler;)V
    .registers 2
    .param p1, "fgCheckHandler"    # Landroid/os/Handler;

    .line 222
    iput-object p1, p0, Lcom/samsung/android/game/PkgDataHelper;->mHandler:Landroid/os/Handler;

    .line 223
    return-void
.end method

.method public declared-synchronized size()I
    .registers 2

    monitor-enter p0

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/game/PkgDataHelper;->mPkgDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 36
    .end local p0    # "this":Lcom/samsung/android/game/PkgDataHelper;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
