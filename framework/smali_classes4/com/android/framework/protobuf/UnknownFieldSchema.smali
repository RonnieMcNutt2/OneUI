.class abstract Lcom/android/framework/protobuf/UnknownFieldSchema;
.super Ljava/lang/Object;
.source "UnknownFieldSchema.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 37
    .local p0, "this":Lcom/android/framework/protobuf/UnknownFieldSchema;, "Lcom/android/framework/protobuf/UnknownFieldSchema<TT;TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract addFixed32(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;II)V"
        }
    .end annotation
.end method

.method abstract addFixed64(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract addGroup(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;ITT;)V"
        }
    .end annotation
.end method

.method abstract addLengthDelimited(Ljava/lang/Object;ILcom/android/framework/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lcom/android/framework/protobuf/ByteString;",
            ")V"
        }
    .end annotation
.end method

.method abstract addVarint(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation
.end method

.method abstract getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method abstract getSerializedSize(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract getSerializedSizeAsMessageSet(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract makeImmutable(Ljava/lang/Object;)V
.end method

.method abstract merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation
.end method

.method final mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;)V
    .registers 5
    .param p2, "reader"    # Lcom/android/framework/protobuf/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lcom/android/framework/protobuf/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    .local p0, "this":Lcom/android/framework/protobuf/UnknownFieldSchema;, "Lcom/android/framework/protobuf/UnknownFieldSchema<TT;TB;>;"
    .local p1, "unknownFields":Ljava/lang/Object;, "TB;"
    nop

    :cond_1
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->getFieldNumber()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_11

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    nop

    .line 121
    :cond_11
    return-void
.end method

.method final mergeOneFieldFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;)Z
    .registers 9
    .param p2, "reader"    # Lcom/android/framework/protobuf/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lcom/android/framework/protobuf/Reader;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/android/framework/protobuf/UnknownFieldSchema;, "Lcom/android/framework/protobuf/UnknownFieldSchema<TT;TB;>;"
    .local p1, "unknownFields":Ljava/lang/Object;, "TB;"
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->getTag()I

    move-result v0

    .line 84
    .local v0, "tag":I
    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 85
    .local v1, "fieldNumber":I
    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_56

    .line 110
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v2

    throw v2

    .line 90
    :pswitch_15
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readFixed32()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addFixed32(Ljava/lang/Object;II)V

    .line 91
    return v3

    .line 108
    :pswitch_1d
    const/4 v2, 0x0

    return v2

    .line 99
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object v2

    .line 100
    .local v2, "subFields":Ljava/lang/Object;, "TB;"
    const/4 v4, 0x4

    invoke-static {v1, v4}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v4

    .line 101
    .local v4, "endGroupTag":I
    invoke-virtual {p0, v2, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;)V

    .line 102
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->getTag()I

    move-result v5

    if-ne v4, v5, :cond_39

    .line 105
    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p1, v1, v5}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addGroup(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 106
    return v3

    .line 103
    :cond_39
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 96
    .end local v2    # "subFields":Ljava/lang/Object;, "TB;"
    .end local v4    # "endGroupTag":I
    :pswitch_3e
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/android/framework/protobuf/ByteString;)V

    .line 97
    return v3

    .line 93
    :pswitch_46
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readFixed64()J

    move-result-wide v4

    invoke-virtual {p0, p1, v1, v4, v5}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addFixed64(Ljava/lang/Object;IJ)V

    .line 94
    return v3

    .line 87
    :pswitch_4e
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readInt64()J

    move-result-wide v4

    invoke-virtual {p0, p1, v1, v4, v5}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addVarint(Ljava/lang/Object;IJ)V

    .line 88
    return v3

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_46
        :pswitch_3e
        :pswitch_1f
        :pswitch_1d
        :pswitch_15
    .end packed-switch
.end method

.method abstract newBuilder()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method abstract setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TB;)V"
        }
    .end annotation
.end method

.method abstract setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method abstract shouldDiscardUnknownFields(Lcom/android/framework/protobuf/Reader;)Z
.end method

.method abstract toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TT;"
        }
    .end annotation
.end method

.method abstract writeAsMessageSetTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
