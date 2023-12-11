.class public final Lcom/android/internal/location/altitude/nano/MapParamsProto;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "MapParamsProto.java"


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/location/altitude/nano/MapParamsProto;


# instance fields
.field public cacheTileS2Level:I

.field public diskTileS2Level:I

.field public mapS2Level:I

.field public modelAMeters:D

.field public modelBMeters:D

.field public modelRmseMeters:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/android/internal/location/altitude/nano/MapParamsProto;->clear()Lcom/android/internal/location/altitude/nano/MapParamsProto;

    .line 43
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .registers 2

    .line 12
    sget-object v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->_emptyArray:[Lcom/android/internal/location/altitude/nano/MapParamsProto;

    if-nez v0, :cond_15

    .line 13
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_7
    sget-object v1, Lcom/android/internal/location/altitude/nano/MapParamsProto;->_emptyArray:[Lcom/android/internal/location/altitude/nano/MapParamsProto;

    if-nez v1, :cond_10

    .line 16
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/location/altitude/nano/MapParamsProto;

    sput-object v1, Lcom/android/internal/location/altitude/nano/MapParamsProto;->_emptyArray:[Lcom/android/internal/location/altitude/nano/MapParamsProto;

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
    sget-object v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->_emptyArray:[Lcom/android/internal/location/altitude/nano/MapParamsProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;

    invoke-direct {v0}, Lcom/android/internal/location/altitude/nano/MapParamsProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/altitude/nano/MapParamsProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 161
    new-instance v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;

    invoke-direct {v0}, Lcom/android/internal/location/altitude/nano/MapParamsProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .registers 3

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    .line 47
    iput v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->cacheTileS2Level:I

    .line 48
    iput v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->diskTileS2Level:I

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelAMeters:D

    .line 50
    iput-wide v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelBMeters:D

    .line 51
    iput-wide v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelRmseMeters:D

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->cachedSize:I

    .line 53
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 8

    .line 85
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 86
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    if-eqz v1, :cond_f

    .line 87
    nop

    .line 88
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_f
    iget v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->cacheTileS2Level:I

    if-eqz v1, :cond_1a

    .line 91
    nop

    .line 92
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_1a
    iget v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->diskTileS2Level:I

    if-eqz v1, :cond_25

    .line 95
    nop

    .line 96
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_25
    iget-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelAMeters:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 99
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_3d

    .line 100
    iget-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelAMeters:D

    .line 101
    const/4 v5, 0x4

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_3d
    iget-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelBMeters:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 104
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_53

    .line 105
    iget-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelBMeters:D

    .line 106
    const/4 v5, 0x5

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_53
    iget-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelRmseMeters:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 109
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_69

    .line 110
    iget-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelRmseMeters:D

    .line 111
    const/4 v3, 0x6

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_69
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
    invoke-virtual {p0, p1}, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/altitude/nano/MapParamsProto;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .registers 5
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 122
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_3c

    .line 126
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 127
    return-object p0

    .line 152
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelRmseMeters:D

    goto :goto_3a

    .line 148
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelBMeters:D

    .line 149
    goto :goto_3a

    .line 144
    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelAMeters:D

    .line 145
    goto :goto_3a

    .line 140
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->diskTileS2Level:I

    .line 141
    goto :goto_3a

    .line 136
    :sswitch_2b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->cacheTileS2Level:I

    .line 137
    goto :goto_3a

    .line 132
    :sswitch_32
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    .line 133
    goto :goto_3a

    .line 124
    :sswitch_39
    return-object p0

    .line 156
    .end local v0    # "tag":I
    :cond_3a
    :goto_3a
    goto :goto_1

    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_39
        0x8 -> :sswitch_32
        0x10 -> :sswitch_2b
        0x18 -> :sswitch_24
        0x21 -> :sswitch_1d
        0x29 -> :sswitch_16
        0x31 -> :sswitch_f
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    if-eqz v0, :cond_8

    .line 60
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 62
    :cond_8
    iget v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->cacheTileS2Level:I

    if-eqz v0, :cond_10

    .line 63
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 65
    :cond_10
    iget v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->diskTileS2Level:I

    if-eqz v0, :cond_18

    .line 66
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 68
    :cond_18
    iget-wide v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelAMeters:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 69
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2e

    .line 70
    const/4 v0, 0x4

    iget-wide v4, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelAMeters:D

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 72
    :cond_2e
    iget-wide v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelBMeters:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 73
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_42

    .line 74
    const/4 v0, 0x5

    iget-wide v4, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelBMeters:D

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 76
    :cond_42
    iget-wide v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelRmseMeters:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 77
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_56

    .line 78
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelRmseMeters:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 80
    :cond_56
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 81
    return-void
.end method
