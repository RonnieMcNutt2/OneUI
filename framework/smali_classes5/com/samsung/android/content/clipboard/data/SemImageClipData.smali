.class public Lcom/samsung/android/content/clipboard/data/SemImageClipData;
.super Lcom/samsung/android/content/clipboard/data/SemClipData;
.source "SemImageClipData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemImageClipData"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient mContentUri:Landroid/net/Uri;

.field private mContentUriString:Ljava/lang/String;

.field private mExtraDataPath:Ljava/lang/String;

.field private transient mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

.field private mImagePath:Ljava/lang/String;

.field private mInitBaseValue:Ljava/lang/String;

.field private mInitBaseValueCheck:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 67
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(I)V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUriString:Ljava/lang/String;

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    .line 58
    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    .line 59
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    .line 60
    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(Landroid/os/Parcel;)V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUriString:Ljava/lang/String;

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    .line 58
    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    .line 59
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    .line 60
    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 75
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->readFromSource(Landroid/os/Parcel;)V

    .line 76
    return-void
.end method

.method private compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z
    .registers 24
    .param p1, "src"    # Ljava/io/FileInputStream;
    .param p2, "dest"    # Ljava/io/FileInputStream;

    .line 390
    const/4 v1, 0x5

    .line 391
    .local v1, "compareCount":I
    const/16 v2, 0x80

    .line 392
    .local v2, "compareSize":I
    const/4 v3, 0x0

    .line 395
    .local v3, "result":Z
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v4, v4

    .line 396
    .local v4, "srcSize":I
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    long-to-int v5, v5

    .line 397
    .local v5, "destSize":I
    if-ne v4, v5, :cond_c7

    const/4 v0, 0x1

    if-lt v4, v0, :cond_c7

    if-ge v5, v0, :cond_27

    move-object/from16 v15, p1

    move-object/from16 v6, p2

    move/from16 v16, v1

    move/from16 v17, v2

    goto/16 :goto_cf

    .line 401
    :cond_27
    const/16 v7, 0x80

    if-gt v4, v7, :cond_2c

    move v7, v4

    .line 402
    .local v7, "buffSize":I
    :cond_2c
    div-int v8, v4, v7

    .line 403
    .local v8, "tmp":I
    const/4 v9, 0x5

    if-lt v8, v9, :cond_32

    goto :goto_33

    :cond_32
    move v9, v8

    .line 405
    .local v9, "iCnt":I
    :goto_33
    mul-int v10, v7, v9

    sub-int v8, v4, v10

    .line 406
    div-int v10, v8, v9

    .line 410
    .local v10, "offset":I
    const/4 v11, 0x0

    .line 411
    .local v11, "position":I
    new-array v12, v7, [B

    .line 412
    .local v12, "readSrcData":[B
    new-array v13, v7, [B

    .line 414
    .local v13, "readDestData":[B
    new-instance v14, Ljava/io/BufferedInputStream;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_40} :catch_f0
    .catchall {:try_start_4 .. :try_end_40} :catchall_e5

    move-object/from16 v15, p1

    :try_start_42
    invoke-direct {v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 415
    .local v14, "bisSrc":Ljava/io/BufferedInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_c5
    .catchall {:try_start_42 .. :try_end_47} :catchall_c3

    move-object/from16 v6, p2

    :try_start_49
    invoke-direct {v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_c1
    .catchall {:try_start_49 .. :try_end_4c} :catchall_bf

    .line 417
    .local v0, "bisDest":Ljava/io/BufferedInputStream;
    const/16 v16, 0x0

    move/from16 v20, v16

    move/from16 v16, v1

    move/from16 v1, v20

    .local v1, "i1":I
    .local v16, "compareCount":I
    :goto_54
    if-ge v1, v9, :cond_a3

    .line 418
    move/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "compareSize":I
    .local v17, "compareSize":I
    :try_start_59
    invoke-virtual {v14, v12, v2, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 419
    invoke-virtual {v0, v13, v2, v7}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5f} :catch_9e
    .catchall {:try_start_59 .. :try_end_5f} :catchall_98

    .line 421
    add-int v2, v7, v10

    add-int/2addr v11, v2

    .line 422
    move/from16 v18, v3

    .end local v3    # "result":Z
    .local v18, "result":Z
    int-to-long v2, v11

    :try_start_65
    invoke-virtual {v14, v2, v3}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 423
    int-to-long v2, v11

    invoke-virtual {v0, v2, v3}, Ljava/io/BufferedInputStream;->skip(J)J
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6c} :catch_93
    .catchall {:try_start_65 .. :try_end_6c} :catchall_8d

    .line 425
    const/4 v2, 0x0

    move/from16 v3, v18

    .end local v18    # "result":Z
    .local v2, "i2":I
    .restart local v3    # "result":Z
    :goto_6f
    if-ge v2, v7, :cond_84

    .line 426
    move-object/from16 v19, v0

    .end local v0    # "bisDest":Ljava/io/BufferedInputStream;
    .local v19, "bisDest":Ljava/io/BufferedInputStream;
    :try_start_73
    aget-byte v0, v12, v2
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_75} :catch_9e
    .catchall {:try_start_73 .. :try_end_75} :catchall_98

    move/from16 v18, v3

    .end local v3    # "result":Z
    .restart local v18    # "result":Z
    :try_start_77
    aget-byte v3, v13, v2
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_79} :catch_93
    .catchall {:try_start_77 .. :try_end_79} :catchall_8d

    if-ne v0, v3, :cond_7d

    const/4 v0, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v0, 0x0

    :goto_7e
    move v3, v0

    .line 425
    .end local v18    # "result":Z
    .restart local v3    # "result":Z
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v19

    goto :goto_6f

    .end local v19    # "bisDest":Ljava/io/BufferedInputStream;
    .restart local v0    # "bisDest":Ljava/io/BufferedInputStream;
    :cond_84
    move-object/from16 v19, v0

    move/from16 v18, v3

    .line 417
    .end local v0    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v2    # "i2":I
    .end local v3    # "result":Z
    .restart local v18    # "result":Z
    .restart local v19    # "bisDest":Ljava/io/BufferedInputStream;
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v17

    goto :goto_54

    .line 433
    .end local v1    # "i1":I
    .end local v4    # "srcSize":I
    .end local v5    # "destSize":I
    .end local v7    # "buffSize":I
    .end local v8    # "tmp":I
    .end local v9    # "iCnt":I
    .end local v10    # "offset":I
    .end local v11    # "position":I
    .end local v12    # "readSrcData":[B
    .end local v13    # "readDestData":[B
    .end local v14    # "bisSrc":Ljava/io/BufferedInputStream;
    .end local v19    # "bisDest":Ljava/io/BufferedInputStream;
    :catchall_8d
    move-exception v0

    move-object v1, v0

    move/from16 v3, v18

    goto/16 :goto_114

    .line 429
    :catch_93
    move-exception v0

    move/from16 v3, v18

    goto/16 :goto_f9

    .line 433
    .end local v18    # "result":Z
    .restart local v3    # "result":Z
    :catchall_98
    move-exception v0

    move/from16 v18, v3

    move-object v1, v0

    .end local v3    # "result":Z
    .restart local v18    # "result":Z
    goto/16 :goto_114

    .line 429
    .end local v18    # "result":Z
    .restart local v3    # "result":Z
    :catch_9e
    move-exception v0

    move/from16 v18, v3

    .end local v3    # "result":Z
    .restart local v18    # "result":Z
    goto/16 :goto_f9

    .line 417
    .end local v17    # "compareSize":I
    .end local v18    # "result":Z
    .restart local v0    # "bisDest":Ljava/io/BufferedInputStream;
    .restart local v1    # "i1":I
    .local v2, "compareSize":I
    .restart local v3    # "result":Z
    .restart local v4    # "srcSize":I
    .restart local v5    # "destSize":I
    .restart local v7    # "buffSize":I
    .restart local v8    # "tmp":I
    .restart local v9    # "iCnt":I
    .restart local v10    # "offset":I
    .restart local v11    # "position":I
    .restart local v12    # "readSrcData":[B
    .restart local v13    # "readDestData":[B
    .restart local v14    # "bisSrc":Ljava/io/BufferedInputStream;
    :cond_a3
    move-object/from16 v19, v0

    move/from16 v17, v2

    move/from16 v18, v3

    .line 434
    .end local v0    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v1    # "i1":I
    .end local v2    # "compareSize":I
    .end local v3    # "result":Z
    .end local v4    # "srcSize":I
    .end local v5    # "destSize":I
    .end local v7    # "buffSize":I
    .end local v8    # "tmp":I
    .end local v9    # "iCnt":I
    .end local v10    # "offset":I
    .end local v11    # "position":I
    .end local v12    # "readSrcData":[B
    .end local v13    # "readDestData":[B
    .end local v14    # "bisSrc":Ljava/io/BufferedInputStream;
    .restart local v17    # "compareSize":I
    .restart local v18    # "result":Z
    :try_start_a9
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 435
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_af} :catch_b4
    .catchall {:try_start_a9 .. :try_end_af} :catchall_b2

    .line 439
    :goto_af
    const/4 v0, 0x0

    .line 440
    .end local p1    # "src":Ljava/io/FileInputStream;
    .local v0, "src":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 441
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v1, "dest":Ljava/io/FileInputStream;
    goto :goto_b9

    .line 439
    .end local v0    # "src":Ljava/io/FileInputStream;
    .end local v1    # "dest":Ljava/io/FileInputStream;
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :catchall_b2
    move-exception v0

    goto :goto_bc

    .line 436
    :catch_b4
    move-exception v0

    .line 437
    .local v0, "e1":Ljava/io/IOException;
    :try_start_b5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_b2

    .end local v0    # "e1":Ljava/io/IOException;
    goto :goto_af

    .line 442
    .end local p1    # "src":Ljava/io/FileInputStream;
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v0, "src":Ljava/io/FileInputStream;
    .restart local v1    # "dest":Ljava/io/FileInputStream;
    :goto_b9
    move/from16 v3, v18

    goto :goto_10e

    .line 439
    .end local v0    # "src":Ljava/io/FileInputStream;
    .end local v1    # "dest":Ljava/io/FileInputStream;
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :goto_bc
    const/4 v1, 0x0

    .line 440
    .end local p1    # "src":Ljava/io/FileInputStream;
    .local v1, "src":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 441
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v2, "dest":Ljava/io/FileInputStream;
    throw v0

    .line 433
    .end local v16    # "compareCount":I
    .end local v17    # "compareSize":I
    .end local v18    # "result":Z
    .local v1, "compareCount":I
    .local v2, "compareSize":I
    .restart local v3    # "result":Z
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :catchall_bf
    move-exception v0

    goto :goto_ea

    .line 429
    :catch_c1
    move-exception v0

    goto :goto_f5

    .line 433
    :catchall_c3
    move-exception v0

    goto :goto_e8

    .line 429
    :catch_c5
    move-exception v0

    goto :goto_f3

    .line 397
    .restart local v4    # "srcSize":I
    .restart local v5    # "destSize":I
    :cond_c7
    move-object/from16 v15, p1

    move-object/from16 v6, p2

    move/from16 v16, v1

    move/from16 v17, v2

    .line 398
    .end local v1    # "compareCount":I
    .end local v2    # "compareSize":I
    .restart local v16    # "compareCount":I
    .restart local v17    # "compareSize":I
    :goto_cf
    nop

    .line 434
    :try_start_d0
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 435
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d6} :catch_db
    .catchall {:try_start_d0 .. :try_end_d6} :catchall_d9

    .line 439
    :goto_d6
    const/4 v0, 0x0

    .line 440
    .end local p1    # "src":Ljava/io/FileInputStream;
    .restart local v0    # "src":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 441
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v1, "dest":Ljava/io/FileInputStream;
    goto :goto_e0

    .line 439
    .end local v0    # "src":Ljava/io/FileInputStream;
    .end local v1    # "dest":Ljava/io/FileInputStream;
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :catchall_d9
    move-exception v0

    goto :goto_e2

    .line 436
    :catch_db
    move-exception v0

    .line 437
    .local v0, "e1":Ljava/io/IOException;
    :try_start_dc
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_d9

    .end local v0    # "e1":Ljava/io/IOException;
    goto :goto_d6

    .line 398
    .end local p1    # "src":Ljava/io/FileInputStream;
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v0, "src":Ljava/io/FileInputStream;
    .restart local v1    # "dest":Ljava/io/FileInputStream;
    :goto_e0
    const/4 v2, 0x0

    return v2

    .line 439
    .end local v0    # "src":Ljava/io/FileInputStream;
    .end local v1    # "dest":Ljava/io/FileInputStream;
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :goto_e2
    const/4 v1, 0x0

    .line 440
    .end local p1    # "src":Ljava/io/FileInputStream;
    .local v1, "src":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 441
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v2, "dest":Ljava/io/FileInputStream;
    throw v0

    .line 433
    .end local v4    # "srcSize":I
    .end local v5    # "destSize":I
    .end local v16    # "compareCount":I
    .end local v17    # "compareSize":I
    .local v1, "compareCount":I
    .local v2, "compareSize":I
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :catchall_e5
    move-exception v0

    move-object/from16 v15, p1

    :goto_e8
    move-object/from16 v6, p2

    :goto_ea
    move/from16 v16, v1

    move/from16 v17, v2

    move-object v1, v0

    .end local v1    # "compareCount":I
    .end local v2    # "compareSize":I
    .restart local v16    # "compareCount":I
    .restart local v17    # "compareSize":I
    goto :goto_114

    .line 429
    .end local v16    # "compareCount":I
    .end local v17    # "compareSize":I
    .restart local v1    # "compareCount":I
    .restart local v2    # "compareSize":I
    :catch_f0
    move-exception v0

    move-object/from16 v15, p1

    :goto_f3
    move-object/from16 v6, p2

    :goto_f5
    move/from16 v16, v1

    move/from16 v17, v2

    .line 430
    .end local v1    # "compareCount":I
    .end local v2    # "compareSize":I
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "compareCount":I
    .restart local v17    # "compareSize":I
    :goto_f9
    :try_start_f9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_fc
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_112

    .line 431
    const/4 v3, 0x0

    .line 434
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_fd
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 435
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_103} :catch_108
    .catchall {:try_start_fd .. :try_end_103} :catchall_106

    .line 439
    :goto_103
    const/4 v0, 0x0

    .line 440
    .end local p1    # "src":Ljava/io/FileInputStream;
    .local v0, "src":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 441
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v1, "dest":Ljava/io/FileInputStream;
    goto :goto_10d

    .line 439
    .end local v0    # "src":Ljava/io/FileInputStream;
    .end local v1    # "dest":Ljava/io/FileInputStream;
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :catchall_106
    move-exception v0

    goto :goto_10f

    .line 436
    :catch_108
    move-exception v0

    .line 437
    .local v0, "e1":Ljava/io/IOException;
    :try_start_109
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10c
    .catchall {:try_start_109 .. :try_end_10c} :catchall_106

    .end local v0    # "e1":Ljava/io/IOException;
    goto :goto_103

    .line 442
    .end local p1    # "src":Ljava/io/FileInputStream;
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v0, "src":Ljava/io/FileInputStream;
    .restart local v1    # "dest":Ljava/io/FileInputStream;
    :goto_10d
    nop

    .line 443
    :goto_10e
    return v3

    .line 439
    .end local v0    # "src":Ljava/io/FileInputStream;
    .end local v1    # "dest":Ljava/io/FileInputStream;
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :goto_10f
    const/4 v1, 0x0

    .line 440
    .end local p1    # "src":Ljava/io/FileInputStream;
    .local v1, "src":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 441
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v2, "dest":Ljava/io/FileInputStream;
    throw v0

    .line 433
    .end local v1    # "src":Ljava/io/FileInputStream;
    .end local v2    # "dest":Ljava/io/FileInputStream;
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :catchall_112
    move-exception v0

    move-object v1, v0

    .line 434
    :goto_114
    :try_start_114
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 435
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_11a} :catch_11f
    .catchall {:try_start_114 .. :try_end_11a} :catchall_11d

    .line 439
    :goto_11a
    const/4 v0, 0x0

    .line 440
    .end local p1    # "src":Ljava/io/FileInputStream;
    .restart local v0    # "src":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 441
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .restart local v2    # "dest":Ljava/io/FileInputStream;
    goto :goto_124

    .line 439
    .end local v0    # "src":Ljava/io/FileInputStream;
    .end local v2    # "dest":Ljava/io/FileInputStream;
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :catchall_11d
    move-exception v0

    goto :goto_125

    .line 436
    :catch_11f
    move-exception v0

    .line 437
    .local v0, "e1":Ljava/io/IOException;
    :try_start_120
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_123
    .catchall {:try_start_120 .. :try_end_123} :catchall_11d

    .end local v0    # "e1":Ljava/io/IOException;
    goto :goto_11a

    .line 442
    .end local p1    # "src":Ljava/io/FileInputStream;
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v0, "src":Ljava/io/FileInputStream;
    .restart local v2    # "dest":Ljava/io/FileInputStream;
    :goto_124
    throw v1

    .line 439
    .end local v0    # "src":Ljava/io/FileInputStream;
    .end local v2    # "dest":Ljava/io/FileInputStream;
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :goto_125
    const/4 v1, 0x0

    .line 440
    .end local p1    # "src":Ljava/io/FileInputStream;
    .restart local v1    # "src":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 441
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .restart local v2    # "dest":Ljava/io/FileInputStream;
    throw v0
