.class public final Landroid/security/net/config/ApplicationConfig;
.super Ljava/lang/Object;
.source "ApplicationConfig.java"


# static fields
.field private static sInstance:Landroid/security/net/config/ApplicationConfig;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mConfigSource:Landroid/security/net/config/ConfigSource;

.field private mConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

.field private mInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/security/net/config/ApplicationConfig;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/security/net/config/ConfigSource;)V
    .registers 3
    .param p1, "configSource"    # Landroid/security/net/config/ConfigSource;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mLock:Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z

    .line 48
    return-void
.end method

.method private ensureInitialized()V
    .registers 3

    .line 171
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_3
    iget-boolean v1, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z

    if-eqz v1, :cond_9

    .line 173
    monitor-exit v0

    return-void

    .line 175
    :cond_9
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    invoke-interface {v1}, Landroid/security/net/config/ConfigSource;->getPerDomainConfigs()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    .line 176
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    invoke-interface {v1}, Landroid/security/net/config/ConfigSource;->getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v1

    iput-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 177
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    .line 178
    new-instance v1, Landroid/security/net/config/RootTrustManager;

    invoke-direct {v1, p0}, Landroid/security/net/config/RootTrustManager;-><init>(Landroid/security/net/config/ApplicationConfig;)V

    iput-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 179
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z

    .line 180
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public static getDefaultInstance()Landroid/security/net/config/ApplicationConfig;
    .registers 2

    .line 190
    sget-object v0, Landroid/security/net/config/ApplicationConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_3
    sget-object v1, Landroid/security/net/config/ApplicationConfig;->sInstance:Landroid/security/net/config/ApplicationConfig;

    monitor-exit v0

    return-object v1

    .line 192
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static setDefaultInstance(Landroid/security/net/config/ApplicationConfig;)V
    .registers 3
    .param p0, "config"    # Landroid/security/net/config/ApplicationConfig;

    .line 184
    sget-object v0, Landroid/security/net/config/ApplicationConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    sput-object p0, Landroid/security/net/config/ApplicationConfig;->sInstance:Landroid/security/net/config/ApplicationConfig;

    .line 186
    monitor-exit v0

    .line 187
    return-void

    .line 186
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method


# virtual methods
.method public getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;
    .registers 10
    .param p1, "hostname"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    .line 72
    if-eqz p1, :cond_a4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a4

    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-nez v0, :cond_11

    goto/16 :goto_a4

    .line 75
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_9b

    .line 79
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_36

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 88
    :cond_36
    const/4 v0, 0x0

    .line 89
    .local v0, "bestMatch":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 90
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/security/net/config/Domain;

    .line 91
    .local v4, "domain":Landroid/security/net/config/Domain;
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/security/net/config/NetworkSecurityConfig;

    .line 93
    .local v5, "config":Landroid/security/net/config/NetworkSecurityConfig;
    iget-object v6, v4, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 94
    return-object v5

    .line 98
    :cond_5a
    iget-boolean v6, v4, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    if-eqz v6, :cond_90

    iget-object v6, v4, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    .line 99
    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_90

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, v4, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v2, :cond_90

    .line 101
    if-nez v0, :cond_7d

    .line 102
    move-object v0, v3

    goto :goto_90

    .line 103
    :cond_7d
    iget-object v6, v4, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/security/net/config/Domain;

    iget-object v7, v7, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_90

    .line 104
    move-object v0, v3

    .line 107
    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    .end local v4    # "domain":Landroid/security/net/config/Domain;
    .end local v5    # "config":Landroid/security/net/config/NetworkSecurityConfig;
    :cond_90
    :goto_90
    goto :goto_3d

    .line 108
    :cond_91
    if-eqz v0, :cond_98

    .line 109
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/security/net/config/NetworkSecurityConfig;

    return-object v1

    .line 112
    :cond_98
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object v1

    .line 76
    .end local v0    # "bestMatch":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    :cond_9b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "hostname must not begin with a ."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_a4
    :goto_a4
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object v0
.end method

.method public getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 2

    .line 120
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    .line 121
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public handleTrustStorageUpdate()V
    .registers 6

    .line 151
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_3
    iget-boolean v1, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z

    if-nez v1, :cond_9

    .line 155
    monitor-exit v0

    return-void

    .line 157
    :cond_9
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v1}, Landroid/security/net/config/NetworkSecurityConfig;->handleTrustStorageUpdate()V

    .line 158
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-eqz v1, :cond_41

    .line 159
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    .line 160
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 161
    .local v1, "updatedConfigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v2, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 162
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/security/net/config/NetworkSecurityConfig;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 163
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v4}, Landroid/security/net/config/NetworkSecurityConfig;->handleTrustStorageUpdate()V

    .line 165
    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    :cond_40
    goto :goto_23

    .line 167
    .end local v1    # "updatedConfigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/NetworkSecurityConfig;>;"
    :cond_41
    monitor-exit v0

    .line 168
    return-void

    .line 167
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public hasPerDomainConfigs()Z
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    .line 55
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public isCleartextTrafficPermitted()Z
    .registers 4

    .line 130
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    .line 131
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-eqz v0, :cond_24

    .line 132
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 133
    .local v1, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v2}, Landroid/security/net/config/NetworkSecurityConfig;->isCleartextTrafficPermitted()Z

    move-result v2

    if-nez v2, :cond_23

    .line 134
    const/4 v0, 0x0

    return v0

    .line 136
    .end local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    :cond_23
    goto :goto_b

    .line 139
    :cond_24
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .line 147
    invoke-virtual {p0, p1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method
