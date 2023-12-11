.class Landroid/app/DownloadManager$SecCursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecCursorTranslator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2542
    const-class v0, Landroid/app/DownloadManager;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;)V
    .registers 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "baseUri"    # Landroid/net/Uri;

    .line 2546
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2547
    iput-object p2, p0, Landroid/app/DownloadManager$SecCursorTranslator;->mBaseUri:Landroid/net/Uri;

    .line 2548
    return-void
.end method

.method private getErrorCode(I)J
    .registers 4
    .param p1, "status"    # I

    .line 2775
    const/16 v0, 0x190

    if-gt v0, p1, :cond_8

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_12

    const/16 v0, 0x2bc

    if-ge p1, v0, :cond_12

    .line 2778
    :cond_10
    int-to-long v0, p1

    return-wide v0

    .line 2781
    :cond_12
    sparse-switch p1, :sswitch_data_24

    .line 2797
    int-to-long v0, p1

    return-wide v0

    .line 2790
    :sswitch_17
    const-wide/16 v0, 0x3f0

    return-wide v0

    .line 2793
    :sswitch_1a
    const-wide/16 v0, 0x3f1

    return-wide v0

    .line 2787
    :sswitch_1d
    const-wide/16 v0, 0x3ef

    return-wide v0

    .line 2784
    :sswitch_20
    const-wide/16 v0, 0x3ee

    return-wide v0

    nop

    :sswitch_data_24
    .sparse-switch
        0xc6 -> :sswitch_20
        0xc7 -> :sswitch_1d
        0x1e8 -> :sswitch_1a
        0x1e9 -> :sswitch_17
    .end sparse-switch
.end method