.end method

.method private compareFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
    .registers 8
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "fisSrc":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 449
    .local v1, "fisDest":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 452
    .local v2, "isSameFile":Z
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 453
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v3

    .line 454
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z

    move-result v3
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_13} :catch_24
    .catchall {:try_start_3 .. :try_end_13} :catchall_22

    move v2, v3

    .line 459
    nop

    .line 460
    :try_start_15
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 462
    nop

    .line 463
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_1d

    .line 467
    :cond_1c
    :goto_1c
    goto :goto_33

    .line 465
    :catch_1d
    move-exception v3

    .line 466
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 468
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_33

    .line 458
    :catchall_22
    move-exception v3

    goto :goto_34

    .line 455
    :catch_24
    move-exception v3

    .line 456
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_25
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    .line 459
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_2d

    .line 460
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 462
    :cond_2d
    if-eqz v1, :cond_1c

    .line 463
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_1d

    goto :goto_1c

    .line 470
    :goto_33
    return v2

    .line 459
    :goto_34
    if-eqz v0, :cond_3c

    .line 460
    :try_start_36
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_3c

    .line 465
    :catch_3a
    move-exception v4

    goto :goto_42

    .line 462
    :cond_3c
    :goto_3c
    if-eqz v1, :cond_46

    .line 463
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_41} :catch_3a

    goto :goto_46

    .line 466
    .local v4, "e":Ljava/lang/Exception;
    :goto_42
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47

    .line 467
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_46
    :goto_46
    nop

    .line 468
    :goto_47
    throw v3
