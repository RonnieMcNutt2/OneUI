.class public final Landroid/content/res/ApkAssets;
.super Ljava/lang/Object;
.source "ApkAssets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ApkAssets$FormatType;,
        Landroid/content/res/ApkAssets$PropertyFlags;
    }
.end annotation


# static fields
.field private static final FORMAT_APK:I = 0x0

.field private static final FORMAT_ARSC:I = 0x2

.field private static final FORMAT_DIR:I = 0x3

.field private static final FORMAT_IDMAP:I = 0x1

.field public static final PROPERTY_DISABLE_INCREMENTAL_HARDENING:I = 0x10

.field public static final PROPERTY_DYNAMIC:I = 0x2

.field public static final PROPERTY_LOADER:I = 0x4

.field private static final PROPERTY_OVERLAY:I = 0x8

.field public static final PROPERTY_SYSTEM:I = 0x1


# instance fields
.field private final mAssets:Landroid/content/res/loader/AssetsProvider;

.field private final mFlags:I

.field private mNativePtr:J

.field private final mStringBlock:Landroid/content/res/StringBlock;


# direct methods
.method private constructor <init>(ILandroid/content/res/loader/AssetsProvider;)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "assets"    # Landroid/content/res/loader/AssetsProvider;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput p1, p0, Landroid/content/res/ApkAssets;->mFlags:I

    .line 327
    invoke-static {p1, p2}, Landroid/content/res/ApkAssets;->nativeLoadEmpty(ILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    .line 329
    iput-object p2, p0, Landroid/content/res/ApkAssets;->mAssets:Landroid/content/res/loader/AssetsProvider;

    .line 330
    return-void
.end method

.method private constructor <init>(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V
    .registers 10
    .param p1, "format"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "friendlyName"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const-string v0, "fd"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 307
    const-string v0, "friendlyName"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 308
    iput p4, p0, Landroid/content/res/ApkAssets;->mFlags:I

    .line 309
    invoke-static {p1, p2, p3, p4, p5}, Landroid/content/res/ApkAssets;->nativeLoadFd(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 310
    new-instance v2, Landroid/content/res/StringBlock;

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeGetStringBlock(J)J

    move-result-wide v0

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v2, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    .line 311
    iput-object p5, p0, Landroid/content/res/ApkAssets;->mAssets:Landroid/content/res/loader/AssetsProvider;

    .line 312
    return-void
.end method

.method private constructor <init>(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)V
    .registers 14
    .param p1, "format"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "friendlyName"    # Ljava/lang/String;
    .param p4, "offset"    # J
    .param p6, "length"    # J
    .param p8, "flags"    # I
    .param p9, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    const-string v0, "fd"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    const-string v0, "friendlyName"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    iput p8, p0, Landroid/content/res/ApkAssets;->mFlags:I

    .line 320
    invoke-static/range {p1 .. p9}, Landroid/content/res/ApkAssets;->nativeLoadFdOffsets(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 321
    new-instance v2, Landroid/content/res/StringBlock;

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeGetStringBlock(J)J

    move-result-wide v0

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v2, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    .line 322
    iput-object p9, p0, Landroid/content/res/ApkAssets;->mAssets:Landroid/content/res/loader/AssetsProvider;

    .line 323
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V
    .registers 9
    .param p1, "format"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    const-string/jumbo v0, "path"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 297
    iput p3, p0, Landroid/content/res/ApkAssets;->mFlags:I

    .line 298
    invoke-static {p1, p2, p3, p4}, Landroid/content/res/ApkAssets;->nativeLoad(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 299
    new-instance v2, Landroid/content/res/StringBlock;

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeGetStringBlock(J)J

    move-result-wide v0

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v2, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    .line 300
    iput-object p4, p0, Landroid/content/res/ApkAssets;->mAssets:Landroid/content/res/loader/AssetsProvider;

    .line 301
    return-void
.end method

.method public static loadEmptyForLoader(ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 3
    .param p0, "flags"    # I
    .param p1, "assets"    # Landroid/content/res/loader/AssetsProvider;

    .line 291
    new-instance v0, Landroid/content/res/ApkAssets;

    invoke-direct {v0, p0, p1}, Landroid/content/res/ApkAssets;-><init>(ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static loadFromDir(Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1, p2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 11
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    new-instance v6, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v6
.end method

.method public static loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 19
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "flags"    # I
    .param p7, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    new-instance v10, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    move-object v0, v10

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)V

    return-object v10
.end method

.method public static loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v0

    return-object v0
.end method

.method public static loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static loadFromPath(Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .registers 5
    .param p0, "idmapPath"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static loadTableFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 11
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    new-instance v6, Landroid/content/res/ApkAssets;

    const/4 v1, 0x2

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v6
.end method

.method public static loadTableFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 19
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "flags"    # I
    .param p7, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    new-instance v10, Landroid/content/res/ApkAssets;

    const/4 v1, 0x2

    move-object v0, v10

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)V

    return-object v10
.end method

.method private static native nativeDefinesOverlayable(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetAssetPath(J)Ljava/lang/String;
.end method

.method private static native nativeGetDebugName(J)Ljava/lang/String;
.end method

.method private static native nativeGetOverlayableInfo(JLjava/lang/String;)Landroid/content/om/OverlayableInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeGetStringBlock(J)J
.end method

.method private static native nativeIsUpToDate(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeLoad(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeLoadEmpty(ILandroid/content/res/loader/AssetsProvider;)J
.end method

.method private static native nativeLoadFd(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeLoadFdOffsets(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeOpenXml(JLjava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .registers 5

    .line 433
    monitor-enter p0

    .line 434
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 435
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    if-eqz v0, :cond_10

    .line 436
    invoke-virtual {v0}, Landroid/content/res/StringBlock;->close()V

    .line 438
    :cond_10
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeDestroy(J)V

    .line 439
    iput-wide v2, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 441
    :cond_17
    monitor-exit p0

    .line 442
    return-void

    .line 441
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public definesOverlayable()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    monitor-enter p0

    .line 406
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeDefinesOverlayable(J)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 407
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "debugName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/ApkAssets;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "assetPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Landroid/content/res/ApkAssets;->close()V

    .line 427
    return-void
.end method

.method public getAssetPath()Ljava/lang/String;
    .registers 3

    .line 334
    monitor-enter p0

    .line 335
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeGetAssetPath(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 336
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getAssetsProvider()Landroid/content/res/loader/AssetsProvider;
    .registers 2

    .line 367
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mAssets:Landroid/content/res/loader/AssetsProvider;

    return-object v0
.end method

.method public getDebugName()Ljava/lang/String;
    .registers 3

    .line 341
    monitor-enter p0

    .line 342
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeGetDebugName(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 343
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getOverlayableInfo(Ljava/lang/String;)Landroid/content/om/OverlayableInfo;
    .registers 4
    .param p1, "overlayableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    monitor-enter p0

    .line 399
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/content/res/ApkAssets;->nativeGetOverlayableInfo(JLjava/lang/String;)Landroid/content/om/OverlayableInfo;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 400
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method getStringFromPool(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "idx"    # I

    .line 348
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    if-nez v0, :cond_6

    .line 349
    const/4 v0, 0x0

    return-object v0

    .line 352
    :cond_6
    monitor-enter p0

    .line 353
    :try_start_7
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    invoke-virtual {v0, p1}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 354
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public isForLoader()Z
    .registers 2

    .line 359
    iget v0, p0, Landroid/content/res/ApkAssets;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isUpToDate()Z
    .registers 3

    .line 414
    monitor-enter p0

    .line 415
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeIsUpToDate(J)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 416
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public openXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    const-string v0, "fileName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 381
    monitor-enter p0

    .line 382
    :try_start_6
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/content/res/ApkAssets;->nativeOpenXml(JLjava/lang/String;)J

    move-result-wide v0

    .line 383
    .local v0, "nativeXmlPtr":J
    new-instance v2, Landroid/content/res/XmlBlock;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;J)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_30

    .line 384
    .local v2, "block":Landroid/content/res/XmlBlock;
    :try_start_12
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_26

    .line 387
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v3, :cond_1e

    .line 390
    nop

    .line 391
    :try_start_19
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_30

    .line 390
    return-object v3

    .line 388
    :cond_1e
    :try_start_1e
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "block.newParser() returned a null parser"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "nativeXmlPtr":J
    .end local v2    # "block":Landroid/content/res/XmlBlock;
    .end local p0    # "this":Landroid/content/res/ApkAssets;
    .end local p1    # "fileName":Ljava/lang/String;
    throw v4
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 383
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "nativeXmlPtr":J
    .restart local v2    # "block":Landroid/content/res/XmlBlock;
    .restart local p0    # "this":Landroid/content/res/ApkAssets;
    .restart local p1    # "fileName":Ljava/lang/String;
    :catchall_26
    move-exception v3

    :try_start_27
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception v4

    :try_start_2c
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/content/res/ApkAssets;
    .end local p1    # "fileName":Ljava/lang/String;
    :goto_2f
    throw v3

    .line 392
    .end local v0    # "nativeXmlPtr":J
    .end local v2    # "block":Landroid/content/res/XmlBlock;
    .restart local p0    # "this":Landroid/content/res/ApkAssets;
    .restart local p1    # "fileName":Ljava/lang/String;
    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_30

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApkAssets{path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/ApkAssets;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
