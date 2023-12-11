.class public Landroid/app/ApplicationLoaders;
.super Ljava/lang/Object;
.source "ApplicationLoaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationLoaders$CachedClassLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationLoaders"

.field private static final gApplicationLoaders:Landroid/app/ApplicationLoaders;


# instance fields
.field private final mLoaders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemLibsCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/ApplicationLoaders$CachedClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 304
    new-instance v0, Landroid/app/ApplicationLoaders;

    invoke-direct {v0}, Landroid/app/ApplicationLoaders;-><init>()V

    sput-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mSystemLibsCacheMap:Ljava/util/Map;

    return-void
.end method

.method private createAndCacheNonBootclasspathSystemClassLoader(Landroid/content/pm/SharedLibraryInfo;)V
    .registers 18
    .param p1, "lib"    # Landroid/content/pm/SharedLibraryInfo;

    .line 179
    move-object/from16 v12, p0

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 180
    .local v13, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v14

    .line 183
    .local v14, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    const/4 v0, 0x0

    .line 184
    .local v0, "sharedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ClassLoader;>;"
    if-eqz v14, :cond_60

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 186
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/SharedLibraryInfo;

    .line 187
    .local v2, "dependency":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "dependencyPath":Ljava/lang/String;
    iget-object v4, v12, Landroid/app/ApplicationLoaders;->mSystemLibsCacheMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ApplicationLoaders$CachedClassLoader;

    .line 190
    .local v4, "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    if-eqz v4, :cond_3b

    .line 195
    iget-object v5, v4, Landroid/app/ApplicationLoaders$CachedClassLoader;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v2    # "dependency":Landroid/content/pm/SharedLibraryInfo;
    .end local v3    # "dependencyPath":Ljava/lang/String;
    .end local v4    # "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    goto :goto_1b

    .line 191
    .restart local v2    # "dependency":Landroid/content/pm/SharedLibraryInfo;
    .restart local v3    # "dependencyPath":Ljava/lang/String;
    .restart local v4    # "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    :cond_3b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find dependency "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of cachedlibrary "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    .end local v2    # "dependency":Landroid/content/pm/SharedLibraryInfo;
    .end local v3    # "dependencyPath":Ljava/lang/String;
    .end local v4    # "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    :cond_5e
    move-object v15, v0

    goto :goto_61

    .line 184
    :cond_60
    move-object v15, v0

    .line 200
    .end local v0    # "sharedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ClassLoader;>;"
    .local v15, "sharedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ClassLoader;>;"
    :goto_61
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v9, v15

    invoke-direct/range {v0 .. v11}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 205
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_9d

    .line 210
    new-instance v1, Landroid/app/ApplicationLoaders$CachedClassLoader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/ApplicationLoaders$CachedClassLoader;-><init>(Landroid/app/ApplicationLoaders$CachedClassLoader-IA;)V

    .line 211
    .local v1, "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    iput-object v0, v1, Landroid/app/ApplicationLoaders$CachedClassLoader;->loader:Ljava/lang/ClassLoader;

    .line 212
    iput-object v15, v1, Landroid/app/ApplicationLoaders$CachedClassLoader;->sharedLibraries:Ljava/util/List;

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created zygote-cached class loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ApplicationLoaders"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v2, v12, Landroid/app/ApplicationLoaders;->mSystemLibsCacheMap:Ljava/util/Map;

    invoke-interface {v2, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void

    .line 207
    .end local v1    # "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    :cond_9d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;
    .registers 31
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "isBundled"    # Z
    .param p4, "librarySearchPath"    # Ljava/lang/String;
    .param p5, "libraryPermittedPath"    # Ljava/lang/String;
    .param p6, "parent"    # Ljava/lang/ClassLoader;
    .param p7, "cacheKey"    # Ljava/lang/String;
    .param p8, "classLoaderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 106
    .local p9, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    .local p10, "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p11, "sharedLibrariesLoadedAfterApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p7

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v14

    .line 108
    .local v14, "baseParent":Ljava/lang/ClassLoader;
    iget-object v15, v1, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    monitor-enter v15

    .line 109
    if-nez p6, :cond_16

    .line 110
    move-object v0, v14

    move-object v11, v0

    .end local p6    # "parent":Ljava/lang/ClassLoader;
    .local v0, "parent":Ljava/lang/ClassLoader;
    goto :goto_18

    .line 109
    .end local v0    # "parent":Ljava/lang/ClassLoader;
    .restart local p6    # "parent":Ljava/lang/ClassLoader;
    :cond_16
    move-object/from16 v11, p6

    .line 118
    .end local p6    # "parent":Ljava/lang/ClassLoader;
    .local v11, "parent":Ljava/lang/ClassLoader;
    :goto_18
    const-wide/16 v9, 0x40

    if-ne v11, v14, :cond_7f

    .line 119
    :try_start_1c
    iget-object v0, v1, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_77

    .line 120
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_31

    .line 121
    :try_start_26
    monitor-exit v15
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_28

    return-object v0

    .line 150
    .end local v0    # "loader":Ljava/lang/ClassLoader;
    :catchall_28
    move-exception v0

    move-object/from16 v10, p4

    move-object/from16 v18, v11

    move-object/from16 v11, p5

    goto/16 :goto_9d

    .line 124
    .restart local v0    # "loader":Ljava/lang/ClassLoader;
    :cond_31
    :try_start_31
    invoke-static {v9, v10, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_77

    .line 126
    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, v11

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p8

    move-wide/from16 v16, v9

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v18, v11

    .end local v11    # "parent":Ljava/lang/ClassLoader;
    .local v18, "parent":Ljava/lang/ClassLoader;
    move-object/from16 v11, p11

    :try_start_4b
    invoke-static/range {v2 .. v11}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 131
    .local v2, "classloader":Ljava/lang/ClassLoader;
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 133
    const-string/jumbo v3, "setLayerPaths"

    move-wide/from16 v8, v16

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 134
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v3
    :try_end_5e
    .catchall {:try_start_4b .. :try_end_5e} :catchall_71

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    :try_start_62
    invoke-virtual {v3, v2, v10, v11}, Landroid/os/GraphicsEnvironment;->setLayerPaths(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 138
    if-eqz v13, :cond_6f

    .line 139
    iget-object v3, v1, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v3, v13, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_6f
    monitor-exit v15

    return-object v2

    .line 150
    .end local v0    # "loader":Ljava/lang/ClassLoader;
    .end local v2    # "classloader":Ljava/lang/ClassLoader;
    :catchall_71
    move-exception v0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    goto :goto_9d

    .end local v18    # "parent":Ljava/lang/ClassLoader;
    .restart local v11    # "parent":Ljava/lang/ClassLoader;
    :catchall_77
    move-exception v0

    move-object/from16 v10, p4

    move-object/from16 v18, v11

    move-object/from16 v11, p5

    .end local v11    # "parent":Ljava/lang/ClassLoader;
    .restart local v18    # "parent":Ljava/lang/ClassLoader;
    goto :goto_9d

    .line 144
    .end local v18    # "parent":Ljava/lang/ClassLoader;
    .restart local v11    # "parent":Ljava/lang/ClassLoader;
    :cond_7f
    move-wide v8, v9

    move-object/from16 v18, v11

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .end local v11    # "parent":Ljava/lang/ClassLoader;
    .restart local v18    # "parent":Ljava/lang/ClassLoader;
    invoke-static {v8, v9, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 145
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, v18

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-static/range {v2 .. v7}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 148
    .restart local v0    # "loader":Ljava/lang/ClassLoader;
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 149
    monitor-exit v15

    return-object v0

    .line 150
    .end local v0    # "loader":Ljava/lang/ClassLoader;
    :catchall_9c
    move-exception v0

    :goto_9d
    monitor-exit v15
    :try_end_9e
    .catchall {:try_start_62 .. :try_end_9e} :catchall_9c

    throw v0
.end method

.method public static getDefault()Landroid/app/ApplicationLoaders;
    .registers 1

    .line 43
    sget-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-object v0
.end method

.method private static sharedLibrariesEquals(Ljava/util/List;Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)Z"
        }
    .end annotation

    .line 219
    .local p0, "lhs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    .local p1, "rhs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    if-nez p0, :cond_8

    .line 220
    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 223
    :cond_8
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method addNative(Ljava/lang/ClassLoader;Ljava/util/Collection;)V
    .registers 5
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 294
    .local p2, "libPaths":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    instance-of v0, p1, Ldalvik/system/PathClassLoader;

    if-eqz v0, :cond_b

    .line 297
    move-object v0, p1

    check-cast v0, Ldalvik/system/PathClassLoader;

    .line 298
    .local v0, "baseDexClassLoader":Ldalvik/system/PathClassLoader;
    invoke-virtual {v0, p2}, Ldalvik/system/PathClassLoader;->addNativePath(Ljava/util/Collection;)V

    .line 299
    return-void

    .line 295
    .end local v0    # "baseDexClassLoader":Ldalvik/system/PathClassLoader;
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class loader is not a PathClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addPath(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 5
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "dexPath"    # Ljava/lang/String;

    .line 283
    instance-of v0, p1, Ldalvik/system/PathClassLoader;

    if-eqz v0, :cond_b

    .line 286
    move-object v0, p1

    check-cast v0, Ldalvik/system/PathClassLoader;

    .line 287
    .local v0, "baseDexClassLoader":Ldalvik/system/PathClassLoader;
    invoke-virtual {v0, p2}, Ldalvik/system/PathClassLoader;->addDexPath(Ljava/lang/String;)V

    .line 288
    return-void

    .line 284
    .end local v0    # "baseDexClassLoader":Ldalvik/system/PathClassLoader;
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class loader is not a PathClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createAndCacheNonBootclasspathSystemClassLoaders(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p1, "libs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    iget-object v0, p0, Landroid/app/ApplicationLoaders;->mSystemLibsCacheMap:Ljava/util/Map;

    if-nez v0, :cond_1f

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mSystemLibsCacheMap:Ljava/util/Map;

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 168
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SharedLibraryInfo;

    invoke-direct {p0, v1}, Landroid/app/ApplicationLoaders;->createAndCacheNonBootclasspathSystemClassLoader(Landroid/content/pm/SharedLibraryInfo;)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 170
    .end local v0    # "i":I
    :cond_1e
    return-void

    .line 162
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already cached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createAndCacheWebViewClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 16
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "libsPath"    # Ljava/lang/String;
    .param p3, "cacheKey"    # Ljava/lang/String;

    .line 272
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v11}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getCachedNonBootclasspathSystemLib(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;)Ljava/lang/ClassLoader;
    .registers 10
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "classLoaderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 234
    .local p4, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    iget-object v0, p0, Landroid/app/ApplicationLoaders;->mSystemLibsCacheMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 235
    return-object v1

    .line 239
    :cond_6
    if-nez p2, :cond_6b

    if-eqz p3, :cond_b

    goto :goto_6b

    .line 243
    :cond_b
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationLoaders$CachedClassLoader;

    .line 244
    .local v0, "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    if-nez v0, :cond_14

    .line 245
    return-object v1

    .line 249
    :cond_14
    iget-object v2, v0, Landroid/app/ApplicationLoaders$CachedClassLoader;->sharedLibraries:Ljava/util/List;

    invoke-static {p4, v2}, Landroid/app/ApplicationLoaders;->sharedLibrariesEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    const-string v3, "ApplicationLoaders"

    if-nez v2, :cond_52

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected environment loading cached library "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (real|cached): ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/app/ApplicationLoaders$CachedClassLoader;->sharedLibraries:Ljava/util/List;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-object v1

    .line 255
    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning zygote-cached class loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, v0, Landroid/app/ApplicationLoaders$CachedClassLoader;->loader:Ljava/lang/ClassLoader;

    return-object v1

    .line 240
    .end local v0    # "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    :cond_6b
    :goto_6b
    return-object v1
.end method

.method getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 19
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "isBundled"    # Z
    .param p4, "librarySearchPath"    # Ljava/lang/String;
    .param p5, "libraryPermittedPath"    # Ljava/lang/String;
    .param p6, "parent"    # Ljava/lang/ClassLoader;
    .param p7, "classLoaderName"    # Ljava/lang/String;

    .line 49
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Landroid/app/ApplicationLoaders;->getClassLoaderWithSharedLibraries(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method getClassLoaderWithSharedLibraries(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;
    .registers 23
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "isBundled"    # Z
    .param p4, "librarySearchPath"    # Ljava/lang/String;
    .param p5, "libraryPermittedPath"    # Ljava/lang/String;
    .param p6, "parent"    # Ljava/lang/ClassLoader;
    .param p7, "classLoaderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 61
    .local p8, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    .local p9, "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p10, "sharedLibrariesLoadedAfterApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, p1

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method getSharedLibraryClassLoaderWithSharedLibraries(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;
    .registers 28
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "isBundled"    # Z
    .param p4, "librarySearchPath"    # Ljava/lang/String;
    .param p5, "libraryPermittedPath"    # Ljava/lang/String;
    .param p6, "parent"    # Ljava/lang/ClassLoader;
    .param p7, "classLoaderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 77
    .local p8, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    .local p9, "sharedLibrariesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/app/ApplicationLoaders;->getCachedNonBootclasspathSystemLib(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v16

    .line 79
    .local v16, "loader":Ljava/lang/ClassLoader;
    if-eqz v16, :cond_11

    .line 80
    return-object v16

    .line 87
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 88
    .local v10, "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "ALL"

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, v10

    move-object/from16 v17, v10

    .end local v10    # "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v17, "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/app/ApplicationLoaders;->getClassLoaderWithSharedLibraries(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
