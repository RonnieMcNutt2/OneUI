.class public Lcom/samsung/android/transcode/info/MediaInfoChecker;
.super Ljava/lang/Object;
.source "MediaInfoChecker.java"


# static fields
.field private static final FOUR_K_VIDEO_RESOULTION_SIZE:I = 0x870000

.field static final NOT_SUPPORT_VC:I = 0x499602d2

.field private static mp4v_esds_size:I

.field public static final sMediaCodecList:Landroid/media/MediaCodecList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/transcode/info/MediaInfoChecker;->sMediaCodecList:Landroid/media/MediaCodecList;

    .line 18
    const/16 v0, 0x69

    sput v0, Lcom/samsung/android/transcode/info/MediaInfoChecker;->mp4v_esds_size:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "do not instatiate"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getAllCodecList()Landroid/media/MediaCodecList;
    .registers 2

    .line 154
    sget-object v0, Lcom/samsung/android/transcode/info/MediaInfoChecker;->sMediaCodecList:Landroid/media/MediaCodecList;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    :goto_b
    return-object v0
.end method

.method public static getHDRMode(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)I
    .registers 4
    .param p0, "info"    # Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, "hdrType":I
    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_18

    :cond_b
    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1e

    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    const/16 v2, 0x19

    if-ne v1, v2, :cond_18

    goto :goto_1e

    .line 80
    :cond_18
    iget-boolean v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    if-eqz v1, :cond_1f

    .line 81
    const/4 v0, 0x1

    goto :goto_1f

    .line 79
    :cond_1e
    :goto_1e
    const/4 v0, 0x2

    .line 84
    :cond_1f
    :goto_1f
    return v0
.end method

