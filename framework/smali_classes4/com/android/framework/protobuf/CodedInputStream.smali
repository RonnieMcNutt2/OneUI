.class public abstract Lcom/android/framework/protobuf/CodedInputStream;
.super Ljava/lang/Object;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;,
        Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;,
        Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;,
        Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final DEFAULT_SIZE_LIMIT:I = 0x7fffffff

.field private static volatile defaultRecursionLimit:I


# instance fields
.field recursionDepth:I

.field recursionLimit:I

.field private shouldDiscardUnknownFields:Z

.field sizeLimit:I

.field wrapper:Lcom/android/framework/protobuf/CodedInputStreamReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    const/16 v0, 0x64

    sput v0, Lcom/android/framework/protobuf/CodedInputStream;->defaultRecursionLimit:I

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget v0, Lcom/android/framework/protobuf/CodedInputStream;->defaultRecursionLimit:I

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->recursionLimit:I

    .line 74
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->sizeLimit:I

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->shouldDiscardUnknownFields:Z

    .line 204
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/framework/protobuf/CodedInputStream$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/framework/protobuf/CodedInputStream$1;

    .line 62
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream;-><init>()V

    return-void
.end method

.method public static decodeZigZag32(I)I
    .registers 3
    .param p0, "n"    # I

    .line 535
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static decodeZigZag64(J)J
    .registers 6
    .param p0, "n"    # J

    .line 548
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static newInstance(Ljava/io/InputStream;)Lcom/android/framework/protobuf/CodedInputStream;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;

    .line 81
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;I)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/io/InputStream;I)Lcom/android/framework/protobuf/CodedInputStream;
    .registers 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "bufferSize"    # I

    .line 86
    if-lez p1, :cond_12

    .line 89
    if-nez p0, :cond_b

    .line 91
    sget-object v0, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance([B)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0

    .line 93
    :cond_b
    new-instance v0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;-><init>(Ljava/io/InputStream;ILcom/android/framework/protobuf/CodedInputStream$1;)V

    return-object v0

    .line 87
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferSize must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newInstance(Ljava/lang/Iterable;)Lcom/android/framework/protobuf/CodedInputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lcom/android/framework/protobuf/CodedInputStream;"
        }
    .end annotation

    .line 98
    .local p0, "input":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/nio/ByteBuffer;>;"
    invoke-static {}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->isSupported()Z

    move-result v0

    if-nez v0, :cond_10

    .line 99
    new-instance v0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/IterableByteBufferInputStream;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0

    .line 101
    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/lang/Iterable;Z)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method static newInstance(Ljava/lang/Iterable;Z)Lcom/android/framework/protobuf/CodedInputStream;
    .registers 7
    .param p1, "bufferIsImmutable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;Z)",
            "Lcom/android/framework/protobuf/CodedInputStream;"
        }
    .end annotation

    .line 112
    .local p0, "bufs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/nio/ByteBuffer;>;"
    const/4 v0, 0x0

    .line 114
    .local v0, "flag":I
    const/4 v1, 0x0

    .line 115
    .local v1, "totalSize":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 116
    .local v3, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v1, v4

    .line 117
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 118
    or-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 119
    :cond_20
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 120
    or-int/lit8 v0, v0, 0x2

    goto :goto_2b

    .line 122
    :cond_29
    or-int/lit8 v0, v0, 0x4

    .line 124
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    :goto_2b
    goto :goto_6

    .line 125
    :cond_2c
    const/4 v2, 0x2

    if-ne v0, v2, :cond_36

    .line 126
    new-instance v2, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, p1, v3}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;-><init>(Ljava/lang/Iterable;IZLcom/android/framework/protobuf/CodedInputStream$1;)V

    return-object v2

    .line 129
    :cond_36
    new-instance v2, Lcom/android/framework/protobuf/IterableByteBufferInputStream;

    invoke-direct {v2, p0}, Lcom/android/framework/protobuf/IterableByteBufferInputStream;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v2

    return-object v2
.end method

