.class public Lcom/samsung/android/motionphoto/utils/HEIFParser;
.super Ljava/lang/Object;
.source "HEIFParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;,
        Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;,
        Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HEIFParser"


# instance fields
.field locationList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;",
            ">;"
        }
    .end annotation
.end field

.field mCoverImageID:I

.field mData:Ljava/io/InputStream;

.field mFileSize:J

.field mFlags:I

.field mFoundiinfChunk:I

.field mFoundilocChunk:I

.field mFoundirefChunk:I

.field mFoundpitmChunk:I

.field mOffset:J

.field mRemainChunkSize:I

.field mVersion:I

.field mXMPMetadataIDs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mXMPOffset:J

.field mXMPSize:J

.field referenceList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mXMPMetadataIDs:Ljava/util/Vector;

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->referenceList:Ljava/util/Vector;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->locationList:Ljava/util/Vector;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mCoverImageID:I

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mXMPOffset:J

    .line 40
    iput-wide v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mXMPSize:J

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    .line 43
    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFlags:I

    .line 45
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    .line 46
    iput-wide v1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFileSize:J

    .line 47
    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    .line 49
    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundiinfChunk:I

    .line 50
    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundpitmChunk:I

    .line 51
    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundirefChunk:I

    .line 52
    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundilocChunk:I

    return-void
.end method

