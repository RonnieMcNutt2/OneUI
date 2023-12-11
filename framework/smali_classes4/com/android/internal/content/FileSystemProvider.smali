.class public abstract Lcom/android/internal/content/FileSystemProvider;
.super Landroid/provider/DocumentsProvider;
.source "FileSystemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;,
        Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;
    }
.end annotation


# static fields
.field private static final LOG_INOTIFY:Z = false

.field private static final PATTERN_HIDDEN_PATH:Ljava/util/regex/Pattern;

.field protected static final SUPPORTED_QUERY_ARGS:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FileSystemProvider"


# instance fields
.field private mDefaultProjection:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private final mObservers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/io/File;",
            "Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$k0_cmwNdoUtf23G6a-clqF2BIXo(Lcom/android/internal/content/FileSystemProvider;Ljava/io/File;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->shouldShow(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vxAN9-98LGIWC6c4h0Q6rgsVdeM(Lcom/android/internal/content/FileSystemProvider;Ljava/lang/String;Ljava/io/File;Ljava/io/IOException;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/content/FileSystemProvider;->lambda$openDocument$1(Ljava/lang/String;Ljava/io/File;Ljava/io/IOException;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartObserving(Lcom/android/internal/content/FileSystemProvider;Ljava/io/File;Landroid/net/Uri;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/content/FileSystemProvider;->startObserving(Ljava/io/File;Landroid/net/Uri;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopObserving(Lcom/android/internal/content/FileSystemProvider;Ljava/io/File;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/content/FileSystemProvider;->stopObserving(Ljava/io/File;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 86
    const-string v0, "android:query-arg-last-modified-after"

    const-string v1, "android:query-arg-mime-types"

    const-string v2, "android:query-arg-display-name"

    const-string v3, "android:query-arg-file-size-over"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/content/FileSystemProvider;->joinNewline([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/content/FileSystemProvider;->SUPPORTED_QUERY_ARGS:Ljava/lang/String;

    .line 667
    const-string v0, "(?i)^/storage/[^/]+/(?:[0-9]+/)?Android/(?:data|obb|sandbox)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/content/FileSystemProvider;->PATTERN_HIDDEN_PATH:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Landroid/provider/DocumentsProvider;-><init>()V

    .line 98
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    return-void
.end method

.method private getDocumentType(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 6
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 492
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 493
    const-string/jumbo v0, "vnd.android.document/directory"

    return-object v0

    .line 495
    :cond_a
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 496
    .local v0, "lastDot":I
    if-ltz v0, :cond_27

    .line 497
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "mime":Ljava/lang/String;
    if-eqz v2, :cond_27

    .line 500
    return-object v2

    .line 503
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "mime":Ljava/lang/String;
    :cond_27
    const-string v1, "application/octet-stream"

    return-object v1
.end method

.method private static varargs joinNewline([Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "args"    # [Ljava/lang/String;

    .line 93
    const-string v0, "\n"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$openDocument$1(Ljava/lang/String;Ljava/io/File;Ljava/io/IOException;)V
    .registers 4
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "visibleFile"    # Ljava/io/File;
    .param p3, "e"    # Ljava/io/IOException;

    .line 524
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 525
    invoke-direct {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->scanFile(Ljava/io/File;)V

    .line 526
    return-void
.end method

.method static synthetic lambda$queryChildDocumentsShowAll$0(Ljava/io/File;)Z
    .registers 2
    .param p0, "File"    # Ljava/io/File;

    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method private matchSearchQueryArguments(Ljava/io/File;Landroid/os/Bundle;)Z
    .registers 12
    .param p1, "file"    # Ljava/io/File;
    .param p2, "queryArgs"    # Landroid/os/Bundle;

    .line 563
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 564
    return v0

    .line 568
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 570
    .local v8, "fileName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 571
    const-string/jumbo v0, "vnd.android.document/directory"

    .local v0, "fileMimeType":Ljava/lang/String;
    goto :goto_2a

    .line 573
    .end local v0    # "fileMimeType":Ljava/lang/String;
    :cond_12
    const/16 v1, 0x2e

    invoke-virtual {v8, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 574
    .local v1, "dotPos":I
    if-gez v1, :cond_1b

    .line 575
    return v0

    .line 577
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 580
    .end local v1    # "dotPos":I
    .local v0, "fileMimeType":Ljava/lang/String;
    :goto_2a
    nop

    .line 581
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 580
    move-object v1, p2

    move-object v2, v8

    move-object v3, v0

    invoke-static/range {v1 .. v7}, Landroid/provider/DocumentsContract;->matchSearchQueryArguments(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result v1

    return v1
.end method

.method private openFileForRead(Ljava/io/File;)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .param p1, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 534
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 535
    .local v0, "uri":Landroid/net/Uri;
    const/high16 v1, 0x10000000

    const-string v2, "FileSystemProvider"

    if-nez v0, :cond_2d

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to retrieve media store URI for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-static {p1, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    .line 543
    :cond_2d
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 544
    .local v3, "opts":Landroid/os/Bundle;
    const-string v4, "android.provider.extra.MEDIA_CAPABILITIES_UID"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 546
    nop

    .line 547
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "*/*"

    invoke-virtual {v4, v0, v5, v3}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 548
    .local v4, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v4, :cond_67

    .line 549
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open with media_capabilities uid for URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-static {p1, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    .line 553
    :cond_67
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method private queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Predicate;)Landroid/database/Cursor;
    .registers 12
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Ljava/io/File;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 416
    .local p4, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/io/File;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 417
    .local v0, "parent":Ljava/io/File;
    new-instance v1, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;

    .line 418
    invoke-direct {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->resolveProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;-><init>(Lcom/android/internal/content/FileSystemProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 420
    .local v1, "result":Landroid/database/MatrixCursor;
    invoke-interface {p4, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "FileSystemProvider"

    if-nez v2, :cond_2c

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No permission to access parentDocumentId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-object v1

    .line 425
    :cond_2c
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 426
    invoke-static {v0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_38
    if-ge v4, v3, :cond_66

    aget-object v5, v2, v4

    .line 427
    .local v5, "file":Ljava/io/File;
    invoke-interface {p4, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 428
    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6, v5}, Lcom/android/internal/content/FileSystemProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)Landroid/database/MatrixCursor$RowBuilder;

    .line 426
    .end local v5    # "file":Ljava/io/File;
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 432
    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parentDocumentId \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' is not Directory"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_66
    return-object v1
.end method

.method private resolveProjection([Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "projection"    # [Ljava/lang/String;

    .line 696
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider;->mDefaultProjection:[Ljava/lang/String;

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    return-object v0
.end method

.method private scanFile(Ljava/io/File;)V
    .registers 4
    .param p1, "visibleFile"    # Ljava/io/File;

    .line 585
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 587
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 588
    return-void
.end method

.method private shouldShow(Ljava/io/File;)Z
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .line 679
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->shouldHide(Ljava/io/File;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private startObserving(Ljava/io/File;Landroid/net/Uri;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V
    .registers 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "notifyUri"    # Landroid/net/Uri;
    .param p3, "cursor"    # Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;

    .line 700
    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 701
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;

    .line 702
    .local v1, "observer":Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;
    if-nez v1, :cond_23

    .line 703
    new-instance v2, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;

    .line 704
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p1, v3, p2}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;-><init>(Ljava/io/File;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v1, v2

    .line 705
    invoke-virtual {v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->startWatching()V

    .line 706
    iget-object v2, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    :cond_23
    invoke-static {v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->-$$Nest$fgetmCursors(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    nop

    .end local v1    # "observer":Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;
    monitor-exit v0

    .line 712
    return-void

    .line 711
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private stopObserving(Ljava/io/File;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "cursor"    # Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;

    .line 715
    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 716
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;

    .line 717
    .local v1, "observer":Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;
    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    .line 719
    :cond_f
    invoke-static {v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->-$$Nest$fgetmCursors(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 720
    invoke-static {v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->-$$Nest$fgetmCursors(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-nez v2, :cond_28

    .line 721
    iget-object v2, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    invoke-virtual {v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->stopWatching()V

    .line 726
    .end local v1    # "observer":Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;
    :cond_28
    monitor-exit v0

    .line 727
    return-void

    .line 726
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private static updateMediaStore(Landroid/content/Context;Ljava/io/File;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .line 336
    if-eqz p1, :cond_2b

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 338
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, ".nomedia"

    .line 341
    .local v1, "noMedia":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 342
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    goto :goto_2b

    .line 344
    :cond_28
    invoke-static {v0, p1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 347
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "noMedia":Ljava/lang/String;
    :cond_2b
    :goto_2b
    return-void
.end method


# virtual methods
.method protected abstract buildNotificationUri(Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 250
    const-string v0, "Failed to touch "

    invoke-static {p3}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 253
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 257
    invoke-static {v1, p2, p3}, Landroid/os/FileUtils;->buildUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 259
    .local v2, "file":Ljava/io/File;
    const-string/jumbo v3, "vnd.android.document/directory"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 260
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 263
    invoke-virtual {p0, v2}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "childId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    goto :goto_52

    .line 261
    .end local v0    # "childId":Ljava/lang/String;
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to mkdir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_44
    :try_start_44
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 270
    invoke-virtual {p0, v2}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "childId":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_51} :catch_71

    .line 274
    move-object v0, v3

    .line 276
    .end local v3    # "childId":Ljava/lang/String;
    .restart local v0    # "childId":Ljava/lang/String;
    :goto_52
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/internal/content/FileSystemProvider;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 277
    return-object v0

    .line 268
    .end local v0    # "childId":Ljava/lang/String;
    :cond_5a
    :try_start_5a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "parent":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/android/internal/content/FileSystemProvider;
    .end local p1    # "docId":Ljava/lang/String;
    .end local p2    # "mimeType":Ljava/lang/String;
    .end local p3    # "displayName":Ljava/lang/String;
    throw v3
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_71} :catch_71

    .line 272
    .restart local v1    # "parent":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/internal/content/FileSystemProvider;
    .restart local p1    # "docId":Ljava/lang/String;
    .restart local p2    # "mimeType":Ljava/lang/String;
    .restart local p3    # "displayName":Ljava/lang/String;
    :catch_71
    move-exception v3

    .line 273
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 254
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parent document isn\'t a directory"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteDocument(Ljava/lang/String;)V
    .registers 8
    .param p1, "docId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 351
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 352
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 354
    .local v1, "visibleFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    .line 355
    .local v2, "isDirectory":Z
    if-eqz v2, :cond_12

    .line 356
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 360
    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_38

    .line 361
    :cond_1f
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 364
    :cond_38
    :goto_38
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdDeleted(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/internal/content/FileSystemProvider;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 367
    return-void
.end method

.method protected final findDocumentPath(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .registers 6
    .param p1, "parent"    # Ljava/io/File;
    .param p2, "doc"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 229
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 233
    invoke-static {p1, p2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v0, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_11
    if-eqz p2, :cond_26

    invoke-static {p1, p2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 239
    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 241
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    goto :goto_11

    .line 244
    :cond_26
    return-object v0

    .line 234
    .end local v0    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_27
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not found under "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_44
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getDocIdForFile(Ljava/io/File;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public getDocumentMetadata(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 12
    .param p1, "documentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 155
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getDocumentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "mimeType":Ljava/lang/String;
    const-string/jumbo v2, "vnd.android.document/directory"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "An error occurred retrieving the metadata"

    const-string v4, "FileSystemProvider"

    const/4 v5, 0x0

    if-eqz v2, :cond_5a

    .line 161
    new-instance v2, Landroid/system/Int64Ref;

    const-wide/16 v6, 0x0

    invoke-direct {v2, v6, v7}, Landroid/system/Int64Ref;-><init>(J)V

    .line 162
    .local v2, "treeCount":Landroid/system/Int64Ref;
    new-instance v8, Landroid/system/Int64Ref;

    invoke-direct {v8, v6, v7}, Landroid/system/Int64Ref;-><init>(J)V

    move-object v6, v8

    .line 164
    .local v6, "treeSize":Landroid/system/Int64Ref;
    :try_start_29
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    .line 165
    .local v7, "path":Ljava/nio/file/Path;
    new-instance v8, Lcom/android/internal/content/FileSystemProvider$1;

    invoke-direct {v8, p0, v2, v6}, Lcom/android/internal/content/FileSystemProvider$1;-><init>(Lcom/android/internal/content/FileSystemProvider;Landroid/system/Int64Ref;Landroid/system/Int64Ref;)V

    invoke-static {v7, v8}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_40} :catch_55

    .line 191
    nop

    .line 193
    .end local v7    # "path":Ljava/nio/file/Path;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 194
    .local v3, "res":Landroid/os/Bundle;
    const-string v4, "android:metadataTreeCount"

    iget-wide v7, v2, Landroid/system/Int64Ref;->value:J

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 195
    const-string v4, "android:metadataTreeSize"

    iget-wide v7, v6, Landroid/system/Int64Ref;->value:J

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 196
    return-object v3

    .line 188
    .end local v3    # "res":Landroid/os/Bundle;
    :catch_55
    move-exception v7

    .line 189
    .local v7, "e":Ljava/io/IOException;
    invoke-static {v4, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    return-object v5

    .line 199
    .end local v2    # "treeCount":Landroid/system/Int64Ref;
    .end local v6    # "treeSize":Landroid/system/Int64Ref;
    .end local v7    # "e":Ljava/io/IOException;
    :cond_5a
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_66

    .line 200
    const-string v2, "Can\'t stream non-regular file. Returning empty metadata."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-object v5

    .line 203
    :cond_66
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_72

    .line 204
    const-string v2, "Can\'t stream non-readable file. Returning empty metadata."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-object v5

    .line 207
    :cond_72
    invoke-static {v1}, Landroid/provider/MetadataReader;->isSupportedMimeType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_95

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Returning empty metadata."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-object v5

    .line 212
    :cond_95
    const/4 v2, 0x0

    .line 214
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_96
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 215
    .local v6, "metadata":Landroid/os/Bundle;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v7

    .line 216
    invoke-static {v6, v2, v1, v5}, Landroid/provider/MetadataReader;->getMetadata(Landroid/os/Bundle;Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a8} :catch_af
    .catchall {:try_start_96 .. :try_end_a8} :catchall_ad

    .line 217
    nop

    .line 222
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 217
    return-object v6

    .line 222
    .end local v6    # "metadata":Landroid/os/Bundle;
    :catchall_ad
    move-exception v3

    goto :goto_b8

    .line 218
    :catch_af
    move-exception v6

    .line 219
    .local v6, "e":Ljava/io/IOException;
    :try_start_b0
    invoke-static {v4, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_ad

    .line 220
    nop

    .line 222
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 220
    return-object v5

    .line 222
    .end local v6    # "e":Ljava/io/IOException;
    :goto_b8
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 223
    throw v3

    .line 156
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v2    # "stream":Ljava/io/InputStream;
    :cond_bc
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find the file for documentId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDocumentType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "documentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 487
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/content/FileSystemProvider;->getDocumentType(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getFileForDocId(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "docId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 692
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method protected includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)Landroid/database/MatrixCursor$RowBuilder;
    .registers 15
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "docId"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 600
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "columns":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 603
    .local v1, "row":Landroid/database/MatrixCursor$RowBuilder;
    if-nez p2, :cond_f

    .line 604
    invoke-virtual {p0, p3}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    goto :goto_13

    .line 606
    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    .line 609
    :goto_13
    invoke-direct {p0, p2, p3}, Lcom/android/internal/content/FileSystemProvider;->getDocumentType(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 610
    .local v2, "mimeType":Ljava/lang/String;
    const-string v3, "document_id"

    invoke-virtual {v1, v3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 611
    const-string/jumbo v3, "mime_type"

    invoke-virtual {v1, v3, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 613
    const-string v3, "flags"

    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 614
    .local v3, "flagIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_6f

    .line 615
    const/4 v5, 0x0

    .line 616
    .local v5, "flags":I
    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_56

    .line 617
    const-string/jumbo v6, "vnd.android.document/directory"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 618
    or-int/lit8 v5, v5, 0x8

    .line 619
    or-int/lit8 v5, v5, 0x4

    .line 620
    or-int/lit8 v5, v5, 0x40

    .line 621
    or-int/lit16 v5, v5, 0x100

    .line 623
    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->shouldBlockFromTree(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 624
    const v6, 0x8000

    or-int/2addr v5, v6

    goto :goto_56

    .line 628
    :cond_4e
    or-int/lit8 v5, v5, 0x2

    .line 629
    or-int/lit8 v5, v5, 0x4

    .line 630
    or-int/lit8 v5, v5, 0x40

    .line 631
    or-int/lit16 v5, v5, 0x100

    .line 635
    :cond_56
    :goto_56
    const-string v6, "image/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 636
    or-int/lit8 v5, v5, 0x1

    .line 639
    :cond_60
    invoke-virtual {p0, v2}, Lcom/android/internal/content/FileSystemProvider;->typeSupportsMetadata(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 640
    or-int/lit16 v5, v5, 0x4000

    .line 642
    :cond_68
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(ILjava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 645
    .end local v5    # "flags":I
    :cond_6f
    const-string v5, "_display_name"

    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 646
    .local v5, "displayNameIndex":I
    if-eq v5, v4, :cond_7e

    .line 647
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(ILjava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 650
    :cond_7e
    const-string v6, "last_modified"

    invoke-static {v0, v6}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 651
    .local v6, "lastModifiedIndex":I
    if-eq v6, v4, :cond_9a

    .line 652
    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    .line 654
    .local v7, "lastModified":J
    const-wide v9, 0x757b12c00L

    cmp-long v9, v7, v9

    if-lez v9, :cond_9a

    .line 655
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v6, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(ILjava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 658
    .end local v7    # "lastModified":J
    :cond_9a
    const-string v7, "_size"

    invoke-static {v0, v7}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 659
    .local v7, "sizeIndex":I
    if-eq v7, v4, :cond_ad

    .line 660
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(ILjava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 664
    :cond_ad
    return-object v1
.end method

.method public isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "parentDocId"    # Ljava/lang/String;
    .param p2, "docId"    # Ljava/lang/String;

    .line 141
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 142
    .local v0, "parent":Ljava/io/File;
    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 143
    .local v1, "doc":Ljava/io/File;
    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    return v2

    .line 144
    .end local v0    # "parent":Ljava/io/File;
    .end local v1    # "doc":Ljava/io/File;
    :catch_15
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to determine if "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public moveDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "sourceDocumentId"    # Ljava/lang/String;
    .param p2, "sourceParentDocumentId"    # Ljava/lang/String;
    .param p3, "targetParentDocumentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 315
    .local v0, "before":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p3}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 316
    .local v1, "after":Ljava/io/File;
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    .line 318
    .local v3, "visibleFileBefore":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5b

    .line 321
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 325
    invoke-virtual {p0, v1}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 326
    .local v4, "docId":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdDeleted(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0, v4}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/internal/content/FileSystemProvider;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/internal/content/FileSystemProvider;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 332
    return-object v4

    .line 322
    .end local v4    # "docId":Ljava/lang/String;
    :cond_42
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to move to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :cond_5b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Already exists "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected onCreate([Ljava/lang/String;)V
    .registers 3
    .param p1, "defaultProjection"    # [Ljava/lang/String;

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/FileSystemProvider;->mHandler:Landroid/os/Handler;

    .line 135
    iput-object p1, p0, Lcom/android/internal/content/FileSystemProvider;->mDefaultProjection:[Ljava/lang/String;

    .line 136
    return-void
.end method

.method public onCreate()Z
    .registers 3

    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass should override this and call onCreate(defaultDocumentProjection)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onDocIdChanged(Ljava/lang/String;)V
    .registers 2
    .param p1, "docId"    # Ljava/lang/String;

    .line 116
    return-void
.end method

.method protected onDocIdDeleted(Ljava/lang/String;)V
    .registers 2
    .param p1, "docId"    # Ljava/lang/String;

    .line 124
    return-void
.end method

.method public openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 512
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 514
    .local v1, "visibleFile":Ljava/io/File;
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v2

    .line 515
    .local v2, "pfdMode":I
    if-nez v1, :cond_14

    .line 516
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    return-object v3

    .line 517
    :cond_14
    const/high16 v3, 0x10000000

    if-ne v2, v3, :cond_1d

    .line 518
    invoke-direct {p0, v1}, Lcom/android/internal/content/FileSystemProvider;->openFileForRead(Ljava/io/File;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    return-object v3

    .line 522
    :cond_1d
    :try_start_1d
    iget-object v3, p0, Lcom/android/internal/content/FileSystemProvider;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/content/FileSystemProvider;Ljava/lang/String;Ljava/io/File;)V

    invoke-static {v0, v2, v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;ILandroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_28} :catch_29

    return-object v3

    .line 527
    :catch_29
    move-exception v3

    .line 528
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open for writing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 6
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "sizeHint"    # Landroid/graphics/Point;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 594
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 595
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/provider/DocumentsContract;->openImageThumbnail(Ljava/io/File;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 410
    new-instance v0, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/content/FileSystemProvider;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/content/FileSystemProvider;->queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Predicate;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected queryChildDocumentsShowAll(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 402
    new-instance v0, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/content/FileSystemProvider;->queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Predicate;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 372
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->resolveProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 373
    .local v0, "result":Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/content/FileSystemProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)Landroid/database/MatrixCursor$RowBuilder;

    .line 374
    return-object v0
.end method

.method protected final querySearchDocuments(Ljava/io/File;[Ljava/lang/String;Ljava/util/Set;Landroid/os/Bundle;)Landroid/database/Cursor;
    .registers 12
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p4, "queryArgs"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 458
    .local p3, "exclusion":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->resolveProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 459
    .local v0, "result":Landroid/database/MatrixCursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v1, "pending":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :goto_11
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_57

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getCount()I

    move-result v2

    const/16 v3, 0x18

    if-ge v2, v3, :cond_57

    .line 462
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 463
    .local v3, "file":Ljava/io/File;
    invoke-virtual {p0, v3}, Lcom/android/internal/content/FileSystemProvider;->shouldHide(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_11

    .line 465
    :cond_2d
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 466
    invoke-static {v3}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    :goto_38
    if-ge v2, v5, :cond_42

    aget-object v6, v4, v2

    .line 467
    .local v6, "child":Ljava/io/File;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    .end local v6    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 470
    :cond_42
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    invoke-direct {p0, v3, p4}, Lcom/android/internal/content/FileSystemProvider;->matchSearchQueryArguments(Ljava/io/File;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 472
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/content/FileSystemProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)Landroid/database/MatrixCursor$RowBuilder;

    .line 474
    .end local v3    # "file":Ljava/io/File;
    :cond_56
    goto :goto_11

    .line 476
    :cond_57
    invoke-static {p4}, Landroid/provider/DocumentsContract;->getHandledQueryArguments(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "handledQueryArgs":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_6b

    .line 478
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 479
    .local v3, "extras":Landroid/os/Bundle;
    const-string v4, "android.content.extra.HONORED_ARGS"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 480
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    .line 482
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_6b
    return-object v0
.end method

.method public renameDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 284
    invoke-static {p2}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 287
    .local v0, "before":Ljava/io/File;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 288
    .local v2, "beforeVisibleFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/os/FileUtils;->buildUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 289
    .local v3, "after":Ljava/io/File;
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 293
    invoke-virtual {p0, v3}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "afterDocId":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdDeleted(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0, v4}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 300
    .local v1, "afterVisibleFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/internal/content/FileSystemProvider;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/internal/content/FileSystemProvider;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 303
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 304
    return-object v4

    .line 306
    :cond_41
    const/4 v5, 0x0

    return-object v5

    .line 290
    .end local v1    # "afterVisibleFile":Ljava/io/File;
    .end local v4    # "afterDocId":Ljava/lang/String;
    :cond_43
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to rename to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected shouldBlockFromTree(Ljava/lang/String;)Z
    .registers 3
    .param p1, "docId"    # Ljava/lang/String;

    .line 683
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldHide(Ljava/io/File;)Z
    .registers 4
    .param p1, "file"    # Ljava/io/File;

    .line 675
    sget-object v0, Lcom/android/internal/content/FileSystemProvider;->PATTERN_HIDDEN_PATH:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method protected typeSupportsMetadata(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 687
    invoke-static {p1}, Landroid/provider/MetadataReader;->isSupportedMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 688
    const-string/jumbo v0, "vnd.android.document/directory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 687
    :goto_13
    return v0
.end method
