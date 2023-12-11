.class public Lcom/samsung/android/sepunion/SemUnionManager;
.super Ljava/lang/Object;
.source "SemUnionManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final mLock:Ljava/lang/Object;

.field private static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static final sManagerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sNeedInitialize:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/sepunion/IUnionManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 17
    const-class v0, Lcom/samsung/android/sepunion/SemUnionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sepunion/SemUnionManager;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/SemUnionManager;->mLock:Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/SemUnionManager;->sConstructorMap:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/SemUnionManager;->sManagerMap:Ljava/util/HashMap;

    .line 28
    sget-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForManager:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/sepunion/SemUnionManager;->sManagerMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_27

    .line 33
    :cond_3a
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sepunion/SemUnionManager;->sNeedInitialize:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sepunion/SemUnionManager;-><init>(Landroid/content/Context;Lcom/samsung/android/sepunion/IUnionManager;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sepunion/IUnionManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/sepunion/IUnionManager;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mContext:Landroid/content/Context;

    .line 41
    if-nez p2, :cond_e

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemUnionManager;->getService()Lcom/samsung/android/sepunion/IUnionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    goto :goto_10

    .line 44
    :cond_e
    iput-object p2, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    .line 47
    :goto_10
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemUnionManager;->initializeManagerMapData()V

    .line 48
    return-void
.end method

.method private getConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .registers 7
    .param p1, "classPath"    # Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 121
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    :try_start_2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    .line 122
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_13} :catch_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_13} :catch_15

    move-object v1, v2

    goto :goto_1e

    .line 125
    :catch_15
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1f

    .line 123
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1a
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 127
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1e
    nop

    .line 128
    :goto_1f
    return-object v1
.end method

.method private getService()Lcom/samsung/android/sepunion/IUnionManager;
    .registers 4

    .line 69
    nop

    .line 70
    const-string/jumbo v0, "sepunion"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/samsung/android/sepunion/IUnionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IUnionManager;

    move-result-object v0

    .line 71
    .local v0, "service":Lcom/samsung/android/sepunion/IUnionManager;
    if-nez v0, :cond_15

    .line 72
    sget-object v1, Lcom/samsung/android/sepunion/SemUnionManager;->TAG:Ljava/lang/String;

    const-string v2, "IUnionManager is NULL"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_15
    return-object v0
.end method

.method private initializeManagerMapData()V
    .registers 8

    .line 51
    sget-object v0, Lcom/samsung/android/sepunion/SemUnionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_3
    sget-boolean v1, Lcom/samsung/android/sepunion/SemUnionManager;->sNeedInitialize:Z

    if-eqz v1, :cond_67

    .line 53
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 54
    .local v1, "callingUid":I
    sget-object v2, Lcom/samsung/android/sepunion/SemUnionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initializeManagerMapData("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") context = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    sget-object v3, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForManager:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 57
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 58
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/samsung/android/sepunion/SemUnionManager;->getConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    move-object v2, v6

    .line 59
    if-eqz v2, :cond_63

    .line 60
    sget-object v6, Lcom/samsung/android/sepunion/SemUnionManager;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_63
    goto :goto_3f

    .line 63
    :cond_64
    const/4 v3, 0x0

    sput-boolean v3, Lcom/samsung/android/sepunion/SemUnionManager;->sNeedInitialize:Z

    .line 65
    .end local v1    # "callingUid":I
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_67
    monitor-exit v0

    .line 66
    return-void

    .line 65
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public static isUnionService(Ljava/lang/String;)Z
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/samsung/android/sepunion/SemUnionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_3
    sget-object v1, Lcom/samsung/android/sepunion/SemUnionManager;->sManagerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 86
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method


# virtual methods
.method public getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/samsung/android/sepunion/SemUnionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSemSystemService : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    if-nez v0, :cond_23

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemUnionManager;->getService()Lcom/samsung/android/sepunion/IUnionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    .line 142
    :cond_23
    const/4 v0, 0x0

    .line 144
    .local v0, "b":Landroid/os/IBinder;
    :try_start_24
    iget-object v1, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/sepunion/IUnionManager;->getSemSystemService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2f} :catch_31

    move-object v0, v1

    .line 147
    goto :goto_35

    .line 145
    :catch_31
    move-exception v1

    .line 146
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 148
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_35
    return-object v0
.end method

.method public getUnionService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/samsung/android/sepunion/SemUnionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUnionService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v0, Lcom/samsung/android/sepunion/SemUnionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_22
    sget-boolean v1, Lcom/samsung/android/sepunion/SemUnionManager;->sNeedInitialize:Z

    if-eqz v1, :cond_29

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemUnionManager;->initializeManagerMapData()V

    .line 102
    :cond_29
    sget-object v1, Lcom/samsung/android/sepunion/SemUnionManager;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_51

    .line 103
    .local v1, "t":Ljava/lang/reflect/Constructor;
    const/4 v2, 0x0

    .line 105
    .local v2, "obj":Ljava/lang/Object;
    const/4 v3, 0x1

    :try_start_33
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3e
    .catch Ljava/lang/InstantiationException; {:try_start_33 .. :try_end_3e} :catch_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_33 .. :try_end_3e} :catch_45
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_33 .. :try_end_3e} :catch_40
    .catchall {:try_start_33 .. :try_end_3e} :catchall_51

    move-object v2, v3

    .line 112
    :goto_3f
    goto :goto_4f

    .line 110
    :catch_40
    move-exception v3

    .line 111
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_41
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4f

    .line 108
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_45
    move-exception v3

    .line 109
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_3f

    .line 106
    :catch_4a
    move-exception v3

    .line 107
    .local v3, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/InstantiationException;
    goto :goto_3f

    .line 113
    :goto_4f
    monitor-exit v0

    return-object v2

    .line 114
    .end local v1    # "t":Ljava/lang/reflect/Constructor;
    .end local v2    # "obj":Ljava/lang/Object;
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_41 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public setDumpEnabled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    if-nez v0, :cond_a

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemUnionManager;->getService()Lcom/samsung/android/sepunion/IUnionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    .line 164
    :cond_a
    :try_start_a
    sget-object v0, Lcom/samsung/android/sepunion/SemUnionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDumpEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemUnionManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sepunion/IUnionManager;->setDumpEnabled(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_28} :catch_29

    .line 168
    goto :goto_2d

    .line 166
    :catch_29
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 169
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2d
    return-void
.end method