.method private byte2toUInt32([B)J
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    if-gez v0, :cond_7

    add-int/lit16 v0, v0, 0x100

    :cond_7
    int-to-long v0, v0

    .line 56
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    if-gez v2, :cond_f

    add-int/lit16 v2, v2, 0x100

    :cond_f
    int-to-long v2, v2

    .line 57
    const/4 v4, 0x2

    aget-byte v4, p1, v4

    if-gez v4, :cond_17

    add-int/lit16 v4, v4, 0x100

    :cond_17
    int-to-long v4, v4

    .line 58
    const/4 v6, 0x3

    aget-byte p1, p1, v6

    if-gez p1, :cond_1f

    add-int/lit16 p1, p1, 0x100

    :cond_1f
    int-to-long v6, p1

    const/16 p1, 0x18

    shl-long/2addr v0, p1

    const/16 p1, 0x10

    shl-long/2addr v2, p1

    add-long/2addr v0, v2

    const/16 p1, 0x8

    shl-long v2, v4, p1

    add-long/2addr v0, v2

    add-long/2addr v0, v6

    return-wide v0
.end method

.method private bytetoUInt16([B)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-gez v1, :cond_7

    add-int/lit16 v1, v1, 0x100

    .line 64
    :cond_7
    const/4 v2, 0x1

    aget-byte p1, p1, v2

    if-gez p1, :cond_e

    add-int/lit16 p1, p1, 0x100

    :cond_e
    shl-int/lit8 v1, v1, 0x8

    shl-int/2addr p1, v0

    add-int/2addr v1, p1

    return v1
.end method

.method private parseFullBoxHeader()I
    .registers 8

    .line 69
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 73
    const/4 v2, -0x1

    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_1f

    if-eq v3, v0, :cond_e

    return v2

    .line 79
    :cond_e
    iget-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v5, 0x4

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    .line 81
    invoke-direct {p0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v0

    long-to-int v0, v0

    shr-int/lit8 v0, v0, 0x18

    .line 82
    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    return v4

    :catch_1f
    move-exception v0

    return v2
.end method

.method private parseIinfBox()I
    .registers 18

    .line 241
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseFullBoxHeader()I

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_a

    return v2

    .line 243
    :cond_a
    iget v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    const/4 v3, 0x4

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    .line 249
    new-array v1, v3, [B

    .line 254
    iget v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    const/4 v5, 0x2

    if-nez v4, :cond_19

    move v4, v5

    goto :goto_1a

    :cond_19
    move v4, v3

    .line 261
    :goto_1a
    :try_start_1a
    iget-object v6, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_21} :catch_16e

    if-eq v6, v4, :cond_24

    return v2

    .line 268
    :cond_24
    iget-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    int-to-long v10, v4

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    .line 269
    iget v6, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    sub-int/2addr v6, v4

    iput v6, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    if-ne v4, v5, :cond_36

    .line 271
    invoke-direct {v0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v4

    goto :goto_3b

    .line 273
    :cond_36
    invoke-direct {v0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v8

    long-to-int v4, v8

    :goto_3b
    move v6, v7

    :goto_3c
    const-string v8, "HEIFParser"

    if-ge v6, v4, :cond_164

    .line 277
    :try_start_40
    iget-object v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v9, v1, v7, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v9
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_46} :catch_161

    if-eq v9, v3, :cond_49

    return v2

    .line 283
    :cond_49
    invoke-direct {v0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v9

    .line 284
    iget-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v13, 0x4

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    .line 285
    iget v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    int-to-long v11, v11

    sub-long/2addr v11, v9

    long-to-int v11, v11

    iput v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    sub-long/2addr v9, v13

    .line 289
    :try_start_5c
    iget-object v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v11, v1, v7, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v11
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_62} :catch_15e

    if-eq v11, v3, :cond_65

    return v2

    .line 295
    :cond_65
    iget-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v9, v13

    .line 298
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>([B)V

    .line 299
    const-string/jumbo v12, "infe"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "Exception: "

    if-nez v11, :cond_a3

    .line 301
    iget-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v13, v9

    iput-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    .line 303
    :try_start_80
    iget-object v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v11, v9, v10}, Ljava/io/InputStream;->skip(J)J
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_85} :catch_89

    move v11, v6

    move v6, v3

    goto/16 :goto_119

    :catch_89
    move-exception v0

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 311
    :cond_a3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseFullBoxHeader()I

    move-result v11

    if-eqz v11, :cond_aa

    return v2

    :cond_aa
    sub-long/2addr v9, v13

    .line 315
    iget v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    if-ge v11, v5, :cond_b0

    return v2

    :cond_b0
    if-ne v11, v5, :cond_b4

    move v11, v5

    goto :goto_b5

    :cond_b4
    move v11, v3

    .line 323
    :goto_b5
    :try_start_b5
    iget-object v15, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v15, v1, v7, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v15
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_bb} :catch_15b

    if-eq v15, v11, :cond_be

    return v2

    .line 329
    :cond_be
    iget-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    int-to-long v2, v11

    add-long/2addr v13, v2

    iput-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v9, v2

    if-ne v11, v5, :cond_cc

    .line 332
    invoke-direct {v0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v2

    goto :goto_d1

    .line 334
    :cond_cc
    invoke-direct {v0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v2

    long-to-int v2, v2

    .line 336
    :goto_d1
    iget-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    move v11, v6

    const-wide/16 v5, 0x2

    add-long/2addr v13, v5

    iput-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v9, v5

    .line 339
    :try_start_da
    iget-object v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v13, v5, v6}, Ljava/io/InputStream;->skip(J)J
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_df} :catch_140

    .line 346
    :try_start_df
    iget-object v5, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v6, 0x4

    invoke-virtual {v5, v1, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e6} :catch_13d

    if-eq v5, v6, :cond_ea

    const/4 v1, -0x1

    return v1

    .line 352
    :cond_ea
    iget-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v15, 0x4

    add-long/2addr v13, v15

    iput-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v9, v15

    .line 355
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    .line 356
    const-string/jumbo v13, "mime"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 358
    iget-object v5, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mXMPMetadataIDs:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 359
    iget-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v13, v9

    iput-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    goto :goto_114

    .line 361
    :cond_10f
    iget-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v13, v9

    iput-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    .line 365
    :goto_114
    :try_start_114
    iget-object v2, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v2, v9, v10}, Ljava/io/InputStream;->skip(J)J
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_119} :catch_122

    .line 303
    :goto_119
    nop

    .line 365
    add-int/lit8 v2, v11, 0x1

    move v3, v6

    const/4 v5, 0x2

    move v6, v2

    const/4 v2, -0x1

    goto/16 :goto_3c

    :catch_122
    move-exception v0

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :catch_13d
    move-exception v0

    const/4 v1, -0x1

    return v1

    :catch_140
    move-exception v0

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :catch_15b
    move-exception v0

    move v1, v2

    return v1

    :catch_15e
    move-exception v0

    move v1, v2

    return v1

    :catch_161
    move-exception v0

    move v1, v2

    return v1

    :cond_164
    nop

    .line 375
    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundiinfChunk:I

    .line 377
    const-string v0, "Found iinf Chunk"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :catch_16e
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method private parseIlocBox()I
    .registers 23

    .line 384
    move-object/from16 v0, p0

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 401
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseFullBoxHeader()I

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_d

    return v4

    .line 404
    :cond_d
    iget v3, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    const/4 v5, 0x2

    if-le v3, v5, :cond_13

    return v4

    .line 409
    :cond_13
    :try_start_13
    iget-object v3, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1b} :catch_1b8

    .line 413
    aget-byte v8, v2, v7

    if-eq v3, v6, :cond_20

    return v4

    .line 416
    :cond_20
    iget-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    and-int/lit8 v3, v8, 0xf

    shr-int/2addr v8, v1

    .line 422
    :try_start_2a
    iget-object v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v9, v2, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v9
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_30} :catch_1b5

    .line 426
    aget-byte v10, v2, v7

    if-eq v9, v6, :cond_35

    return v4

    .line 429
    :cond_35
    iget-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v13, v11

    iput-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    .line 431
    iget v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    if-eqz v9, :cond_43

    if-ne v9, v6, :cond_41

    goto :goto_43

    :cond_41
    move v11, v7

    goto :goto_45

    :cond_43
    :goto_43
    and-int/lit8 v11, v10, 0xf

    :goto_45
    shr-int/2addr v10, v1

    if-ge v9, v5, :cond_49

    move v1, v5

    .line 438
    :cond_49
    :try_start_49
    iget-object v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v9, v2, v7, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v9
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4f} :catch_1b2

    if-eq v9, v1, :cond_52

    return v4

    .line 444
    :cond_52
    iget-wide v12, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    int-to-long v14, v1

    add-long/2addr v12, v14

    iput-wide v12, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    if-ne v1, v5, :cond_5f

    .line 446
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v9

    goto :goto_64

    .line 448
    :cond_5f
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v12

    long-to-int v9, v12

    :goto_64
    const-wide/16 v12, 0x0

    move v6, v7

    :goto_67
    const-string v5, "HEIFParser"

    if-ge v6, v9, :cond_1a7

    .line 452
    :try_start_6b
    iget-object v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v4, v2, v7, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_71} :catch_1a4

    if-eq v4, v1, :cond_75

    const/4 v1, -0x1

    return v1

    .line 458
    :cond_75
    move/from16 v16, v8

    iget-wide v7, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v7, v14

    iput-wide v7, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const/4 v7, 0x2

    if-ne v1, v7, :cond_84

    .line 460
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v7

    goto :goto_89

    .line 462
    :cond_84
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v7

    long-to-int v7, v7

    .line 465
    :goto_89
    iget v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    const-string v4, "Exception: "

    move-wide/from16 v18, v12

    const/4 v12, 0x1

    if-eq v8, v12, :cond_9b

    const/4 v12, 0x2

    if-ne v8, v12, :cond_96

    goto :goto_9b

    :cond_96
    move/from16 v21, v9

    const-wide/16 v8, 0x2

    goto :goto_a9

    .line 466
    :cond_9b
    :goto_9b
    iget-wide v12, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    move/from16 v21, v9

    const-wide/16 v8, 0x2

    add-long/2addr v12, v8

    iput-wide v12, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    .line 468
    :try_start_a4
    iget-object v12, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v12, v8, v9}, Ljava/io/InputStream;->skip(J)J
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a9} :catch_189

    .line 476
    :goto_a9
    iget-wide v12, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v12, v8

    iput-wide v12, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    .line 478
    :try_start_ae
    iget-object v12, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v12, v8, v9}, Ljava/io/InputStream;->skip(J)J
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b3} :catch_16e

    if-lez v10, :cond_d7

    .line 486
    :try_start_b5
    iget-object v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v8
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_bc} :catch_d4

    const/4 v5, 0x2

    if-ne v1, v5, :cond_c5

    .line 491
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v5

    int-to-long v12, v5

    goto :goto_c9

    .line 493
    :cond_c5
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v12

    :goto_c9
    if-eq v8, v10, :cond_cd

    const/4 v1, -0x1

    return v1

    .line 497
    :cond_cd
    iget-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    int-to-long v4, v10

    add-long/2addr v8, v4

    iput-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    goto :goto_d9

    :catch_d4
    move-exception v0

    const/4 v1, -0x1

    return v1

    :cond_d7
    move-wide/from16 v12, v18

    .line 501
    :goto_d9
    :try_start_d9
    iget-object v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v5, 0x2

    const/4 v8, 0x0

    invoke-virtual {v4, v2, v8, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v9
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_e1} :catch_16b

    .line 505
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v8

    if-eq v9, v5, :cond_e9

    const/4 v9, -0x1

    return v9

    .line 508
    :cond_e9
    const/4 v9, -0x1

    iget-wide v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v18, 0x2

    add-long v4, v4, v18

    iput-wide v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const/4 v4, 0x1

    if-eq v8, v4, :cond_f6

    return v9

    .line 516
    :cond_f6
    :try_start_f6
    iget-object v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v8
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_fd} :catch_168

    .line 520
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    if-eq v8, v11, :cond_103

    return v9

    .line 523
    :cond_103
    iget-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    int-to-long v4, v11

    add-long/2addr v8, v4

    iput-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    .line 526
    :try_start_109
    iget-object v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    move/from16 v5, v16

    const/4 v8, 0x0

    invoke-virtual {v4, v2, v8, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v9
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_112} :catch_165

    .line 530
    move/from16 v16, v10

    move v8, v11

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v10

    if-eq v9, v5, :cond_11d

    const/4 v1, -0x1

    return v1

    .line 533
    :cond_11d
    move/from16 v17, v8

    iget-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    move-wide/from16 v18, v14

    int-to-long v14, v5

    add-long/2addr v8, v14

    iput-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    .line 536
    :try_start_127
    iget-object v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v8
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12e} :catch_162

    .line 540
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v14

    if-eq v8, v3, :cond_136

    const/4 v1, -0x1

    return v1

    .line 543
    :cond_136
    iget-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    move/from16 v20, v5

    int-to-long v4, v3

    add-long/2addr v8, v4

    iput-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    .line 545
    new-instance v4, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;

    invoke-direct {v4, v0}, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;-><init>(Lcom/samsung/android/motionphoto/utils/HEIFParser;)V

    .line 546
    iput-wide v12, v4, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->base_offset:J

    int-to-long v7, v7

    .line 547
    iput-wide v7, v4, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->itemID:J

    .line 548
    iput-wide v10, v4, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->offset:J

    .line 549
    iput-wide v14, v4, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->length:J

    .line 551
    iget-object v5, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->locationList:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move/from16 v10, v16

    move/from16 v11, v17

    move-wide/from16 v14, v18

    move/from16 v8, v20

    move/from16 v9, v21

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    goto/16 :goto_67

    :catch_162
    move-exception v0

    const/4 v1, -0x1

    return v1

    :catch_165
    move-exception v0

    const/4 v1, -0x1

    return v1

    :catch_168
    move-exception v0

    move v1, v9

    return v1

    :catch_16b
    move-exception v0

    const/4 v1, -0x1

    return v1

    :catch_16e
    move-exception v0

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :catch_189
    move-exception v0

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :catch_1a4
    move-exception v0

    const/4 v1, -0x1

    return v1

    :cond_1a7
    nop

    .line 556
    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundilocChunk:I

    .line 558
    const-string v0, "Found iloc Chunk"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :catch_1b2
    move-exception v0

    const/4 v1, -0x1

    return v1

    :catch_1b5
    move-exception v0

    move v1, v4

    return v1

    :catch_1b8
    move-exception v0

    move v1, v4

    return v1
