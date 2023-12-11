.class final Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;
.super Lcom/android/framework/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamDecoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$RefillCallback;,
        Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;
    }
.end annotation


# instance fields
.field private final buffer:[B

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private final input:Ljava/io/InputStream;

.field private lastTag:I

.field private pos:I

.field private refillCallback:Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

.field private totalBytesRetired:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .line 2058
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream;-><init>(Lcom/android/framework/protobuf/CodedInputStream$1;)V

    .line 2056
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2766
    iput-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    .line 2059
    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2060
    iput-object p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 2061
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2062
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2063
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2064
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2065
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;ILcom/android/framework/protobuf/CodedInputStream$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/framework/protobuf/CodedInputStream$1;

    .line 2037
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;

    .line 2037
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;

    .line 2037
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    return-object v0
.end method

.method private static available(Ljava/io/InputStream;)I
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2098
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_4
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 2099
    :catch_5
    move-exception v0

    .line 2100
    .local v0, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    .line 2101
    throw v0
.end method

.method private static read(Ljava/io/InputStream;[BII)I
    .registers 5
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2080
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_4
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 2081
    :catch_5
    move-exception v0

    .line 2082
    .local v0, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    .line 2083
    throw v0
.end method

.method private readBytesSlowPath(I)Lcom/android/framework/protobuf/ByteString;
    .registers 13
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3021
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathOneChunk(I)[B

    move-result-object v0

    .line 3022
    .local v0, "result":[B
    if-eqz v0, :cond_b

    .line 3025
    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    return-object v1

    .line 3028
    :cond_b
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3029
    .local v1, "originalBufferPos":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int v3, v2, v3

    .line 3032
    .local v3, "bufferedBytes":I
    iget v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3033
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3034
    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 3037
    sub-int v4, p1, v3

    .line 3041
    .local v4, "sizeLeft":I
    invoke-direct {p0, v4}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;

    move-result-object v5

    .line 3044
    .local v5, "chunks":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-array v6, p1, [B

    .line 3047
    .local v6, "bytes":[B
    iget-object v7, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v7, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3050
    move v7, v3

    .line 3051
    .local v7, "tempPos":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_42

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 3052
    .local v9, "chunk":[B
    array-length v10, v9

    invoke-static {v9, v2, v6, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3053
    array-length v10, v9

    add-int/2addr v7, v10

    .line 3054
    .end local v9    # "chunk":[B
    goto :goto_2f

    .line 3056
    :cond_42
    invoke-static {v6}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    return-object v2
.end method

.method private readRawBytesSlowPath(IZ)[B
    .registers 14
    .param p1, "size"    # I
    .param p2, "ensureNoLeakedReferences"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2886
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathOneChunk(I)[B

    move-result-object v0

    .line 2887
    .local v0, "result":[B
    if-eqz v0, :cond_11

    .line 2888
    if-eqz p2, :cond_f

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    return-object v1

    .line 2891
    :cond_11
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2892
    .local v1, "originalBufferPos":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int v3, v2, v3

    .line 2895
    .local v3, "bufferedBytes":I
    iget v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2896
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2897
    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2900
    sub-int v4, p1, v3

    .line 2904
    .local v4, "sizeLeft":I
    invoke-direct {p0, v4}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;

    move-result-object v5

    .line 2907
    .local v5, "chunks":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-array v6, p1, [B

    .line 2910
    .local v6, "bytes":[B
    iget-object v7, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v7, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2913
    move v7, v3

    .line 2914
    .local v7, "tempPos":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_35
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_48

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 2915
    .local v9, "chunk":[B
    array-length v10, v9

    invoke-static {v9, v2, v6, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2916
    array-length v10, v9

    add-int/2addr v7, v10

    .line 2917
    .end local v9    # "chunk":[B
    goto :goto_35

    .line 2920
    :cond_48
    return-object v6
.end method

.method private readRawBytesSlowPathOneChunk(I)[B
    .registers 9
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2930
    if-nez p1, :cond_5

    .line 2931
    sget-object v0, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 2933
    :cond_5
    if-ltz p1, :cond_71

    .line 2938
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 2939
    .local v0, "currentMessageSize":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_6c

    .line 2944
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-gt v0, v1, :cond_5e

    .line 2950
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    .line 2952
    .local v1, "bufferedBytes":I
    sub-int v2, p1, v1

    .line 2954
    .local v2, "sizeLeft":I
    const/16 v3, 0x1000

    if-lt v2, v3, :cond_2d

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->available(Ljava/io/InputStream;)I

    move-result v3

    if-gt v2, v3, :cond_2b

    goto :goto_2d

    .line 2979
    :cond_2b
    const/4 v3, 0x0

    return-object v3

    .line 2957
    :cond_2d
    :goto_2d
    new-array v3, p1, [B

    .line 2960
    .local v3, "bytes":[B
    iget-object v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v5, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2961
    iget v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v5, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2962
    iput v6, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2963
    iput v6, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2966
    move v4, v1

    .line 2967
    .local v4, "tempPos":I
    :goto_43
    array-length v5, v3

    if-ge v4, v5, :cond_5d

    .line 2968
    iget-object v5, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    sub-int v6, p1, v4

    invoke-static {v5, v3, v4, v6}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->read(Ljava/io/InputStream;[BII)I

    move-result v5

    .line 2969
    .local v5, "n":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_58

    .line 2972
    iget v6, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2973
    add-int/2addr v4, v5

    .line 2974
    .end local v5    # "n":I
    goto :goto_43

    .line 2970
    .restart local v5    # "n":I
    :cond_58
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6

    .line 2976
    .end local v5    # "n":I
    :cond_5d
    return-object v3

    .line 2946
    .end local v1    # "bufferedBytes":I
    .end local v2    # "sizeLeft":I
    .end local v3    # "bytes":[B
    .end local v4    # "tempPos":I
    :cond_5e
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2947
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2940
    :cond_6c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2934
    .end local v0    # "currentMessageSize":I
    :cond_71
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;
    .registers 7
    .param p1, "sizeLeft"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2995
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2997
    .local v0, "chunks":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_5
    if-lez p1, :cond_30

    .line 2999
    const/16 v1, 0x1000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v1, v1, [B

    .line 3000
    .local v1, "chunk":[B
    const/4 v2, 0x0

    .line 3001
    .local v2, "tempPos":I
    :goto_10
    array-length v3, v1

    if-ge v2, v3, :cond_2a

    .line 3002
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-virtual {v3, v1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 3003
    .local v3, "n":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_25

    .line 3006
    iget v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3007
    add-int/2addr v2, v3

    .line 3008
    .end local v3    # "n":I
    goto :goto_10

    .line 3004
    .restart local v3    # "n":I
    :cond_25
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    .line 3009
    .end local v3    # "n":I
    :cond_2a
    array-length v3, v1

    sub-int/2addr p1, v3

    .line 3010
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3011
    .end local v1    # "chunk":[B
    .end local v2    # "tempPos":I
    goto :goto_5

    .line 3013
    :cond_30
    return-object v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .registers 4

    .line 2725
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2726
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v1, v0

    .line 2727
    .local v1, "bufferEnd":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-le v1, v2, :cond_16

    .line 2729
    sub-int v2, v1, v2

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    .line 2730
    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    goto :goto_19

    .line 2732
    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    .line 2734
    :goto_19
    return-void
.end method

.method private refillBuffer(I)V
    .registers 4
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2777
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2780
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_15

    .line 2781
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2783
    :cond_15
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2786
    :cond_1a
    return-void
.end method

.method private static skip(Ljava/io/InputStream;J)J
    .registers 5
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2089
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0
    :try_end_4
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide v0

    .line 2090
    :catch_5
    move-exception v0

    .line 2091
    .local v0, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    .line 2092
    throw v0
.end method

.method private skipRawBytesSlowPath(I)V
    .registers 11
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3074
    if-ltz p1, :cond_a2

    .line 3078
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-gt v2, v3, :cond_98

    .line 3085
    const/4 v2, 0x0

    .line 3086
    .local v2, "totalSkipped":I
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    if-nez v3, :cond_78

    .line 3088
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3089
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v0, v1

    .line 3090
    .end local v2    # "totalSkipped":I
    .local v0, "totalSkipped":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 3091
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    move v2, v0

    .line 3094
    .end local v0    # "totalSkipped":I
    .restart local v2    # "totalSkipped":I
    :goto_1e
    if-ge v2, p1, :cond_6f

    .line 3095
    sub-int v0, p1, v2

    .line 3096
    .local v0, "toSkip":I
    :try_start_22
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    int-to-long v3, v0

    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skip(Ljava/io/InputStream;J)J

    move-result-wide v3

    .line 3097
    .local v3, "skipped":J
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_3c

    int-to-long v7, v0

    cmp-long v1, v3, v7

    if-gtz v1, :cond_3c

    .line 3103
    cmp-long v1, v3, v5

    if-nez v1, :cond_39

    .line 3108
    goto :goto_6f

    .line 3110
    :cond_39
    long-to-int v1, v3

    add-int/2addr v2, v1

    .line 3111
    .end local v0    # "toSkip":I
    .end local v3    # "skipped":J
    goto :goto_1e

    .line 3098
    .restart local v0    # "toSkip":I
    .restart local v3    # "skipped":J
    :cond_3c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 3099
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#skip returned invalid result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nThe InputStream implementation is buggy."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "totalSkipped":I
    .end local p0    # "this":Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;
    .end local p1    # "size":I
    throw v1
    :try_end_65
    .catchall {:try_start_22 .. :try_end_65} :catchall_65

    .line 3113
    .end local v0    # "toSkip":I
    .end local v3    # "skipped":J
    .restart local v2    # "totalSkipped":I
    .restart local p0    # "this":Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;
    .restart local p1    # "size":I
    :catchall_65
    move-exception v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3114
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 3115
    throw v0

    .line 3113
    :cond_6f
    :goto_6f
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3114
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 3115
    nop

    .line 3117
    :cond_78
    if-ge v2, p1, :cond_97

    .line 3119
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int v1, v0, v1

    .line 3120
    .local v1, "tempPos":I
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 3125
    :goto_86
    sub-int v3, p1, v1

    iget v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v3, v4, :cond_93

    .line 3126
    add-int/2addr v1, v4

    .line 3127
    iput v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3128
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    goto :goto_86

    .line 3131
    :cond_93
    sub-int v0, p1, v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3133
    .end local v1    # "tempPos":I
    :cond_97
    return-void

    .line 3080
    .end local v2    # "totalSkipped":I
    :cond_98
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 3082
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3075
    :cond_a2
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private skipRawVarint()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2546
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d

    .line 2547
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipRawVarintFastPath()V

    goto :goto_10

    .line 2549
    :cond_d
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipRawVarintSlowPath()V

    .line 2551
    :goto_10
    return-void
.end method

.method private skipRawVarintFastPath()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2554
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_15

    .line 2555
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_12

    .line 2556
    return-void

    .line 2554
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2559
    .end local v0    # "i":I
    :cond_15
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private skipRawVarintSlowPath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2563
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 2564
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_c

    .line 2565
    return-void

    .line 2563
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2568
    .end local v0    # "i":I
    :cond_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private tryRefillBuffer(I)Z
    .registers 10
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2797
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v0, v1, :cond_9c

    .line 2805
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    if-le p1, v0, :cond_13

    .line 2806
    return v3

    .line 2810
    :cond_13
    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-le v1, v0, :cond_1a

    .line 2812
    return v3

    .line 2815
    :cond_1a
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    if-eqz v0, :cond_21

    .line 2816
    invoke-interface {v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$RefillCallback;->onRefill()V

    .line 2819
    :cond_21
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2820
    .local v0, "tempPos":I
    if-lez v0, :cond_3b

    .line 2821
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v1, v0, :cond_2f

    .line 2822
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2824
    :cond_2f
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2825
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2826
    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2830
    :cond_3b
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    array-length v5, v2

    sub-int/2addr v5, v4

    iget v6, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v7, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v6, v7

    .line 2835
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2831
    invoke-static {v1, v2, v4, v5}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->read(Ljava/io/InputStream;[BII)I

    move-result v1

    .line 2840
    .local v1, "bytesRead":I
    if-eqz v1, :cond_73

    const/4 v2, -0x1

    if-lt v1, v2, :cond_73

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    array-length v2, v2

    if-gt v1, v2, :cond_73

    .line 2847
    if-lez v1, :cond_72

    .line 2848
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2849
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2850
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-lt v2, p1, :cond_6d

    const/4 v2, 0x1

    goto :goto_71

    :cond_6d
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v2

    :goto_71
    return v2

    .line 2853
    :cond_72
    return v3

    .line 2841
    :cond_73
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 2842
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#read(byte[]) returned invalid result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nThe InputStream implementation is buggy."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2798
    .end local v0    # "tempPos":I
    .end local v1    # "bytesRead":I
    :cond_9c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refillBuffer() called when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes were already available in buffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2123
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    if-ne v0, p1, :cond_5

    .line 2126
    return-void

    .line 2124
    :cond_5
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public enableAliasing(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 2700
    return-void
.end method

.method public getBytesUntilLimit()I
    .registers 4

    .line 2744
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    .line 2745
    const/4 v0, -0x1

    return v0

    .line 2748
    :cond_9
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v1, v2

    .line 2749
    .local v1, "currentAbsolutePosition":I
    sub-int/2addr v0, v1

    return v0
.end method

.method public getLastTag()I
    .registers 2

    .line 2130
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .registers 3

    .line 2759
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2754
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public popLimit(I)V
    .registers 2
    .param p1, "oldLimit"    # I

    .line 2738
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2739
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2740
    return-void
.end method

.method public pushLimit(I)I
    .registers 4
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2709
    if-ltz p1, :cond_17

    .line 2712
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 2713
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2714
    .local v0, "oldLimit":I
    if-gt p1, v0, :cond_12

    .line 2717
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2719
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2721
    return v0

    .line 2715
    :cond_12
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2710
    .end local v0    # "oldLimit":I
    :cond_17
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readBool()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2296
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public readByteArray()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2437
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2438
    .local v0, "size":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1b

    if-lez v0, :cond_1b

    .line 2441
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 2442
    .local v1, "result":[B
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2443
    return-object v1

    .line 2447
    .end local v1    # "result":[B
    :cond_1b
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v1

    return-object v1
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2453
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2454
    .local v0, "size":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1f

    if-lez v0, :cond_1f

    .line 2456
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2457
    .local v1, "result":Ljava/nio/ByteBuffer;
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2458
    return-object v1

    .line 2460
    .end local v1    # "result":Ljava/nio/ByteBuffer;
    :cond_1f
    if-nez v0, :cond_24

    .line 2461
    sget-object v1, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v1

    .line 2467
    :cond_24
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public readBytes()Lcom/android/framework/protobuf/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2421
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2422
    .local v0, "size":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_19

    if-lez v0, :cond_19

    .line 2425
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    .line 2426
    .local v1, "result":Lcom/android/framework/protobuf/ByteString;
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2427
    return-object v1

    .line 2429
    .end local v1    # "result":Lcom/android/framework/protobuf/ByteString;
    :cond_19
    if-nez v0, :cond_1e

    .line 2430
    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    return-object v1

    .line 2432
    :cond_1e
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readBytesSlowPath(I)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2261
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2477
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2291
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2286
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2266
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(ILcom/android/framework/protobuf/Parser;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">(I",
            "Lcom/android/framework/protobuf/Parser<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2369
    .local p2, "parser":Lcom/android/framework/protobuf/Parser;, "Lcom/android/framework/protobuf/Parser<TT;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2370
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2371
    invoke-interface {p2, p0, p3}, Lcom/android/framework/protobuf/Parser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    .line 2372
    .local v0, "result":Lcom/android/framework/protobuf/MessageLite;, "TT;"
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2373
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2374
    return-object v0
.end method

.method public readGroup(ILcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "builder"    # Lcom/android/framework/protobuf/MessageLite$Builder;
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2355
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2356
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2357
    invoke-interface {p2, p0, p3}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    .line 2358
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2359
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2360
    return-void
.end method

.method public readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2281
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2276
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/android/framework/protobuf/Parser;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 7
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">(",
            "Lcom/android/framework/protobuf/Parser<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2405
    .local p1, "parser":Lcom/android/framework/protobuf/Parser;, "Lcom/android/framework/protobuf/Parser<TT;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2406
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2407
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    move-result v1

    .line 2408
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2409
    invoke-interface {p1, p0, p2}, Lcom/android/framework/protobuf/Parser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/MessageLite;

    .line 2410
    .local v2, "result":Lcom/android/framework/protobuf/MessageLite;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2411
    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2412
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->getBytesUntilLimit()I

    move-result v3

    if-nez v3, :cond_2b

    .line 2415
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    .line 2416
    return-object v2

    .line 2413
    :cond_2b
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
.end method

.method public readMessage(Lcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 6
    .param p1, "builder"    # Lcom/android/framework/protobuf/MessageLite$Builder;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2388
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2389
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2390
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    move-result v1

    .line 2391
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2392
    invoke-interface {p1, p0, p2}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    .line 2393
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2394
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2395
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->getBytesUntilLimit()I

    move-result v2

    if-nez v2, :cond_28

    .line 2398
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    .line 2399
    return-void

    .line 2396
    :cond_28
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public readRawByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2858
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v0, v1, :cond_a

    .line 2859
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2861
    :cond_a
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2866
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2867
    .local v0, "tempPos":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_16

    if-lez p1, :cond_16

    .line 2868
    add-int v1, v0, p1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2869
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int v2, v0, p1

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1

    .line 2872
    :cond_16
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v1

    return-object v1
.end method

.method public readRawLittleEndian32()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2659
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2661
    .local v0, "tempPos":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_d

    .line 2662
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2663
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2666
    :cond_d
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2667
    .local v1, "buffer":[B
    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2668
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    return v2
.end method

.method public readRawLittleEndian64()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2676
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2678
    .local v0, "tempPos":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_e

    .line 2679
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2680
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2683
    :cond_e
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2684
    .local v1, "buffer":[B
    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2685
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x7

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v4, v7, v5

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public readRawVarint32()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2507
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2509
    .local v0, "tempPos":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v1, v0, :cond_8

    .line 2510
    goto/16 :goto_72

    .line 2513
    :cond_8
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2515
    .local v2, "buffer":[B
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "tempPos":I
    .local v3, "tempPos":I
    aget-byte v0, v2, v0

    move v4, v0

    .local v4, "x":I
    if-ltz v0, :cond_14

    .line 2516
    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2517
    return v4

    .line 2518
    :cond_14
    sub-int/2addr v1, v3

    const/16 v0, 0x9

    if-ge v1, v0, :cond_1a

    .line 2519
    goto :goto_72

    .line 2520
    :cond_1a
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v1, v2, v3

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v4

    move v3, v1

    .end local v4    # "x":I
    .local v3, "x":I
    if-gez v1, :cond_27

    .line 2521
    xor-int/lit8 v1, v3, -0x80

    .end local v3    # "x":I
    .local v1, "x":I
    goto :goto_7d

    .line 2522
    .end local v1    # "x":I
    .restart local v3    # "x":I
    :cond_27
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tempPos":I
    .local v1, "tempPos":I
    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v3

    move v3, v0

    if-ltz v0, :cond_37

    .line 2523
    xor-int/lit16 v0, v3, 0x3f80

    move v5, v1

    move v1, v0

    move v0, v5

    .end local v3    # "x":I
    .local v0, "x":I
    goto :goto_7d

    .line 2524
    .end local v0    # "x":I
    .restart local v3    # "x":I
    :cond_37
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "tempPos":I
    .local v0, "tempPos":I
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v1, v3

    move v3, v1

    if-gez v1, :cond_46

    .line 2525
    const v1, -0x1fc080

    xor-int/2addr v1, v3

    .end local v3    # "x":I
    .local v1, "x":I
    goto :goto_7d

    .line 2527
    .end local v1    # "x":I
    .restart local v3    # "x":I
    :cond_46
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tempPos":I
    .local v1, "tempPos":I
    aget-byte v0, v2, v0

    .line 2528
    .local v0, "y":I
    shl-int/lit8 v4, v0, 0x1c

    xor-int/2addr v3, v4

    .line 2529
    const v4, 0xfe03f80

    xor-int/2addr v3, v4

    .line 2530
    if-gez v0, :cond_7b

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "tempPos":I
    .local v4, "tempPos":I
    aget-byte v1, v2, v1

    if-gez v1, :cond_78

    add-int/lit8 v1, v4, 0x1

    .end local v4    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v4, v2, v4

    if-gez v4, :cond_7b

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v4    # "tempPos":I
    aget-byte v1, v2, v1

    if-gez v1, :cond_78

    add-int/lit8 v1, v4, 0x1

    .end local v4    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v4, v2, v4

    if-gez v4, :cond_7b

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v4    # "tempPos":I
    aget-byte v1, v2, v1

    if-gez v1, :cond_78

    .line 2536
    nop

    .line 2542
    .end local v0    # "y":I
    .end local v2    # "buffer":[B
    .end local v3    # "x":I
    .end local v4    # "tempPos":I
    :goto_72
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 2530
    .restart local v0    # "y":I
    .restart local v2    # "buffer":[B
    .restart local v3    # "x":I
    .restart local v4    # "tempPos":I
    :cond_78
    move v1, v3

    move v0, v4

    goto :goto_7d

    .end local v4    # "tempPos":I
    .restart local v1    # "tempPos":I
    :cond_7b
    move v0, v1

    move v1, v3

    .line 2539
    .end local v3    # "x":I
    .local v0, "tempPos":I
    .local v1, "x":I
    :goto_7d
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2540
    return v1
.end method

.method public readRawVarint64()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2586
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2588
    .local v0, "tempPos":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v1, v0, :cond_8

    .line 2589
    goto/16 :goto_c0

    .line 2592
    :cond_8
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2595
    .local v2, "buffer":[B
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "tempPos":I
    .local v3, "tempPos":I
    aget-byte v0, v2, v0

    move v4, v0

    .local v4, "y":I
    if-ltz v0, :cond_15

    .line 2596
    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2597
    int-to-long v0, v4

    return-wide v0

    .line 2598
    :cond_15
    sub-int/2addr v1, v3

    const/16 v0, 0x9

    if-ge v1, v0, :cond_1c

    .line 2599
    goto/16 :goto_c0

    .line 2600
    :cond_1c
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v1, v2, v3

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v4

    move v3, v1

    .end local v4    # "y":I
    .local v3, "y":I
    if-gez v1, :cond_2b

    .line 2601
    xor-int/lit8 v1, v3, -0x80

    int-to-long v4, v1

    .local v4, "x":J
    goto/16 :goto_c6

    .line 2602
    .end local v4    # "x":J
    :cond_2b
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tempPos":I
    .local v1, "tempPos":I
    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v3

    move v3, v0

    if-ltz v0, :cond_3b

    .line 2603
    xor-int/lit16 v0, v3, 0x3f80

    int-to-long v4, v0

    move v0, v1

    .restart local v4    # "x":J
    goto/16 :goto_c6

    .line 2604
    .end local v4    # "x":J
    :cond_3b
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v1, v3

    move v3, v1

    if-gez v1, :cond_4c

    .line 2605
    const v1, -0x1fc080

    xor-int/2addr v1, v3

    int-to-long v4, v1

    .restart local v4    # "x":J
    goto/16 :goto_c6

    .line 2606
    .end local v4    # "x":J
    :cond_4c
    int-to-long v4, v3

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v0, v2, v0

    int-to-long v6, v0

    const/16 v0, 0x1c

    shl-long/2addr v6, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    .local v6, "x":J
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-ltz v0, :cond_63

    .line 2607
    const-wide/32 v4, 0xfe03f80

    xor-long/2addr v4, v6

    move v0, v1

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_c6

    .line 2608
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_63
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v1, v2, v1

    int-to-long v4, v1

    const/16 v1, 0x23

    shl-long/2addr v4, v1

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v1, v4, v8

    if-gez v1, :cond_78

    .line 2609
    const-wide v4, -0x7f01fc080L

    xor-long/2addr v4, v6

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_c6

    .line 2610
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_78
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v0, v2, v0

    int-to-long v4, v0

    const/16 v0, 0x2a

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v0, v4, v8

    if-ltz v0, :cond_8e

    .line 2611
    const-wide v4, 0x3f80fe03f80L

    xor-long/2addr v4, v6

    move v0, v1

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_c6

    .line 2612
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_8e
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v1, v2, v1

    int-to-long v4, v1

    const/16 v1, 0x31

    shl-long/2addr v4, v1

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v1, v4, v8

    if-gez v1, :cond_a3

    .line 2613
    const-wide v4, -0x1fc07f01fc080L

    xor-long/2addr v4, v6

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_c6

    .line 2622
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_a3
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v0, v2, v0

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    .line 2623
    .end local v6    # "x":J
    .restart local v4    # "x":J
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v4, v6

    .line 2632
    cmp-long v0, v4, v8

    if-gez v0, :cond_c5

    .line 2633
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v1, v2, v1

    int-to-long v6, v1

    cmp-long v1, v6, v8

    if-gez v1, :cond_c6

    .line 2634
    nop

    .line 2641
    .end local v0    # "tempPos":I
    .end local v2    # "buffer":[B
    .end local v3    # "y":I
    .end local v4    # "x":J
    :goto_c0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    .line 2632
    .restart local v1    # "tempPos":I
    .restart local v2    # "buffer":[B
    .restart local v3    # "y":I
    .restart local v4    # "x":J
    :cond_c5
    move v0, v1

    .line 2638
    .end local v1    # "tempPos":I
    .restart local v0    # "tempPos":I
    :cond_c6
    :goto_c6
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2639
    return-wide v4
.end method

.method readRawVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2646
    const-wide/16 v0, 0x0

    .line 2647
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "shift":I
    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 2648
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawByte()B

    move-result v3

    .line 2649
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 2650
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_15

    .line 2651
    return-wide v0

    .line 2647
    .end local v3    # "b":B
    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    .line 2654
    .end local v2    # "shift":I
    :cond_18
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2482
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2487
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2492
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2497
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2301
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2302
    .local v0, "size":I
    if-lez v0, :cond_1c

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1c

    .line 2305
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    sget-object v4, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2306
    .local v1, "result":Ljava/lang/String;
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2307
    return-object v1

    .line 2309
    .end local v1    # "result":Ljava/lang/String;
    :cond_1c
    if-nez v0, :cond_21

    .line 2310
    const-string v1, ""

    return-object v1

    .line 2312
    :cond_21
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-gt v0, v1, :cond_39

    .line 2313
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2314
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sget-object v4, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2315
    .restart local v1    # "result":Ljava/lang/String;
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2316
    return-object v1

    .line 2319
    .end local v1    # "result":Ljava/lang/String;
    :cond_39
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v2

    sget-object v3, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2324
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2326
    .local v0, "size":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2328
    .local v1, "oldPos":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int v3, v2, v1

    if-gt v0, v3, :cond_16

    if-lez v0, :cond_16

    .line 2331
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2332
    .local v2, "bytes":[B
    add-int v3, v1, v0

    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2333
    move v3, v1

    .local v3, "tempPos":I
    goto :goto_2e

    .line 2334
    .end local v2    # "bytes":[B
    .end local v3    # "tempPos":I
    :cond_16
    if-nez v0, :cond_1b

    .line 2335
    const-string v2, ""

    return-object v2

    .line 2336
    :cond_1b
    if-gt v0, v2, :cond_28

    .line 2337
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2338
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2339
    .restart local v2    # "bytes":[B
    const/4 v3, 0x0

    .line 2340
    .restart local v3    # "tempPos":I
    add-int v4, v3, v0

    iput v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    goto :goto_2e

    .line 2343
    .end local v2    # "bytes":[B
    .end local v3    # "tempPos":I
    :cond_28
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v2

    .line 2344
    .restart local v2    # "bytes":[B
    const/4 v3, 0x0

    .line 2346
    .restart local v3    # "tempPos":I
    :goto_2e
    invoke-static {v2, v3, v0}, Lcom/android/framework/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public readTag()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2107
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    .line 2109
    return v0

    .line 2112
    :cond_a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    .line 2113
    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_19

    .line 2118
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    return v0

    .line 2116
    :cond_19
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2472
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2271
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnknownGroup(ILcom/android/framework/protobuf/MessageLite$Builder;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "builder"    # Lcom/android/framework/protobuf/MessageLite$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2381
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readGroup(ILcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 2382
    return-void
.end method

.method public resetSizeCounter()V
    .registers 2

    .line 2704
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2705
    return-void
.end method

.method public skipField(I)Z
    .registers 5
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2135
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_36

    .line 2156
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 2153
    :pswitch_e
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2154
    return v2

    .line 2151
    :pswitch_12
    const/4 v0, 0x0

    return v0

    .line 2146
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipMessage()V

    .line 2147
    nop

    .line 2148
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 2147
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2149
    return v2

    .line 2143
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2144
    return v2

    .line 2140
    :pswitch_2c
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2141
    return v2

    .line 2137
    :pswitch_32
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipRawVarint()V

    .line 2138
    return v2

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2c
        :pswitch_24
        :pswitch_14
        :pswitch_12
        :pswitch_e
    .end packed-switch
.end method

.method public skipField(ILcom/android/framework/protobuf/CodedOutputStream;)Z
    .registers 7
    .param p1, "tag"    # I
    .param p2, "output"    # Lcom/android/framework/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2162
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_52

    .line 2207
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 2201
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 2202
    .local v0, "value":I
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2203
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 2204
    return v1

    .line 2197
    .end local v0    # "value":I
    :pswitch_18
    const/4 v0, 0x0

    return v0

    .line 2186
    :pswitch_1a
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2187
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipMessage(Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 2188
    nop

    .line 2190
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 2189
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 2191
    .local v0, "endtag":I
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2192
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2193
    return v1

    .line 2179
    .end local v0    # "endtag":I
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    .line 2180
    .local v0, "value":Lcom/android/framework/protobuf/ByteString;
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2181
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V

    .line 2182
    return v1

    .line 2172
    .end local v0    # "value":Lcom/android/framework/protobuf/ByteString;
    :pswitch_3c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 2173
    .local v2, "value":J
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2174
    invoke-virtual {p2, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 2175
    return v1

    .line 2165
    .end local v2    # "value":J
    :pswitch_47
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readInt64()J

    move-result-wide v2

    .line 2166
    .restart local v2    # "value":J
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2167
    invoke-virtual {p2, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 2168
    return v1

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_47
        :pswitch_3c
        :pswitch_31
        :pswitch_1a
        :pswitch_18
        :pswitch_d
    .end packed-switch
.end method

.method public skipMessage()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2214
    nop

    :goto_1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v0

    .line 2215
    .local v0, "tag":I
    if-eqz v0, :cond_f

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_f

    .line 2218
    .end local v0    # "tag":I
    :cond_e
    goto :goto_1

    .line 2216
    .restart local v0    # "tag":I
    :cond_f
    :goto_f
    return-void
.end method

.method public skipMessage(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .registers 4
    .param p1, "output"    # Lcom/android/framework/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2224
    nop

    :goto_1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v0

    .line 2225
    .local v0, "tag":I
    if-eqz v0, :cond_f

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipField(ILcom/android/framework/protobuf/CodedOutputStream;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_f

    .line 2228
    .end local v0    # "tag":I
    :cond_e
    goto :goto_1

    .line 2226
    .restart local v0    # "tag":I
    :cond_f
    :goto_f
    return-void
.end method

.method public skipRawBytes(I)V
    .registers 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3061
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_d

    if-ltz p1, :cond_d

    .line 3063
    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    goto :goto_10

    .line 3065
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipRawBytesSlowPath(I)V

    .line 3067
    :goto_10
    return-void
.end method
