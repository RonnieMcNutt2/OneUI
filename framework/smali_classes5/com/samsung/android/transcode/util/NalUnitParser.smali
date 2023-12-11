.class public Lcom/samsung/android/transcode/util/NalUnitParser;
.super Ljava/lang/Object;
.source "NalUnitParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;,
        Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;
    }
.end annotation


# static fields
.field private static final CHECK_MAX_SIZE:I = 0x200

.field private static final CLLI_SEI_MESSAGE_PAYLOAD_SIZE:I = 0x4

.field private static final CLLI_SEI_MESSAGE_PAYLOAD_TYPE:I = 0x90

.field private static final CONTENT_LIGHT_LEVEL_INFO_META:Ljava/lang/String; = "Content light level info meta"

.field private static final DEBUG:Z = false

.field private static final MASTERING_DISPLAY_COLOR_META:Ljava/lang/String; = "Mastering display color meta"

.field private static final MDCV_SEI_MESSAGE_PAYLOAD_SIZE:I = 0x18

.field private static final MDCV_SEI_MESSAGE_PAYLOAD_TYPE:I = 0x89

.field private static final NAL_START_CODE:[B

.field private static final STREAM_DUMP_PATH:Ljava/lang/String; = "/data/data/com.samsung.app.newtrim/files/inputStream.bin"

.field private static final TAG:Ljava/lang/String; = "NalUnitParser"


# instance fields
.field private mBuffer:[B

.field private final mBufferSize:I

.field private mContentsLevelInfoMetaStartPos:I

.field private mHdrStaticMeta:Ljava/nio/ByteBuffer;

.field private mMasteringDisplayColorMetaStartPos:I

.field private final mNalStartPos:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    .line 45
    iput v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    .line 105
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 106
    .local v0, "orgPosition":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "input buffer size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NalUnitParser"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/16 v1, 0x200

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBufferSize:I

    .line 108
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    .line 109
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 110
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mNalStartPos:I

    .line 125
    return-void
.end method

.method private findContentLightLevel()Z
    .registers 4

    .line 296
    iget v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mNalStartPos:I

    .line 297
    .local v0, "index":I
    :goto_2
    add-int/lit8 v1, v0, 0x7

    iget v2, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBufferSize:I

    if-ge v1, v2, :cond_20

    .line 298
    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->isNalStartCode([BI)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    .line 299
    iput v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    .line 300
    add-int/lit8 v0, v0, 0x4

    .line 301
    add-int/lit8 v1, v0, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/util/NalUnitParser;->isContentLightLevelInfo(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 303
    return v2

    .line 306
    :cond_1e
    add-int/2addr v0, v2

    goto :goto_2

    .line 308
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method private findContentLightLevelWithinDisplayMasteringNal(I)Z
    .registers 5
    .param p1, "startIndex"    # I

    .line 283
    move v0, p1

    .line 284
    .local v0, "index":I
    :goto_1
    add-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBufferSize:I

    if-ge v1, v2, :cond_1e

    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->isNalStartCode([BI)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 285
    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->isContentLightLevelInfo(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 286
    iget v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    iput v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    .line 287
    const/4 v1, 0x1

    return v1

    .line 289
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 292
    :cond_1e
    const/4 v1, 0x0

    return v1
.end method

.method private findMasteringDisplayStaticMeta()Z
    .registers 5

    .line 255
    iget v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mNalStartPos:I

    .line 256
    .local v0, "index":I
    :goto_2
    add-int/lit8 v1, v0, 0x7

    iget v2, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBufferSize:I

    if-ge v1, v2, :cond_35

    .line 257
    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->isNalStartCode([BI)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_33

    .line 258
    iput v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    .line 259
    add-int/lit8 v0, v0, 0x4

    .line 261
    add-int/lit8 v1, v0, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/util/NalUnitParser;->isMasteringDisplayColorInfo(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 263
    add-int/lit8 v0, v0, 0x1a

    .line 264
    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findContentLightLevelWithinDisplayMasteringNal(I)Z

    move-result v1

    const-string v3, "NalUnitParser"

    if-eqz v1, :cond_2d

    .line 265
    const-string v1, "Mastering display color meta and Content light level info meta in one NAL"

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 268
    :cond_2d
    const-string v1, "Mastering display color meta and Content light level info meta not  in one NAL"

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_32
    return v2

    .line 275
    :cond_33
    add-int/2addr v0, v2

    goto :goto_2

    .line 278
    :cond_35
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    .line 279
    const/4 v1, 0x0

    return v1
.end method

.method private findNalStartCode([BI)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "startIndex"    # I

    .line 312
    array-length v0, p1

    sub-int/2addr v0, p2

    sget-object v1, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 313
    .local v0, "endIndex":I
    if-lez v0, :cond_19

    .line 314
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-gt v1, v0, :cond_19

    .line 315
    add-int v2, p2, v1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/transcode/util/NalUnitParser;->isNalStartCode([BI)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 316
    add-int v2, v1, p2

    return v2

    .line 314
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 320
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method private findPPSPosition([BZ)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "isHEVC"    # Z

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "index":I
    :goto_1
    array-length v1, p1

    sub-int/2addr v1, v0

    sget-object v2, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    array-length v2, v2

    if-lt v1, v2, :cond_18

    .line 226
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v0

    .line 227
    if-ltz v0, :cond_18

    .line 228
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/transcode/util/NalUnitParser;->isPPSNalUnit([BIZ)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 229
    return v0

    .line 231
    :cond_15
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 237
    :cond_18
    const/4 v1, -0x1

    return v1
.end method

.method public static getH265NalUnitType([BI)I
    .registers 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 354
    add-int/lit8 v0, p1, 0x4

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getNalUnitType([BI)I
    .registers 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 350
    add-int/lit8 v0, p1, 0x4

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private isContentLightLevelInfo(I)Z
    .registers 4
    .param p1, "index"    # I

    .line 341
    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    aget-byte v0, v0, p1

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->toUnsigned(B)I

    move-result v0

    const/16 v1, 0x90

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, v1

    .line 342
    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->toUnsigned(B)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 341
    :goto_1c
    return v0
.end method

.method private isMasteringDisplayColorInfo(I)Z
    .registers 4
    .param p1, "index"    # I

    .line 336
    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    aget-byte v0, v0, p1

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->toUnsigned(B)I

    move-result v0

    const/16 v1, 0x89

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, v1

    .line 337
    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->toUnsigned(B)I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 336
    :goto_1d
    return v0
.end method

.method private isNalStartCode([BI)Z
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "index"    # I

    .line 324
    array-length v0, p1

    sub-int/2addr v0, p2

    sget-object v1, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_9

    .line 325
    return v2

    .line 327
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    sget-object v1, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    array-length v3, v1

    if-ge v0, v3, :cond_1b

    .line 328
    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aget-byte v1, v1, v0

    if-eq v3, v1, :cond_18

    .line 329
    return v2

    .line 327
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 332
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method private isPPSNalUnit([BIZ)Z
    .registers 11
    .param p1, "buffer"    # [B
    .param p2, "index"    # I
    .param p3, "isHEVC"    # Z

    .line 241
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "NAL type : "

    const-string v3, "NalUnitParser"

    if-eqz p3, :cond_2b

    .line 242
    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/NalUnitParser;->getH265NalUnitType([BI)I

    move-result v4

    .line 243
    .local v4, "type":I
    invoke-static {v4}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->getNalType(I)Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    move-result-object v5

    .line 244
    .local v5, "nalType":Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    sget-object v2, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->PPS_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    if-ne v5, v2, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0

    .line 247
    .end local v4    # "type":I
    .end local v5    # "nalType":Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;
    :cond_2b
    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/NalUnitParser;->getNalUnitType([BI)I

    move-result v4

    .line 248
    .restart local v4    # "type":I
    invoke-static {v4}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->getNalType(I)Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    move-result-object v5

    .line 249
    .local v5, "nalType":Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v2, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->PICTURE_PARAMETER_SET:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    if-ne v5, v2, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v1

    :goto_4d
    return v0
.end method

.method private toUnsigned(B)I
    .registers 3
    .param p1, "val"    # B

    .line 346
    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public findHDRStaticMeta()Z
    .registers 11

    .line 128
    iget v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mNalStartPos:I

    const/4 v1, 0x0

    const-string v2, "NalUnitParser"

    if-gez v0, :cond_e

    .line 129
    const-string/jumbo v0, "there is no nal start code"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return v1

    .line 133
    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findMasteringDisplayStaticMeta()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1d

    .line 134
    const-string v0, "fail to find Mastering display color meta in stream."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iput-object v3, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    .line 136
    return v1

    .line 140
    :cond_1d
    const/4 v0, 0x0

    .line 143
    .local v0, "allMetaInOneNal":Z
    iget v4, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    iget v5, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    if-ne v4, v5, :cond_2f

    .line 144
    iget-object v5, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    add-int/lit8 v4, v4, 0x4

    invoke-direct {p0, v5, v4}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v4

    move v5, v4

    .line 146
    .local v4, "masteringDisplayColorMetaEndPos":I
    .local v5, "contentsLevelInfoMetaEndPos":I
    const/4 v0, 0x1

    goto :goto_47

    .line 148
    .end local v4    # "masteringDisplayColorMetaEndPos":I
    .end local v5    # "contentsLevelInfoMetaEndPos":I
    :cond_2f
    iget-object v5, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    add-int/lit8 v4, v4, 0x4

    invoke-direct {p0, v5, v4}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v4

    .line 150
    .restart local v4    # "masteringDisplayColorMetaEndPos":I
    invoke-direct {p0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findContentLightLevel()Z

    move-result v5

    if-eqz v5, :cond_106

    .line 151
    iget-object v5, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    iget v6, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    add-int/lit8 v6, v6, 0x4

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v5

    .line 159
    .restart local v5    # "contentsLevelInfoMetaEndPos":I
    :goto_47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mastering display color meta buffer position : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ~ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content light level info meta buffer position : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget v6, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    sub-int v6, v4, v6

    .line 166
    .local v6, "sizeOfMasteringDisplayColorMeta":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mastering display color meta data size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    if-eqz v0, :cond_a7

    move v7, v1

    goto :goto_ab

    :cond_a7
    iget v7, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    sub-int v7, v5, v7

    .line 171
    .local v7, "sizeOfContentsLevelInfoMeta":I
    :goto_ab
    if-ltz v6, :cond_e4

    if-gez v7, :cond_b0

    goto :goto_e4

    .line 176
    :cond_b0
    add-int v1, v6, v7

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    .line 178
    iget-object v8, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    iget v9, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    invoke-virtual {v1, v8, v9, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 180
    if-nez v0, :cond_e0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content light level info meta data size : "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    iget v8, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    invoke-virtual {v1, v2, v8, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 186
    :cond_e0
    iput-object v3, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    .line 188
    const/4 v1, 0x1

    return v1

    .line 172
    :cond_e4
    :goto_e4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid size : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return v1

    .line 154
    .end local v5    # "contentsLevelInfoMetaEndPos":I
    .end local v6    # "sizeOfMasteringDisplayColorMeta":I
    .end local v7    # "sizeOfContentsLevelInfoMeta":I
    :cond_106
    const-string v3, "cannot find Content light level info meta"

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return v1
.end method

.method public getHdrStaticMeta()Ljava/nio/ByteBuffer;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public insertHDRStaticMeta(Ljava/nio/ByteBuffer;IZ)Ljava/nio/ByteBuffer;
    .registers 10
    .param p1, "orgBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "orgBufferSize"    # I
    .param p3, "isHEVC"    # Z

    .line 196
    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_7b

    .line 200
    :cond_b
    new-array v0, p2, [B

    .line 201
    .local v0, "orgByteBuffer":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 202
    invoke-direct {p0, v0, p3}, Lcom/samsung/android/transcode/util/NalUnitParser;->findPPSPosition([BZ)I

    move-result v1

    .line 203
    .local v1, "ppsStartPos":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ppsPos : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NalUnitParser"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v2, -0x1

    .line 205
    .local v2, "ppsEndPos":I
    if-ltz v1, :cond_51

    .line 206
    add-int/lit8 v4, v1, 0x4

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v2

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ppsEndPos : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_51
    iget-object v3, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/2addr v3, p2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 211
    .local v3, "newBuf":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 212
    if-lez v2, :cond_72

    .line 213
    invoke-virtual {v3, v0, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 214
    iget-object v4, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 215
    sub-int v4, p2, v2

    invoke-virtual {v3, v0, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_7a

    .line 217
    :cond_72
    iget-object v4, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 218
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 220
    :goto_7a
    return-object v3

    .line 197
    .end local v0    # "orgByteBuffer":[B
    .end local v1    # "ppsStartPos":I
    .end local v2    # "ppsEndPos":I
    .end local v3    # "newBuf":Ljava/nio/ByteBuffer;
    :cond_7b
    :goto_7b
    return-object p1
.end method
