.class public final Lcom/android/internal/location/altitude/GeoidHeightMap;
.super Ljava/lang/Object;
.source "GeoidHeightMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/altitude/GeoidHeightMap$TileFunction;
    }
.end annotation


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static sParams:Lcom/android/internal/location/altitude/nano/MapParamsProto;


# instance fields
.field private final mCacheTiles:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/location/altitude/nano/S2TileProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/location/altitude/GeoidHeightMap;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/location/altitude/GeoidHeightMap;->mCacheTiles:Landroid/util/LruCache;

    return-void
.end method

.method private static getCacheKey(Lcom/android/internal/location/altitude/nano/MapParamsProto;J)J
    .registers 5
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "s2CellId"    # J

    .line 91
    iget v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->cacheTileS2Level:I

    invoke-static {p1, p2, v0}, Lcom/android/internal/location/altitude/S2CellIdUtils;->getParent(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getDiskToken(Lcom/android/internal/location/altitude/nano/MapParamsProto;J)Ljava/lang/String;
    .registers 5
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "s2CellId"    # J

    .line 96
    iget v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->diskTileS2Level:I

    .line 97
    invoke-static {p1, p2, v0}, Lcom/android/internal/location/altitude/S2CellIdUtils;->getParent(JI)J

    move-result-wide v0

    .line 96
    invoke-static {v0, v1}, Lcom/android/internal/location/altitude/S2CellIdUtils;->getToken(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGeoidHeights(Lcom/android/internal/location/altitude/nano/MapParamsProto;Lcom/android/internal/location/altitude/GeoidHeightMap$TileFunction;[J[D)Z
    .registers 11
    .param p1, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p2, "tileFunction"    # Lcom/android/internal/location/altitude/GeoidHeightMap$TileFunction;
    .param p3, "s2CellIds"    # [J
    .param p4, "heightsMeters"    # [D

    .line 278
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/location/altitude/GeoidHeightMap;->getUnitIntervalValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;Lcom/android/internal/location/altitude/GeoidHeightMap$TileFunction;[J[D)Z

    move-result v0

    .line 279
    .local v0, "allFound":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p4

    if-ge v1, v2, :cond_19

    .line 281
    aget-wide v2, p4, v1

    iget-wide v4, p1, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelAMeters:D

    mul-double/2addr v2, v4

    aput-wide v2, p4, v1

    .line 282
    aget-wide v2, p4, v1

    iget-wide v4, p1, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelBMeters:D

    add-double/2addr v2, v4

    aput-wide v2, p4, v1

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 284
    .end local v1    # "i":I
    :cond_19
    return v0
.end method

.method private static getIndexX(Lcom/android/internal/location/altitude/nano/MapParamsProto;JI)I
    .registers 5
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "s2CellId"    # J
    .param p3, "width"    # I

    .line 210
    invoke-static {p1, p2}, Lcom/android/internal/location/altitude/S2CellIdUtils;->getI(J)I

    move-result v0

    invoke-static {p0, v0, p3}, Lcom/android/internal/location/altitude/GeoidHeightMap;->getIndexXOrY(Lcom/android/internal/location/altitude/nano/MapParamsProto;II)I

    move-result v0

    return v0
.end method

.method private static getIndexXOrY(Lcom/android/internal/location/altitude/nano/MapParamsProto;II)I
    .registers 4
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "iOrJ"    # I
    .param p2, "widthOrHeight"    # I

    .line 219
    iget v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    rsub-int/lit8 v0, v0, 0x1e

    shr-int v0, p1, v0

    rem-int/2addr v0, p2

    return v0
.end method

.method private static getIndexY(Lcom/android/internal/location/altitude/nano/MapParamsProto;JI)I
    .registers 5
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "s2CellId"    # J
    .param p3, "height"    # I

    .line 215
    invoke-static {p1, p2}, Lcom/android/internal/location/altitude/S2CellIdUtils;->getJ(J)I

    move-result v0

    invoke-static {p0, v0, p3}, Lcom/android/internal/location/altitude/GeoidHeightMap;->getIndexXOrY(Lcom/android/internal/location/altitude/nano/MapParamsProto;II)I

    move-result v0

    return v0
.end method

.method public static getParams()Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .registers 2

    .line 85
    sget-object v0, Lcom/android/internal/location/altitude/GeoidHeightMap;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_3
    sget-object v1, Lcom/android/internal/location/altitude/GeoidHeightMap;->sParams:Lcom/android/internal/location/altitude/nano/MapParamsProto;

    monitor-exit v0

    return-object v1

    .line 87
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static getParams(Landroid/content/Context;)Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/android/internal/location/altitude/GeoidHeightMap;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_3
    sget-object v1, Lcom/android/internal/location/altitude/GeoidHeightMap;->sParams:Lcom/android/internal/location/altitude/nano/MapParamsProto;

    if-nez v1, :cond_31

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "geoid_height_map/map-params.pb"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_35

    .line 72
    .local v1, "is":Ljava/io/InputStream;
    :try_start_15
    invoke-virtual {v1}, Ljava/io/InputStream;->readAllBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/location/altitude/nano/MapParamsProto;->parseFrom([B)Lcom/android/internal/location/altitude/nano/MapParamsProto;

    move-result-object v2

    sput-object v2, Lcom/android/internal/location/altitude/GeoidHeightMap;->sParams:Lcom/android/internal/location/altitude/nano/MapParamsProto;
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_25

    .line 73
    if-eqz v1, :cond_31

    :try_start_21
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_35

    goto :goto_31

    .line 70
    :catchall_25
    move-exception v2

    if-eqz v1, :cond_30

    :try_start_28
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v3

    :try_start_2d
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    :cond_30
    :goto_30
    throw v2

    .line 75
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_31
    :goto_31
    sget-object v1, Lcom/android/internal/location/altitude/GeoidHeightMap;->sParams:Lcom/android/internal/location/altitude/nano/MapParamsProto;

    monitor-exit v0

    return-object v1

    .line 76
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v1
.end method

.method private static getUnitIntervalValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;Lcom/android/internal/location/altitude/GeoidHeightMap$TileFunction;[J[D)Z
    .registers 14
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "tileFunction"    # Lcom/android/internal/location/altitude/GeoidHeightMap$TileFunction;
    .param p2, "s2CellIds"    # [J
    .param p3, "values"    # [D

    .line 108
    array-length v0, p2

    .line 110
    .local v0, "len":I
    new-array v1, v0, [Lcom/android/internal/location/altitude/nano/S2TileProto;

    .line 111
    .local v1, "tiles":[Lcom/android/internal/location/altitude/nano/S2TileProto;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    const-wide/16 v3, 0x0

    if-ge v2, v0, :cond_21

    .line 112
    aget-wide v5, p2, v2

    cmp-long v3, v5, v3

    if-eqz v3, :cond_1a

    .line 113
    aget-wide v3, p2, v2

    invoke-static {p0, v3, v4}, Lcom/android/internal/location/altitude/GeoidHeightMap;->getCacheKey(Lcom/android/internal/location/altitude/nano/MapParamsProto;J)J

    move-result-wide v3

    .line 114
    .local v3, "cacheKey":J
    invoke-interface {p1, v3, v4}, Lcom/android/internal/location/altitude/GeoidHeightMap$TileFunction;->getTile(J)Lcom/android/internal/location/altitude/nano/S2TileProto;

    move-result-object v5

    aput-object v5, v1, v2

    .line 116
    .end local v3    # "cacheKey":J
    :cond_1a
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    aput-wide v3, p3, v2

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 119
    .end local v2    # "i":I
    :cond_21
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_22
    if-ge v2, v0, :cond_3d

    .line 120
    aget-object v5, v1, v2

    if-eqz v5, :cond_3a

    aget-wide v5, p3, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_31

    .line 121
    goto :goto_3a

    .line 124
    :cond_31
    invoke-static {p0, p2, v1, v2, p3}, Lcom/android/internal/location/altitude/GeoidHeightMap;->mergeByteBufferValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J[Lcom/android/internal/location/altitude/nano/S2TileProto;I[D)V

    .line 125
    invoke-static {p0, p2, v1, v2, p3}, Lcom/android/internal/location/altitude/GeoidHeightMap;->mergeByteJpegValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J[Lcom/android/internal/location/altitude/nano/S2TileProto;I[D)V

    .line 126
    invoke-static {p0, p2, v1, v2, p3}, Lcom/android/internal/location/altitude/GeoidHeightMap;->mergeBytePngValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J[Lcom/android/internal/location/altitude/nano/S2TileProto;I[D)V

    .line 119
    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 129
    .end local v2    # "i":I
    :cond_3d
    const/4 v2, 0x1

    .line 130
    .local v2, "allFound":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3f
    if-ge v5, v0, :cond_63

    .line 131
    aget-wide v6, p2, v5

    cmp-long v6, v6, v3

    if-nez v6, :cond_48

    .line 132
    goto :goto_60

    .line 134
    :cond_48
    aget-wide v6, p3, v5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 135
    const/4 v2, 0x0

    goto :goto_60

    .line 137
    :cond_52
    aget-wide v6, p3, v5

    double-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    int-to-double v6, v6

    const-wide v8, 0x406fe00000000000L    # 255.0

    div-double/2addr v6, v8

    aput-wide v6, p3, v5

    .line 130
    :goto_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    .line 140
    .end local v5    # "i":I
    :cond_63
    return v2
.end method

.method static synthetic lambda$loadFromCacheAndDisk$0([J[Lcom/android/internal/location/altitude/nano/S2TileProto;J)Lcom/android/internal/location/altitude/nano/S2TileProto;
    .registers 7
    .param p0, "cacheKeys"    # [J
    .param p1, "loadedTiles"    # [Lcom/android/internal/location/altitude/nano/S2TileProto;
    .param p2, "cacheKey"    # J

    .line 335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 336
    aget-wide v1, p0, v0

    cmp-long v1, v1, p2

    if-nez v1, :cond_d

    .line 337
    aget-object v1, p1, v0

    return-object v1

    .line 335
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 340
    .end local v0    # "i":I
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$mergeFromDiskTile$1(Lcom/android/internal/location/altitude/nano/S2TileProto;J)Lcom/android/internal/location/altitude/nano/S2TileProto;
    .registers 3
    .param p0, "diskTile"    # Lcom/android/internal/location/altitude/nano/S2TileProto;
    .param p1, "cacheKey"    # J

    .line 355
    return-object p0
.end method

.method private loadFromCacheAndDisk(Lcom/android/internal/location/altitude/nano/MapParamsProto;Landroid/content/Context;[J)Lcom/android/internal/location/altitude/GeoidHeightMap$TileFunction;
    .registers 21
    .param p1, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "s2CellIds"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    move-object/from16 v8, p1

    move-object/from16 v9, p3

    array-length v10, v9

    .line 293
    .local v10, "len":I
    new-array v11, v10, [J

    .line 294
    .local v11, "cacheKeys":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    const-wide/16 v12, 0x0

    if-ge v0, v10, :cond_1e

    .line 295
    aget-wide v1, v9, v0

    cmp-long v1, v1, v12

    if-nez v1, :cond_13

    .line 296
    goto :goto_1b

    .line 298
    :cond_13
    aget-wide v1, v9, v0

    invoke-static {v8, v1, v2}, Lcom/android/internal/location/altitude/GeoidHeightMap;->getCacheKey(Lcom/android/internal/location/altitude/nano/MapParamsProto;J)J

    move-result-wide v1

    aput-wide v1, v11, v0

    .line 294
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 302
    .end local v0    # "i":I
    :cond_1e
    new-array v14, v10, [Lcom/android/internal/location/altitude/nano/S2TileProto;

    .line 303
    .local v14, "loadedTiles":[Lcom/android/internal/location/altitude/nano/S2TileProto;
    new-array v15, v10, [Ljava/lang/String;

    .line 304
    .local v15, "diskTokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_23
    if-ge v0, v10, :cond_68

    .line 305
    aget-wide v1, v9, v0

    cmp-long v1, v1, v12

    if-eqz v1, :cond_63

    aget-object v1, v15, v0

    if-eqz v1, :cond_32

    .line 306
    move-object/from16 v7, p0

    goto :goto_65

    .line 308
    :cond_32
    move-object/from16 v7, p0

    iget-object v1, v7, Lcom/android/internal/location/altitude/GeoidHeightMap;->mCacheTiles:Landroid/util/LruCache;

    aget-wide v2, v11, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/location/altitude/nano/S2TileProto;

    aput-object v1, v14, v0

    .line 309
    aget-wide v1, v11, v0

    invoke-static {v8, v1, v2}, Lcom/android/internal/location/altitude/GeoidHeightMap;->getDiskToken(Lcom/android/internal/location/altitude/nano/MapParamsProto;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v0

    .line 312
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_4e
    if-ge v1, v10, :cond_65

    .line 313
    aget-wide v2, v11, v1

    aget-wide v4, v11, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_60

    .line 314
    aget-object v2, v14, v0

    aput-object v2, v14, v1

    .line 315
    aget-object v2, v15, v0

    aput-object v2, v15, v1

    .line 312
    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 305
    .end local v1    # "j":I
    :cond_63
    move-object/from16 v7, p0

    .line 304
    :cond_65
    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_68
    move-object/from16 v7, p0

    .line 321
    .end local v0    # "i":I
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_6c
    if-ge v6, v10, :cond_d3

    .line 322
    aget-wide v0, v9, v6

    cmp-long v0, v0, v12

    if-eqz v0, :cond_cc

    aget-object v0, v14, v6

    if-eqz v0, :cond_7b

    .line 323
    move/from16 v16, v6

    goto :goto_ce

    .line 327
    :cond_7b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "geoid_height_map/tile-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v15, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 329
    .local v1, "is":Ljava/io/InputStream;
    :try_start_a2
    invoke-virtual {v1}, Ljava/io/InputStream;->readAllBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/location/altitude/nano/S2TileProto;->parseFrom([B)Lcom/android/internal/location/altitude/nano/S2TileProto;

    move-result-object v3
    :try_end_aa
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_bc

    .line 330
    .local v3, "tile":Lcom/android/internal/location/altitude/nano/S2TileProto;
    if-eqz v1, :cond_af

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 331
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_af
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v11

    move-object v5, v15

    move/from16 v16, v6

    .end local v6    # "i":I
    .local v16, "i":I
    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/location/altitude/GeoidHeightMap;->mergeFromDiskTile(Lcom/android/internal/location/altitude/nano/MapParamsProto;Lcom/android/internal/location/altitude/nano/S2TileProto;[J[Ljava/lang/String;I[Lcom/android/internal/location/altitude/nano/S2TileProto;)V

    goto :goto_ce

    .line 327
    .end local v3    # "tile":Lcom/android/internal/location/altitude/nano/S2TileProto;
    .end local v16    # "i":I
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v6    # "i":I
    :catchall_bc
    move-exception v0

    move/from16 v16, v6

    move-object v2, v0

    .end local v6    # "i":I
    .restart local v16    # "i":I
    if-eqz v1, :cond_cb

    :try_start_c2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_c6

    goto :goto_cb

    :catchall_c6
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_cb
    :goto_cb
    throw v2

    .line 322
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v16    # "i":I
    .restart local v6    # "i":I
    :cond_cc
    move/from16 v16, v6

    .line 321
    .end local v6    # "i":I
    .restart local v16    # "i":I
    :goto_ce
    add-int/lit8 v6, v16, 0x1

    move-object/from16 v7, p0

    .end local v16    # "i":I
    .restart local v6    # "i":I
    goto :goto_6c

    .line 334
    .end local v6    # "i":I
    :cond_d3
    new-instance v0, Lcom/android/internal/location/altitude/GeoidHeightMap$$ExternalSyntheticLambda1;

    invoke-direct {v0, v11, v14}, Lcom/android/internal/location/altitude/GeoidHeightMap$$ExternalSyntheticLambda1;-><init>([J[Lcom/android/internal/location/altitude/nano/S2TileProto;)V

    return-object v0
.end method

.method private static mergeByteBufferValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J[Lcom/android/internal/location/altitude/nano/S2TileProto;I[D)V
    .registers 20
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "s2CellIds"    # [J
    .param p2, "tiles"    # [Lcom/android/internal/location/altitude/nano/S2TileProto;
    .param p3, "tileIndex"    # I
    .param p4, "values"    # [D

    .line 148
    move-object v0, p0

    move-object/from16 v1, p2

    aget-object v2, v1, p3

    iget-object v2, v2, Lcom/android/internal/location/altitude/nano/S2TileProto;->byteBuffer:[B

    .line 149
    .local v2, "bytes":[B
    if-eqz v2, :cond_62

    array-length v3, v2

    if-nez v3, :cond_d

    goto :goto_62

    .line 153
    :cond_d
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 154
    .local v3, "byteBuffer":Ljava/nio/ByteBuffer;
    iget v4, v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 155
    .local v4, "tileS2Level":I
    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x3

    .line 157
    .local v5, "numBitsLeftOfTile":I
    move/from16 v6, p3

    .local v6, "i":I
    :goto_28
    array-length v7, v1

    if-ge v6, v7, :cond_61

    .line 158
    aget-object v7, v1, v6

    aget-object v8, v1, p3

    if-eq v7, v8, :cond_32

    .line 159
    goto :goto_5e

    .line 162
    :cond_32
    aget-wide v7, p1, v6

    const-wide/16 v9, -0x1

    ushr-long/2addr v9, v5

    and-long/2addr v7, v9

    .line 163
    .local v7, "maskedS2CellId":J
    iget v9, v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    rsub-int/lit8 v9, v9, 0x1e

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    .line 164
    .local v9, "numBitsRightOfMap":I
    ushr-long v10, v7, v9

    long-to-int v10, v10

    .line 165
    .local v10, "bufferIndex":I
    aget-wide v11, p4, v6

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-eqz v11, :cond_4e

    const-wide/16 v11, 0x0

    goto :goto_50

    :cond_4e
    aget-wide v11, p4, v6

    :goto_50
    aput-wide v11, p4, v6

    .line 166
    aget-wide v11, p4, v6

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    int-to-double v13, v13

    add-double/2addr v11, v13

    aput-wide v11, p4, v6

    .line 157
    .end local v7    # "maskedS2CellId":J
    .end local v9    # "numBitsRightOfMap":I
    .end local v10    # "bufferIndex":I
    :goto_5e
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 168
    .end local v6    # "i":I
    :cond_61
    return-void

    .line 150
    .end local v3    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "tileS2Level":I
    .end local v5    # "numBitsLeftOfTile":I
    :cond_62
    :goto_62
    return-void
.end method

.method private static mergeByteImageValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;[B[J[Lcom/android/internal/location/altitude/nano/S2TileProto;I[D)V
    .registers 14
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "bytes"    # [B
    .param p2, "s2CellIds"    # [J
    .param p3, "tiles"    # [Lcom/android/internal/location/altitude/nano/S2TileProto;
    .param p4, "tileIndex"    # I
    .param p5, "values"    # [D

    .line 189
    if-eqz p1, :cond_55

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_55

    .line 192
    :cond_6
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 193
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_f

    .line 194
    return-void

    .line 197
    :cond_f
    move v1, p4

    .local v1, "i":I
    :goto_10
    array-length v2, p3

    if-ge v1, v2, :cond_54

    .line 198
    aget-wide v2, p2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_51

    aget-object v2, p3, v1

    aget-object v3, p3, p4

    if-eq v2, v3, :cond_22

    .line 199
    goto :goto_51

    .line 202
    :cond_22
    aget-wide v2, p5, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-wide/16 v2, 0x0

    goto :goto_2f

    :cond_2d
    aget-wide v2, p5, v1

    :goto_2f
    aput-wide v2, p5, v1

    .line 203
    aget-wide v2, p5, v1

    aget-wide v4, p2, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {p0, v4, v5, v6}, Lcom/android/internal/location/altitude/GeoidHeightMap;->getIndexX(Lcom/android/internal/location/altitude/nano/MapParamsProto;JI)I

    move-result v4

    aget-wide v5, p2, v1

    .line 204
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {p0, v5, v6, v7}, Lcom/android/internal/location/altitude/GeoidHeightMap;->getIndexY(Lcom/android/internal/location/altitude/nano/MapParamsProto;JI)I

    move-result v5

    .line 203
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-double v4, v4

    add-double/2addr v2, v4

    aput-wide v2, p5, v1

    .line 197
    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 206
    .end local v1    # "i":I
    :cond_54
    return-void

    .line 190
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_55
    :goto_55
    return-void
.end method

.method private static mergeByteJpegValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J[Lcom/android/internal/location/altitude/nano/S2TileProto;I[D)V
    .registers 12
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "s2CellIds"    # [J
    .param p2, "tiles"    # [Lcom/android/internal/location/altitude/nano/S2TileProto;
    .param p3, "tileIndex"    # I
    .param p4, "values"    # [D

    .line 174
    aget-object v0, p2, p3

    iget-object v2, v0, Lcom/android/internal/location/altitude/nano/S2TileProto;->byteJpeg:[B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/location/altitude/GeoidHeightMap;->mergeByteImageValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;[B[J[Lcom/android/internal/location/altitude/nano/S2TileProto;I[D)V

    .line 176
    return-void
.end method

.method private static mergeBytePngValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J[Lcom/android/internal/location/altitude/nano/S2TileProto;I[D)V
    .registers 12
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "s2CellIds"    # [J
    .param p2, "tiles"    # [Lcom/android/internal/location/altitude/nano/S2TileProto;
    .param p3, "tileIndex"    # I
    .param p4, "values"    # [D

    .line 182
    aget-object v0, p2, p3

    iget-object v2, v0, Lcom/android/internal/location/altitude/nano/S2TileProto;->bytePng:[B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/location/altitude/GeoidHeightMap;->mergeByteImageValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;[B[J[Lcom/android/internal/location/altitude/nano/S2TileProto;I[D)V

    .line 183
    return-void
.end method

.method private mergeFromDiskTile(Lcom/android/internal/location/altitude/nano/MapParamsProto;Lcom/android/internal/location/altitude/nano/S2TileProto;[J[Ljava/lang/String;I[Lcom/android/internal/location/altitude/nano/S2TileProto;)V
    .registers 24
    .param p1, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p2, "diskTile"    # Lcom/android/internal/location/altitude/nano/S2TileProto;
    .param p3, "cacheKeys"    # [J
    .param p4, "diskTokens"    # [Ljava/lang/String;
    .param p5, "diskTokenIndex"    # I
    .param p6, "loadedTiles"    # [Lcom/android/internal/location/altitude/nano/S2TileProto;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    array-length v2, v1

    .line 348
    .local v2, "len":I
    iget v3, v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    iget v4, v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->cacheTileS2Level:I

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    shl-int v3, v4, v3

    .line 351
    .local v3, "numMapCellsPerCacheTile":I
    new-array v4, v3, [J

    .line 352
    .local v4, "s2CellIds":[J
    new-array v5, v3, [D

    .line 355
    .local v5, "values":[D
    new-instance v6, Lcom/android/internal/location/altitude/GeoidHeightMap$$ExternalSyntheticLambda2;

    move-object/from16 v7, p2

    invoke-direct {v6, v7}, Lcom/android/internal/location/altitude/GeoidHeightMap$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/location/altitude/nano/S2TileProto;)V

    .line 356
    .local v6, "diskTileFunction":Lcom/android/internal/location/altitude/GeoidHeightMap$TileFunction;
    move/from16 v8, p5

    .local v8, "i":I
    :goto_1c
    if-ge v8, v2, :cond_b7

    .line 357
    aget-object v9, p4, v8

    aget-object v10, p4, p5

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b1

    aget-object v9, p6, v8

    if-eqz v9, :cond_30

    .line 359
    move-object/from16 v11, p0

    goto/16 :goto_b3

    .line 363
    :cond_30
    aget-wide v9, v1, v8

    iget v11, v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    invoke-static {v9, v10, v11}, Lcom/android/internal/location/altitude/S2CellIdUtils;->getTraversalStart(JI)J

    move-result-wide v9

    .line 364
    .local v9, "s2CellId":J
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_39
    if-ge v11, v3, :cond_44

    .line 365
    aput-wide v9, v4, v11

    .line 366
    invoke-static {v9, v10}, Lcom/android/internal/location/altitude/S2CellIdUtils;->getTraversalNext(J)J

    move-result-wide v9

    .line 364
    add-int/lit8 v11, v11, 0x1

    goto :goto_39

    .line 369
    .end local v11    # "j":I
    :cond_44
    invoke-static {v0, v6, v4, v5}, Lcom/android/internal/location/altitude/GeoidHeightMap;->getUnitIntervalValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;Lcom/android/internal/location/altitude/GeoidHeightMap$TileFunction;[J[D)Z

    move-result v11

    if-eqz v11, :cond_94

    .line 373
    new-instance v11, Lcom/android/internal/location/altitude/nano/S2TileProto;

    invoke-direct {v11}, Lcom/android/internal/location/altitude/nano/S2TileProto;-><init>()V

    aput-object v11, p6, v8

    .line 374
    aget-object v11, p6, v8

    new-array v12, v3, [B

    iput-object v12, v11, Lcom/android/internal/location/altitude/nano/S2TileProto;->byteBuffer:[B

    .line 375
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_58
    if-ge v11, v3, :cond_71

    .line 376
    aget-object v12, p6, v8

    iget-object v12, v12, Lcom/android/internal/location/altitude/nano/S2TileProto;->byteBuffer:[B

    aget-wide v13, v5, v11

    const-wide v15, 0x406fe00000000000L    # 255.0

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v12, v11

    .line 375
    add-int/lit8 v11, v11, 0x1

    goto :goto_58

    .line 380
    .end local v11    # "j":I
    :cond_71
    add-int/lit8 v11, v8, 0x1

    .restart local v11    # "j":I
    :goto_73
    if-ge v11, v2, :cond_84

    .line 381
    aget-wide v12, v1, v11

    aget-wide v14, v1, v8

    cmp-long v12, v12, v14

    if-nez v12, :cond_81

    .line 382
    aget-object v12, p6, v8

    aput-object v12, p6, v11

    .line 380
    :cond_81
    add-int/lit8 v11, v11, 0x1

    goto :goto_73

    .line 387
    .end local v11    # "j":I
    :cond_84
    move-object/from16 v11, p0

    iget-object v12, v11, Lcom/android/internal/location/altitude/GeoidHeightMap;->mCacheTiles:Landroid/util/LruCache;

    aget-wide v13, v1, v8

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aget-object v14, p6, v8

    invoke-virtual {v12, v13, v14}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b3

    .line 370
    :cond_94
    move-object/from16 v11, p0

    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Corrupted disk tile of disk token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, p4, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 357
    .end local v9    # "s2CellId":J
    :cond_b1
    move-object/from16 v11, p0

    .line 356
    :goto_b3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1c

    :cond_b7
    move-object/from16 v11, p0

    .line 389
    .end local v8    # "i":I
    return-void
.end method

.method private static validate(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J)V
    .registers 10
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "s2CellIds"    # [J

    .line 227
    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v3

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 228
    array-length v0, p1

    move v1, v3

    :goto_e
    if-ge v1, v0, :cond_2a

    aget-wide v4, p1, v1

    .line 229
    .local v4, "s2CellId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_23

    .line 230
    invoke-static {v4, v5}, Lcom/android/internal/location/altitude/S2CellIdUtils;->getLevel(J)I

    move-result v6

    iget v7, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    if-ne v6, v7, :cond_21

    goto :goto_23

    :cond_21
    move v6, v3

    goto :goto_24

    :cond_23
    :goto_23
    move v6, v2

    .line 229
    :goto_24
    invoke-static {v6}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 228
    .end local v4    # "s2CellId":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 232
    :cond_2a
    return-void
.end method


# virtual methods
.method public readGeoidHeights(Lcom/android/internal/location/altitude/nano/MapParamsProto;Landroid/content/Context;[J)[D
    .registers 8
    .param p1, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "s2CellIds"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-static {p1, p3}, Lcom/android/internal/location/altitude/GeoidHeightMap;->validate(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J)V

    .line 243
    array-length v0, p3

    new-array v0, v0, [D

    .line 244
    .local v0, "heightsMeters":[D
    iget-object v1, p0, Lcom/android/internal/location/altitude/GeoidHeightMap;->mCacheTiles:Landroid/util/LruCache;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/location/altitude/GeoidHeightMap$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/internal/location/altitude/GeoidHeightMap$$ExternalSyntheticLambda0;-><init>(Landroid/util/LruCache;)V

    invoke-direct {p0, p1, v2, p3, v0}, Lcom/android/internal/location/altitude/GeoidHeightMap;->getGeoidHeights(Lcom/android/internal/location/altitude/nano/MapParamsProto;Lcom/android/internal/location/altitude/GeoidHeightMap$TileFunction;[J[D)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 245
    return-object v0

    .line 248
    :cond_17
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/location/altitude/GeoidHeightMap;->loadFromCacheAndDisk(Lcom/android/internal/location/altitude/nano/MapParamsProto;Landroid/content/Context;[J)Lcom/android/internal/location/altitude/GeoidHeightMap$TileFunction;

    move-result-object v1

    .line 249
    .local v1, "loadedTiles":Lcom/android/internal/location/altitude/GeoidHeightMap$TileFunction;
    invoke-direct {p0, p1, v1, p3, v0}, Lcom/android/internal/location/altitude/GeoidHeightMap;->getGeoidHeights(Lcom/android/internal/location/altitude/nano/MapParamsProto;Lcom/android/internal/location/altitude/GeoidHeightMap$TileFunction;[J[D)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 250
    return-object v0

    .line 252
    :cond_22
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to calculate geoid heights from raw assets."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readGeoidHeights(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J)[D
    .registers 6
    .param p1, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p2, "s2CellIds"    # [J

    .line 262
    invoke-static {p1, p2}, Lcom/android/internal/location/altitude/GeoidHeightMap;->validate(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J)V

    .line 263
    array-length v0, p2

    new-array v0, v0, [D

    .line 264
    .local v0, "heightsMeters":[D
    iget-object v1, p0, Lcom/android/internal/location/altitude/GeoidHeightMap;->mCacheTiles:Landroid/util/LruCache;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/location/altitude/GeoidHeightMap$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/internal/location/altitude/GeoidHeightMap$$ExternalSyntheticLambda0;-><init>(Landroid/util/LruCache;)V

    invoke-direct {p0, p1, v2, p2, v0}, Lcom/android/internal/location/altitude/GeoidHeightMap;->getGeoidHeights(Lcom/android/internal/location/altitude/nano/MapParamsProto;Lcom/android/internal/location/altitude/GeoidHeightMap$TileFunction;[J[D)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 265
    return-object v0

    .line 267
    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method
