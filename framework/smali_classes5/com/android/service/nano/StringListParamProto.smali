.class public final Lcom/android/service/nano/StringListParamProto;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "StringListParamProto.java"


# static fields
.field private static volatile _emptyArray:[Lcom/android/service/nano/StringListParamProto;


# instance fields
.field public element:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 27
    invoke-virtual {p0}, Lcom/android/service/nano/StringListParamProto;->clear()Lcom/android/service/nano/StringListParamProto;

    .line 28
    return-void
.end method

.method public static emptyArray()[Lcom/android/service/nano/StringListParamProto;
    .registers 2

    .line 12
    sget-object v0, Lcom/android/service/nano/StringListParamProto;->_emptyArray:[Lcom/android/service/nano/StringListParamProto;

    if-nez v0, :cond_15

    .line 13
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_7
    sget-object v1, Lcom/android/service/nano/StringListParamProto;->_emptyArray:[Lcom/android/service/nano/StringListParamProto;

    if-nez v1, :cond_10

    .line 16
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/service/nano/StringListParamProto;

    sput-object v1, Lcom/android/service/nano/StringListParamProto;->_emptyArray:[Lcom/android/service/nano/StringListParamProto;

    .line 18
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 20
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/service/nano/StringListParamProto;->_emptyArray:[Lcom/android/service/nano/StringListParamProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/service/nano/StringListParamProto;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/android/service/nano/StringListParamProto;

    invoke-direct {v0}, Lcom/android/service/nano/StringListParamProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/service/nano/StringListParamProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/service/nano/StringListParamProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/service/nano/StringListParamProto;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 108
    new-instance v0, Lcom/android/service/nano/StringListParamProto;

    invoke-direct {v0}, Lcom/android/service/nano/StringListParamProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/service/nano/StringListParamProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/service/nano/StringListParamProto;
    .registers 2

    .line 31
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/service/nano/StringListParamProto;->cachedSize:I

    .line 33
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 7

    .line 52
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 53
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    if-eqz v1, :cond_26

    array-length v1, v1

    if-lez v1, :cond_26

    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, "dataCount":I
    const/4 v2, 0x0

    .line 56
    .local v2, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    iget-object v4, p0, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_22

    .line 57
    aget-object v4, v4, v3

    .line 58
    .local v4, "element":Ljava/lang/String;
    if-eqz v4, :cond_1f

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    nop

    .line 61
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 56
    .end local v4    # "element":Ljava/lang/String;
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 64
    .end local v3    # "i":I
    :cond_22
    add-int/2addr v0, v2

    .line 65
    mul-int/lit8 v3, v1, 0x1

    add-int/2addr v0, v3

    .line 67
    .end local v1    # "dataCount":I
    .end local v2    # "dataSize":I
    :cond_26
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/service/nano/StringListParamProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/service/nano/StringListParamProto;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/service/nano/StringListParamProto;
    .registers 8
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 76
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_44

    .line 80
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_42

    .line 81
    return-object p0

    .line 86
    :sswitch_f
    nop

    .line 87
    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 88
    .local v1, "arrayLength":I
    iget-object v2, p0, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1d

    move v4, v3

    goto :goto_1e

    :cond_1d
    array-length v4, v2

    .line 89
    .local v4, "i":I
    :goto_1e
    add-int v5, v4, v1

    new-array v5, v5, [Ljava/lang/String;

    .line 90
    .local v5, "newArray":[Ljava/lang/String;
    if-eqz v4, :cond_27

    .line 91
    invoke-static {v2, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    :cond_27
    :goto_27
    array-length v2, v5

    add-int/lit8 v2, v2, -0x1

    if-ge v4, v2, :cond_38

    .line 94
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    .line 95
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 98
    :cond_38
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    .line 99
    iput-object v5, p0, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    .line 100
    goto :goto_42

    .line 78
    .end local v1    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Ljava/lang/String;
    :sswitch_41
    return-object p0

    .line 103
    .end local v0    # "tag":I
    :cond_42
    :goto_42
    goto :goto_1

    nop

    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_41
        0xa -> :sswitch_f
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    if-eqz v0, :cond_18

    array-length v0, v0

    if-lez v0, :cond_18

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_18

    .line 41
    aget-object v1, v1, v0

    .line 42
    .local v1, "element":Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 43
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 40
    .end local v1    # "element":Ljava/lang/String;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 47
    .end local v0    # "i":I
    :cond_18
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 48
    return-void
.end method