.method public static newInstance(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/CodedInputStream;
    .registers 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 176
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/nio/ByteBuffer;Z)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method static newInstance(Ljava/nio/ByteBuffer;Z)Lcom/android/framework/protobuf/CodedInputStream;
    .registers 6
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "bufferIsImmutable"    # Z

    .line 181
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 182
    nop

    .line 183
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 182
    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance([BIIZ)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0

    .line 186
    :cond_1d
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 187
    new-instance v0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;-><init>(Ljava/nio/ByteBuffer;ZLcom/android/framework/protobuf/CodedInputStream$1;)V

    return-object v0

    .line 193
    :cond_30
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 194
    .local v0, "buffer":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 195
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance([BIIZ)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v1

    return-object v1
.end method

.method public static newInstance([B)Lcom/android/framework/protobuf/CodedInputStream;
    .registers 3
    .param p0, "buf"    # [B

    .line 135
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance([BII)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/android/framework/protobuf/CodedInputStream;
    .registers 4
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 140
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance([BIIZ)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method static newInstance([BIIZ)Lcom/android/framework/protobuf/CodedInputStream;
    .registers 11
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "bufferIsImmutable"    # Z

    .line 146
    new-instance v6, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;-><init>([BIIZLcom/android/framework/protobuf/CodedInputStream$1;)V

    .line 153
    .local v0, "result":Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;
    :try_start_b
    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/CodedInputStream$ArrayDecoder;->pushLimit(I)I
    :try_end_e
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_b .. :try_end_e} :catch_10

    .line 163
    nop

    .line 164
    return-object v0

    .line 154
    :catch_10
    move-exception v1

    .line 162
    .local v1, "ex":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static readRawVarint32(ILjava/io/InputStream;)I
    .registers 7
    .param p0, "firstByte"    # I
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_5

    .line 558
    return p0

    .line 561
    :cond_5
    and-int/lit8 v0, p0, 0x7f

    .line 562
    .local v0, "result":I
    const/4 v1, 0x7

    .line 563
    .local v1, "offset":I
    :goto_8
    const/16 v2, 0x20

    const/4 v3, -0x1

    if-ge v1, v2, :cond_24

    .line 564
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 565
    .local v2, "b":I
    if-eq v2, v3, :cond_1f

    .line 568
    and-int/lit8 v3, v2, 0x7f

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    .line 569
    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_1c

    .line 570
    return v0

    .line 563
    .end local v2    # "b":I
    :cond_1c
    add-int/lit8 v1, v1, 0x7

    goto :goto_8

    .line 566
    .restart local v2    # "b":I
    :cond_1f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 574
    .end local v2    # "b":I
    :cond_24
    :goto_24
    const/16 v2, 0x40

    if-ge v1, v2, :cond_3b

    .line 575
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 576
    .restart local v2    # "b":I
    if-eq v2, v3, :cond_36

    .line 579
    and-int/lit16 v4, v2, 0x80

    if-nez v4, :cond_33

    .line 580
    return v0

    .line 574
    .end local v2    # "b":I
    :cond_33
    add-int/lit8 v1, v1, 0x7

    goto :goto_24

    .line 577
    .restart local v2    # "b":I
    :cond_36
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 583
    .end local v2    # "b":I
    :cond_3b
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static readRawVarint32(Ljava/io/InputStream;)I
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 593
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 594
    .local v0, "firstByte":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 597
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v1

    return v1

    .line 595
    :cond_c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public abstract checkLastTagWas(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public checkRecursionLimit()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 199
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream;->recursionLimit:I

    if-ge v0, v1, :cond_7

    .line 202
    return-void

    .line 200
    :cond_7
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method final discardUnknownFields()V
    .registers 2

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->shouldDiscardUnknownFields:Z

    .line 437
    return-void
.end method

.method public abstract enableAliasing(Z)V
.end method

.method public abstract getBytesUntilLimit()I
.end method

.method public abstract getLastTag()I
.end method

.method public abstract getTotalBytesRead()I
.end method

.method public abstract isAtEnd()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract popLimit(I)V
.end method

.method public abstract pushLimit(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public abstract readBool()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readByteArray()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readByteBuffer()Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readBytes()Lcom/android/framework/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readDouble()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readEnum()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readFixed32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readFixed64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readFloat()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readGroup(ILcom/android/framework/protobuf/Parser;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
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
.end method

.method public abstract readGroup(ILcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readInt32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readInt64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readMessage(Lcom/android/framework/protobuf/Parser;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
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
.end method

.method public abstract readMessage(Lcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readRawByte()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readRawBytes(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readRawLittleEndian32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readRawLittleEndian64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readRawVarint32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readRawVarint64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract readRawVarint64SlowPath()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readSFixed32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readSFixed64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readSInt32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readSInt64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readString()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readStringRequireUtf8()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readTag()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readUInt32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readUInt64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readUnknownGroup(ILcom/android/framework/protobuf/MessageLite$Builder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract resetSizeCounter()V
.end method

.method public final setRecursionLimit(I)I
    .registers 5
    .param p1, "limit"    # I

    .line 394
    if-ltz p1, :cond_7

    .line 397
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->recursionLimit:I

    .line 398
    .local v0, "oldLimit":I
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream;->recursionLimit:I

    .line 399
    return v0

    .line 395
    .end local v0    # "oldLimit":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recursion limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setSizeLimit(I)I
    .registers 5
    .param p1, "limit"    # I

    .line 417
    if-ltz p1, :cond_7

    .line 420
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->sizeLimit:I

    .line 421
    .local v0, "oldLimit":I
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream;->sizeLimit:I

    .line 422
    return v0

    .line 418
    .end local v0    # "oldLimit":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final shouldDiscardUnknownFields()Z
    .registers 2

    .line 452
    iget-boolean v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->shouldDiscardUnknownFields:Z

    return v0
.end method

.method public abstract skipField(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skipField(ILcom/android/framework/protobuf/CodedOutputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract skipMessage()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skipMessage(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skipRawBytes(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final unsetDiscardUnknownFields()V
    .registers 2

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->shouldDiscardUnknownFields:Z

    .line 445
    return-void
.end method