.end method

.method private compareFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .line 474
    const/4 v0, 0x0

    .line 475
    .local v0, "fisSrc":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 479
    .local v1, "fisDest":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 480
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 481
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z

    move-result v2
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_12} :catch_22
    .catchall {:try_start_2 .. :try_end_12} :catchall_20

    .line 487
    .local v2, "isSameFile":Z
    nop

    .line 488
    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 490
    nop

    .line 491
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1b

    .line 495
    goto :goto_3e

    .line 493
    :catch_1b
    move-exception v3

    .line 494
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 496
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_3e

    .line 486
    .end local v2    # "isSameFile":Z
    :catchall_20
    move-exception v2

    goto :goto_3f

    .line 482
    :catch_22
    move-exception v2

    .line 483
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_23
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 484
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 487
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .local v3, "isSameFile":Z
    if-eqz v0, :cond_32

    .line 488
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_32

    .line 493
    :catch_30
    move-exception v2

    goto :goto_38

    .line 490
    :cond_32
    :goto_32
    if-eqz v1, :cond_3c

    .line 491
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_37} :catch_30

    goto :goto_3c

    .line 494
    .local v2, "e":Ljava/lang/Exception;
    :goto_38
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 496
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_3d

    .line 495
    :cond_3c
    :goto_3c
    nop

    .line 498
    :goto_3d
    move v2, v3

    .end local v3    # "isSameFile":Z
    .local v2, "isSameFile":Z
    :goto_3e
    return v2

    .line 487
    .end local v2    # "isSameFile":Z
    :goto_3f
    if-eqz v0, :cond_47

    .line 488
    :try_start_41
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_47

    .line 493
    :catch_45
    move-exception v3

    goto :goto_4d

    .line 490
    :cond_47
    :goto_47
    if-eqz v1, :cond_51

    .line 491
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4c} :catch_45

    goto :goto_51

    .line 494
    .local v3, "e":Ljava/lang/Exception;
    :goto_4d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_52

    .line 495
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_51
    :goto_51
    nop

    .line 496
    :goto_52
    throw v2