.method private getLocalUri()Ljava/lang/String;
    .registers 7

    .line 2668
    const-string v0, "destination"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2669
    .local v0, "destinationType":J
    const-wide/16 v2, 0x4

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2671
    const-string v2, "hint"

    invoke-direct {p0, v2}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2674
    :cond_13
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_31

    .line 2676
    const-string v2, "_data"

    invoke-direct {p0, v2}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2677
    .local v2, "localPath":Ljava/lang/String;
    if-nez v2, :cond_23

    .line 2678
    return-object v3

    .line 2680
    :cond_23
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2683
    .end local v2    # "localPath":Ljava/lang/String;
    :cond_31
    const-wide/16 v4, 0x6

    cmp-long v2, v0, v4

    if-nez v2, :cond_53

    .line 2684
    const-string/jumbo v2, "local_filename"

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$SecCursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$SecCursorTranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2685
    .restart local v2    # "localPath":Ljava/lang/String;
    if-nez v2, :cond_45

    .line 2686
    return-object v3

    .line 2688
    :cond_45
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2691
    .end local v2    # "localPath":Ljava/lang/String;
    :cond_53
    const-string v2, "_id"

    invoke-direct {p0, v2}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2692
    .local v2, "downloadId":J
    iget-object v4, p0, Landroid/app/DownloadManager$SecCursorTranslator;->mBaseUri:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getPausedReason(I)J
    .registers 4
    .param p1, "status"    # I

    .line 2759
    packed-switch p1, :pswitch_data_10

    .line 2770
    const-wide/16 v0, 0x4

    return-wide v0

    .line 2767
    :pswitch_6
    const-wide/16 v0, 0x3

    return-wide v0

    .line 2764
    :pswitch_9
    const-wide/16 v0, 0x2

    return-wide v0

    .line 2761
    :pswitch_c
    const-wide/16 v0, 0x1

    return-wide v0

    nop

    :pswitch_data_10
    .packed-switch 0xc2
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private getUnderlyingLong(Ljava/lang/String;)J
    .registers 4
    .param p1, "column"    # Ljava/lang/String;

    .line 2802
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "column"    # Ljava/lang/String;

    .line 2806
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isLongColumn(Ljava/lang/String;)Z
    .registers 3
    .param p1, "column"    # Ljava/lang/String;

    .line 2597
    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetLONG_COLUMNS()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private translateLong(Ljava/lang/String;)J
    .registers 4
    .param p1, "column"    # Ljava/lang/String;

    .line 2696
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->isLongColumn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2699
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->translateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 2702
    :cond_13
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2703
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 2705
    :cond_20
    const-string/jumbo v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2706
    const-string/jumbo v0, "total_bytes"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 2708
    :cond_31
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 2709
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 2713
    :cond_45
    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 2714
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getReason(I)J

    move-result-wide v0

    return-wide v0

    .line 2716
    :cond_58
    const-string v0, "bytes_so_far"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2717
    const-string v0, "current_bytes"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 2720
    :cond_67
    const-string v0, "dd_contentSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 2721
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 2723
    :cond_74
    const-string v0, "downloadmethod"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 2724
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 2726
    :cond_81
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 2727
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 2729
    :cond_8f
    const-string/jumbo v0, "storage_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 2730
    const-string/jumbo v0, "storagetype"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 2732
    :cond_a0
    const-string/jumbo v0, "range_start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 2733
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 2735
    :cond_ae
    const-string/jumbo v0, "range_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 2736
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 2738
    :cond_bc
    const-string/jumbo v0, "range_first_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 2739
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 2741
    :cond_ca
    nop

    .line 2742
    const-string/jumbo v0, "lastmod"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private translateString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "column"    # Ljava/lang/String;

    .line 2626
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->isLongColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2627
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->translateLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2629
    :cond_f
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2630
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2632
    :cond_1d
    const-string v0, "description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2633
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2635
    :cond_2a
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2636
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2638
    :cond_38
    const-string/jumbo v0, "media_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2639
    const-string/jumbo v0, "mimetype"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2641
    :cond_49
    const-string/jumbo v0, "local_filename"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2642
    const-string v0, "_data"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2648
    :cond_59
    const-string v0, "dd_fileName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 2649
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2651
    :cond_66
    const-string v0, "dd_vendor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 2652
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2654
    :cond_73
    const-string v0, "dd_majorVersion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 2655
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2657
    :cond_80
    const-string v0, "dd_primaryMimeType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 2658
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2660
    :cond_8d
    const-string v0, "dd_description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 2661
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2663
    :cond_9a
    nop

    .line 2664
    invoke-direct {p0}, Landroid/app/DownloadManager$SecCursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBlob(I)[B
    .registers 3
    .param p1, "columnIndex"    # I

    .line 2588
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getColumnCount()I
    .registers 2

    .line 2583
    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 3
    .param p1, "columnName"    # Ljava/lang/String;

    .line 2552
    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 6
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2557
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2558
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 2561
    return v0

    .line 2559
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 6
    .param p1, "columnIndex"    # I

    .line 2566
    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 2567
    .local v0, "numColumns":I
    if-ltz p1, :cond_10

    if-ge p1, v0, :cond_10

    .line 2571
    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    return-object v1

    .line 2568
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid column index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " columns exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 5

    .line 2576
    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 2577
    .local v0, "returnColumns":[Ljava/lang/String;
    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2578
    return-object v0
.end method

.method public getDouble(I)D
    .registers 4
    .param p1, "columnIndex"    # I

    .line 2593
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 4
    .param p1, "columnIndex"    # I

    .line 2602
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInt(I)I
    .registers 4
    .param p1, "columnIndex"    # I

    .line 2607
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .param p1, "columnIndex"    # I

    .line 2612
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->translateLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReason(I)J
    .registers 4
    .param p1, "status"    # I

    .line 2746
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 2754
    const-wide/16 v0, 0x0

    return-wide v0

    .line 2748
    :sswitch_a
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    return-wide v0

    .line 2751
    :sswitch_f
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    return-wide v0

    :sswitch_data_14
    .sparse-switch
        0x4 -> :sswitch_f
        0x10 -> :sswitch_a
    .end sparse-switch
.end method

.method public getShort(I)S
    .registers 4
    .param p1, "columnIndex"    # I

    .line 2617
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "columnIndex"    # I

    .line 2622
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->translateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translateStatus(I)I
    .registers 3
    .param p1, "status"    # I

    .line 2811
    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_14

    .line 2843
    :pswitch_4
    const/16 v0, 0x10

    return v0

    .line 2827
    :pswitch_7
    const/16 v0, 0x8

    return v0

    .line 2822
    :pswitch_a
    const/4 v0, 0x4

    return v0

    .line 2816
    :pswitch_c
    return v0

    .line 2813
    :pswitch_d
    const/4 v0, 0x1

    return v0

    .line 2830
    :pswitch_f
    const/high16 v0, 0x10000

    return v0

    .line 2839
    :pswitch_12
    return v0

    nop

    :pswitch_data_14
    .packed-switch 0xb5
        :pswitch_12
        :pswitch_f
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_4
        :pswitch_12
        :pswitch_4
        :pswitch_d
        :pswitch_4
        :pswitch_c
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_12
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