.end method

.method private parseIrefBox(J)I
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chunk_size"
        }
    .end annotation

    .line 87
    move-object/from16 v0, p0

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 97
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseFullBoxHeader()I

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_d

    return v4

    :cond_d
    const-wide/16 v5, 0x4

    sub-long v7, p1, v5

    .line 101
    iget v3, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    if-nez v3, :cond_17

    const/4 v3, 0x2

    goto :goto_18

    :cond_17
    move v3, v1

    :goto_18
    const-wide/16 v10, 0x0

    cmp-long v10, v7, v10

    const-string v11, "HEIFParser"

    const/4 v12, 0x0

    if-lez v10, :cond_ed

    .line 109
    :try_start_21
    iget-object v10, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v10, v2, v12, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_27} :catch_eb

    if-eq v10, v1, :cond_2a

    return v4

    .line 115
    :cond_2a
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v13

    .line 116
    iget-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v9, v5

    iput-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v7, v5

    .line 120
    :try_start_34
    iget-object v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v9, v2, v12, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v9
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3a} :catch_e9

    if-eq v9, v1, :cond_3d

    return v4

    .line 126
    :cond_3d
    iget-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v9, v5

    iput-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v7, v5

    .line 129
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V

    .line 131
    const-string v10, "cdsc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b8

    .line 133
    :try_start_50
    iget-object v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v9, v2, v12, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v9
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_56} :catch_b6

    if-eq v9, v3, :cond_59

    return v4

    .line 139
    :cond_59
    iget-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    int-to-long v13, v3

    add-long/2addr v9, v13

    iput-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v7, v13

    const/4 v9, 0x2

    if-ne v3, v9, :cond_68

    .line 143
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v9

    goto :goto_6d

    .line 145
    :cond_68
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v9

    long-to-int v9, v9

    .line 148
    :goto_6d
    iget-wide v10, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v15, 0x2

    add-long/2addr v10, v15

    iput-wide v10, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v7, v15

    .line 151
    :try_start_75
    iget-object v10, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v11, 0x2

    invoke-virtual {v10, v2, v12, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7c} :catch_b4

    if-eq v10, v11, :cond_7f

    return v4

    .line 159
    :cond_7f
    :try_start_7f
    iget-object v10, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v10, v2, v12, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_85} :catch_b2

    if-eq v10, v3, :cond_88

    return v4

    .line 165
    :cond_88
    iget-wide v10, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v10, v13

    iput-wide v10, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v7, v13

    const/4 v10, 0x2

    if-ne v3, v10, :cond_96

    .line 168
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v11

    goto :goto_9b

    .line 170
    :cond_96
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v11

    long-to-int v11, v11

    .line 172
    :goto_9b
    new-instance v12, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;

    invoke-direct {v12, v0}, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;-><init>(Lcom/samsung/android/motionphoto/utils/HEIFParser;)V

    .line 173
    iput v9, v12, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;->itemID:I

    .line 174
    iget-object v9, v12, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;->referenceItems:Ljava/util/Vector;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->referenceList:Ljava/util/Vector;

    invoke-virtual {v9, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v15, v2

    goto :goto_c9

    :catch_b2
    move-exception v0

    return v4

    :catch_b4
    move-exception v0

    return v4

    :catch_b6
    move-exception v0

    return v4

    .line 181
    :cond_b8
    const/4 v10, 0x2

    move-object v15, v2

    iget-wide v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v16, 0x8

    sub-long v13, v13, v16

    add-long/2addr v1, v13

    iput-wide v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v7, v13

    .line 184
    :try_start_c4
    iget-object v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v1, v13, v14}, Ljava/io/InputStream;->skip(J)J
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c9} :catch_cd

    :goto_c9
    move-object v2, v15

    const/4 v1, 0x4

    goto/16 :goto_18

    :catch_cd
    move-exception v0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_e9
    move-exception v0

    return v4

    :catch_eb
    move-exception v0

    return v4

    :cond_ed
    if-gez v10, :cond_f0

    return v4

    .line 194
    :cond_f0
    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundirefChunk:I

    .line 196
    const-string v0, "Found iref Chunk"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v12