.method public static isRewritable(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z
    .registers 10
    .param p0, "audioformat"    # Landroid/media/MediaFormat;
    .param p1, "videoformat"    # Landroid/media/MediaFormat;

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "bSupportedVideoType":Z
    const/4 v1, 0x0

    .line 36
    .local v1, "bSupportedAudioType":Z
    const-string/jumbo v2, "mime"

    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "mimeAudio":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "mimeVideo":Ljava/lang/String;
    const-string/jumbo v4, "video/mp4v-es"

    const-string v5, "TranscodeLib"

    if-eqz v2, :cond_37

    const-string/jumbo v6, "video/avc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 40
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 41
    const-string/jumbo v6, "video/3gpp"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 42
    const-string/jumbo v6, "video/hevc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 43
    :cond_35
    const/4 v0, 0x1

    goto :goto_3c

    .line 45
    :cond_37
    const-string v6, "Unsupported mime type: video"

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_3c
    if-eqz v3, :cond_58

    const-string v6, "audio/mp4a-latm"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_56

    .line 48
    const-string v6, "audio/3gpp"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_56

    .line 49
    const-string v6, "audio/amr-wb"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 50
    :cond_56
    const/4 v1, 0x1

    goto :goto_5d

    .line 52
    :cond_58
    const-string v6, "Unsuppported mime type: audio"

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_5d
    if-eqz v2, :cond_ad

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ad

    const-string v4, "csd-0"

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 57
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 58
    .local v4, "csd":Ljava/nio/ByteBuffer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", csd.capacity(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 59
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", csd.limit()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 58
    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    sget v7, Lcom/samsung/android/transcode/info/MediaInfoChecker;->mp4v_esds_size:I

    if-le v6, v7, :cond_ad

    .line 61
    const/4 v0, 0x0

    .line 65
    .end local v4    # "csd":Ljava/nio/ByteBuffer;
    :cond_ad
    if-nez v3, :cond_b5

    .line 66
    const-string v4, "audio track is null - skip audio"

    invoke-static {v5, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v1, 0x1

    .line 70
    :cond_b5
    if-eqz v0, :cond_bb

    if-eqz v1, :cond_bb

    const/4 v4, 0x1

    goto :goto_bc

    :cond_bb
    const/4 v4, 0x0

    :goto_bc
    return v4
.end method

.method public static isRewriteSupportedFileFormat(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z
    .registers 3
    .param p0, "info"    # Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    .line 29
    iget-object v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->MimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isSupportedCodecType(Landroid/media/MediaFormat;)Z
    .registers 15
    .param p0, "inputFormat"    # Landroid/media/MediaFormat;

    .line 119
    const-string/jumbo v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "mime":Ljava/lang/String;
    const-string v1, "TranscodeLib"

    const/4 v2, 0x0

    if-nez v0, :cond_13

    .line 121
    const-string/jumbo v3, "isSupportedCodecType mime is null"

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return v2

    .line 125
    :cond_13
    invoke-static {}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->getAllCodecList()Landroid/media/MediaCodecList;

    move-result-object v3

    .line 126
    .local v3, "codecList":Landroid/media/MediaCodecList;
    invoke-virtual {v3, p0}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "codec":Ljava/lang/String;
    if-nez v4, :cond_63

    .line 128
    invoke-virtual {v3}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v5

    .line 129
    .local v5, "infos":[Landroid/media/MediaCodecInfo;
    array-length v6, v5

    move v7, v2

    :goto_23
    if-ge v7, v6, :cond_49

    aget-object v8, v5, v7

    .line 130
    .local v8, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 131
    goto :goto_46

    .line 134
    :cond_2e
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, "types":[Ljava/lang/String;
    array-length v10, v9

    move v11, v2

    :goto_34
    if-ge v11, v10, :cond_46

    aget-object v12, v9, v11

    .line 136
    .local v12, "type":Ljava/lang/String;
    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_43

    .line 137
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 138
    goto :goto_46

    .line 135
    .end local v12    # "type":Ljava/lang/String;
    :cond_43
    add-int/lit8 v11, v11, 0x1

    goto :goto_34

    .line 129
    .end local v8    # "info":Landroid/media/MediaCodecInfo;
    .end local v9    # "types":[Ljava/lang/String;
    :cond_46
    :goto_46
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 142
    :cond_49
    if-nez v4, :cond_63

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSupportedCodecType not support mime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return v2

    .line 148
    .end local v5    # "infos":[Landroid/media/MediaCodecInfo;
    :cond_63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSupportedCodecType support codec  : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", mime : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v1, 0x1

    return v1
.end method

.method public static isSupportedFileFormat(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z
    .registers 3
    .param p0, "info"    # Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    .line 25
    sget-object v0, Lcom/samsung/android/transcode/constants/EncodeConstants$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->MimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportedResolution(Landroid/media/MediaFormat;IIII)Z
    .registers 11
    .param p0, "inputformat"    # Landroid/media/MediaFormat;
    .param p1, "inputwidth"    # I
    .param p2, "inputheight"    # I
    .param p3, "outputwidth"    # I
    .param p4, "outputheight"    # I

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isSupportedResolution\tinputwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputheight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputheight : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x0

    if-ltz p1, :cond_69

    if-ltz p2, :cond_69

    if-ltz p3, :cond_69

    if-gez p4, :cond_41

    goto :goto_69

    .line 97
    :cond_41
    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v1

    .line 99
    .local v1, "resourceHelper":Lcom/samsung/android/media/SemMediaResourceHelper;
    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->getRemainedVideoCapacity()I

    move-result v2

    .line 101
    .local v2, "remainedCapacity":I
    mul-int v3, p1, p2

    mul-int v4, p3, p4

    add-int/2addr v3, v4

    .line 104
    .local v3, "requiredResolutionSizeWithInputAndOutput":I
    const v4, 0x499602d2

    if-eq v2, v4, :cond_56

    .line 105
    move v4, v2

    .local v4, "codecSize":I
    goto :goto_65

    .line 107
    .end local v4    # "codecSize":I
    :cond_56
    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->getMaxVideoCapacity()I

    move-result v4

    .line 109
    .restart local v4    # "codecSize":I
    if-gt v4, v3, :cond_65

    .line 110
    const/high16 v5, 0x870000

    if-le v4, v5, :cond_62

    .line 111
    add-int/2addr v5, v4

    goto :goto_64

    :cond_62
    mul-int/lit8 v5, v4, 0x2

    :goto_64
    move v4, v5

    .line 115
    :cond_65
    :goto_65
    if-lt v4, v3, :cond_68

    const/4 v0, 0x1

    :cond_68
    return v0

    .line 93
    .end local v1    # "resourceHelper":Lcom/samsung/android/media/SemMediaResourceHelper;
    .end local v2    # "remainedCapacity":I
    .end local v3    # "requiredResolutionSizeWithInputAndOutput":I
    .end local v4    # "codecSize":I
    :cond_69
    :goto_69
    return v0
.end method