.end method

.method private setClipData()V
    .registers 5

    .line 102
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "file":Ljava/io/File;
    new-instance v1, Landroid/content/ClipData$Item;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 106
    .local v1, "item":Landroid/content/ClipData$Item;
    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->probeContentType(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "mimeType":Ljava/lang/String;
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "mimeTypes":[Ljava/lang/String;
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setClipData([Ljava/lang/String;Landroid/content/ClipData$Item;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1f} :catch_20

    .line 111
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "mimeTypes":[Ljava/lang/String;
    goto :goto_24

    .line 109
    :catch_20
    move-exception v2

    .line 110
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 112
    .end local v2    # "e":Ljava/io/IOException;
    :goto_24
    return-void
.end method


# virtual methods
.method public convertForRemote()V
    .registers 4

    .line 569
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "imageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/semclipboard/remote"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setImagePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 571
    const-string v1, "SemImageClipData"

    const-string/jumbo v2, "success converting"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_2d
    return-void
.end method

.method public deleteContentUri(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .line 598
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 599
    .local v0, "imageFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 600
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->deleteContentUriInternal(Landroid/content/Context;Ljava/lang/String;)V

    .line 602
    :cond_12
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;

    .line 282
    const-string v0, "SemImageClipData"

    const-string v1, "bitmap equals"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v2, 0x0

    .line 284
    .local v2, "result":Z
    invoke-super {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_10

    .line 285
    return v4

    .line 288
    :cond_10
    instance-of v3, p1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    if-nez v3, :cond_15

    .line 289
    return v4

    .line 292
    :cond_15
    move-object v3, p1

    check-cast v3, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    .line 293
    .local v3, "trgData":Lcom/samsung/android/content/clipboard/data/SemImageClipData;
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "trgBmp":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getInitBasePath()Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "trgInitBasePath":Ljava/lang/String;
    if-eqz v5, :cond_4d

    iget-object v6, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4d

    .line 297
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 298
    .local v6, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v6, :cond_41

    .line 299
    iget-object v7, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 300
    const/4 v2, 0x1

    .line 301
    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 304
    :cond_41
    iget-object v7, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-direct {p0, v7, v4}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 305
    const/4 v2, 0x1

    .line 306
    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_4d
    :goto_4d
    return v2
.end method

.method public getBitmapPath()Ljava/lang/String;
    .registers 2

    .line 505
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_7

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setClipData()V

    .line 154
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method protected getClipDataInternal()Landroid/content/ClipData;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_7

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setClipData()V

    .line 166
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .registers 2

    .line 512
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getExtraDataPath()Ljava/lang/String;
    .registers 2

    .line 519
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 4

    .line 241
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_5

    .line 242
    return-object v0

    .line 245
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 246
    return-object v1

    .line 249
    :cond_f
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, "file":Ljava/io/File;
    const/high16 v2, 0x10000000

    :try_start_18
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1c} :catch_1d

    return-object v1

    .line 252
    :catch_1d
    move-exception v2

    .line 253
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 256
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    return-object v1
.end method

.method public getImageFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInitBasePath()Ljava/lang/String;
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    return-object v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 5

    .line 362
    invoke-super {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 363
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_7

    .line 364
    return-object v0

    .line 367
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 368
    return-object v2

    .line 371
    :cond_11
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v1, "file":Ljava/io/File;
    const/high16 v3, 0x10000000

    :try_start_1a
    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1e} :catch_1f

    return-object v2

    .line 374
    :catch_1f
    move-exception v3

    .line 375
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 378
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    return-object v2
.end method

.method public hasExtraData()Z
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_c

    goto :goto_d

    .line 273
    :cond_c
    return v1

    .line 271
    :cond_d
    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method public insertContentUri(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .line 580
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 582
    .local v0, "identity":J
    :try_start_4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 583
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "_data"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/content/clipboard/provider/SemImageClipDataProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 585
    .local v3, "contentUri":Landroid/net/Uri;
    invoke-virtual {p0, v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setContentUri(Landroid/net/Uri;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_22
    .catchall {:try_start_4 .. :try_end_1b} :catchall_20

    .line 589
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "contentUri":Landroid/net/Uri;
    nop

    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 590
    goto :goto_41

    .line 589
    :catchall_20
    move-exception v2

    goto :goto_42

    .line 586
    :catch_22
    move-exception v2

    .line 587
    .local v2, "e":Ljava/lang/Exception;
    :try_start_23
    const-string v3, "SemImageClipData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurs in insertContentUri because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_23 .. :try_end_3f} :catchall_20

    .line 589
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1c

    .line 591
    :goto_41
    return-void

    .line 589
    :goto_42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 590
    throw v2
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 341
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "contentUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 344
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    goto :goto_1a

    .line 346
    :cond_14
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    .line 348
    :goto_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    iput-boolean v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    .line 351
    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    .line 354
    .end local v0    # "contentUri":Ljava/lang/String;
    goto :goto_5e

    .line 352
    :catch_40
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readFromSource~Exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemImageClipData"

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5e
    return-void
.end method

.method public setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .registers 7
    .param p1, "type"    # I
    .param p2, "altData"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 83
    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    .line 84
    .local v0, "result":Z
    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    if-nez v1, :cond_b

    goto :goto_29

    .line 88
    :cond_b
    packed-switch p1, :pswitch_data_2c

    .line 94
    const/4 v0, 0x0

    goto :goto_28

    .line 90
    :pswitch_10
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 91
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getExtraDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setBitmapPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 92
    nop

    .line 98
    :goto_28
    return v0

    .line 85
    :cond_29
    :goto_29
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_10
    .end packed-switch
.end method

.method public setBitmapPath(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "FilePath"    # Ljava/lang/String;
    .param p2, "ExtraDataPath"    # Ljava/lang/String;

    .line 526
    const-string/jumbo v0, "setBitmapPath"

    const-string v1, "SemImageClipData"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, "result":Z
    if-eqz p1, :cond_62

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_13

    goto :goto_62

    .line 533
    :cond_13
    iget-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    if-eqz v2, :cond_1c

    .line 534
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    .line 535
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    .line 537
    :cond_1c
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    .line 539
    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3e

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExtraDataPath ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iput-object p2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    .line 544
    :cond_3e
    invoke-super {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 545
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_61

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 546
    const/4 v0, 0x1

    .line 547
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_61

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_61

    .line 548
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 549
    const/4 p2, 0x0

    .line 553
    :cond_61
    return v0

    .line 530
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_62
    :goto_62
    return v0
.end method

.method public setContentUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "contentUri"    # Landroid/net/Uri;

    .line 560
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    .line 561
    return-void
.end method

.method public setExtraDataPath(Ljava/lang/String;)Z
    .registers 6
    .param p1, "FilePath"    # Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "result":Z
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_b

    goto :goto_22

    .line 208
    :cond_b
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    .line 209
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 211
    const/4 v0, 0x1

    goto :goto_21

    .line 213
    :cond_1a
    const-string v2, "SemImageClipData"

    const-string v3, "ClipboardDataBitmap : ExtraDataPath is no file path ..check plz"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_21
    return v0

    .line 205
    .end local v1    # "tempFile":Ljava/io/File;
    :cond_22
    :goto_22
    const/4 v1, 0x0

    return v1
.end method

.method public setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 231
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 232
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)Z
    .registers 6
    .param p1, "FilePath"    # Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "result":Z
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_c

    goto :goto_2b

    .line 181
    :cond_c
    iget-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    if-eqz v2, :cond_14

    .line 182
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    .line 183
    iput-boolean v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    .line 186
    :cond_14
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    .line 187
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 189
    const/4 v0, 0x1

    goto :goto_2a

    .line 191
    :cond_23
    const-string v2, "SemImageClipData"

    const-string v3, "ClipboardDataBitmap : value is no file path ..check plz"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_2a
    return v0

    .line 178
    .end local v1    # "tempFile":Ljava/io/File;
    :cond_2b
    :goto_2b
    return v1
.end method

.method public toLoad()V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    goto :goto_14

    .line 135
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    .line 139
    :goto_14
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    if-eqz v0, :cond_29

    const-string v1, "/data/clipboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 140
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/sec/clipboard/util/CompatabilityHelper;->replacePathForCompatability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setImagePath(Ljava/lang/String;)Z

    .line 142
    :cond_29
    const-string v0, "SemImageClipData"

    const-string/jumbo v1, "imageclipdata toLoad called"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method public toSave()V
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    if-eqz v0, :cond_a

    .line 120
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUriString:Ljava/lang/String;

    .line 122
    :cond_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemImageClipData class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1d

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1f

    :cond_1d
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 318
    const-string v0, "SemImageClipData"

    const-string v1, "Bitmap write to parcel"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 323
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    if-nez v0, :cond_1d

    .line 325
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_24

    .line 327
    :cond_1d
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    :goto_24
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 331
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 333
    return-void
.end method