.end method

.method private parsePitmBox()I
    .registers 9

    .line 202
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseFullBoxHeader()I

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_b

    return v3

    .line 208
    :cond_b
    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    .line 210
    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    const/4 v4, 0x2

    if-nez v2, :cond_16

    move v0, v4

    .line 217
    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_40

    if-eq v2, v0, :cond_20

    return v3

    .line 224
    :cond_20
    iget-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    int-to-long v6, v0

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    .line 225
    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    if-ne v0, v4, :cond_34

    .line 228
    invoke-direct {p0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mCoverImageID:I

    goto :goto_3b

    .line 230
    :cond_34
    invoke-direct {p0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mCoverImageID:I

    :goto_3b
    nop

    .line 235
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundpitmChunk:I

    return v5

    :catch_40
    move-exception v0

    return v3
.end method


# virtual methods
.method public getCoverImageXMPOffsetAndSize(Ljava/io/InputStream;)Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    const-string v0, "HEIFParser"

    .line 564
    iput-object p1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    .line 566
    const/4 p1, 0x4

    new-array v1, p1, [B

    .line 570
    :goto_7
    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundiinfChunk:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_82

    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundpitmChunk:I

    if-ne v2, v4, :cond_82

    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundirefChunk:I

    if-ne v2, v4, :cond_82

    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundilocChunk:I

    if-eq v2, v4, :cond_1b

    goto :goto_82

    .line 635
    :cond_1b
    iget-object p1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mXMPMetadataIDs:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_24

    return-object v5

    :cond_24
    move p1, v3

    .line 639
    :goto_25
    iget-object v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->referenceList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_81

    .line 641
    iget-object v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->referenceList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;

    .line 642
    iget-object v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;->referenceItems:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 643
    iget v0, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;->itemID:I

    .line 644
    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mCoverImageID:I

    if-ne v1, v2, :cond_7e

    iget-object v1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mXMPMetadataIDs:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    move v1, v3

    .line 647
    :goto_54
    iget-object v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->locationList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_7e

    .line 649
    iget-object v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->locationList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;

    .line 651
    iget-wide v6, v2, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->itemID:J

    int-to-long v8, v0

    cmp-long v4, v6, v8

    if-nez v4, :cond_7b

    .line 652
    new-instance p1, Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;

    iget-wide v0, v2, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->base_offset:J

    iget-wide v3, v2, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->offset:J

    add-long v8, v0, v3

    iget-wide v10, v2, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->length:J

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;-><init>(Lcom/samsung/android/motionphoto/utils/HEIFParser;JJ)V

    return-object p1

    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    :cond_7e
    add-int/lit8 p1, p1, 0x1

    goto :goto_25

    :cond_81
    return-object v5

    .line 572
    :cond_82
    :goto_82
    :try_start_82
    iget-object v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v2, v1, v3, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_88} :catch_146

    if-eq v2, p1, :cond_8b

    return-object v5

    .line 581
    :cond_8b
    iget-wide v6, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v8, 0x4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    .line 582
    invoke-direct {p0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v6

    sub-long/2addr v6, v8

    .line 587
    :try_start_97
    iget-object v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v2, v1, v3, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9d} :catch_13e

    if-eq v2, p1, :cond_a0

    return-object v5

    .line 597
    :cond_a0
    iget-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v6, v8

    .line 600
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 601
    const-string/jumbo v3, "iinf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 603
    invoke-direct {p0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseIinfBox()I

    goto/16 :goto_7

    :cond_b9
    nop

    .line 604
    const-string/jumbo v3, "iref"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 606
    invoke-direct {p0, v6, v7}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseIrefBox(J)I

    goto/16 :goto_7

    :cond_c8
    nop

    .line 607
    const-string/jumbo v3, "pitm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 609
    invoke-direct {p0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parsePitmBox()I

    goto/16 :goto_7

    :cond_d7
    nop

    .line 610
    const-string/jumbo v3, "iloc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    .line 612
    invoke-direct {p0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseIlocBox()I

    goto/16 :goto_7

    :cond_e6
    nop

    .line 613
    const-string/jumbo v3, "meta"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Exception: "

    if-eqz v2, :cond_118

    .line 615
    iget-wide v6, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    .line 617
    :try_start_f7
    iget-object v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v2, v8, v9}, Ljava/io/InputStream;->skip(J)J
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fc} :catch_fe

    goto/16 :goto_7

    :catch_fe
    move-exception p1

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 625
    :cond_118
    :try_start_118
    iget-object v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v2, v6, v7}, Ljava/io/InputStream;->skip(J)J
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_11d} :catch_124

    .line 631
    iget-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    goto/16 :goto_7

    :catch_124
    move-exception p1

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :catch_13e
    move-exception p1

    .line 590
    const-string/jumbo p1, "read fail"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :catch_146
    move-exception p1

    return-object v5
.end method
