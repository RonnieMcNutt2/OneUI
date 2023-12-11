.class final Lcom/android/framework/protobuf/ArrayDecoders;
.super Ljava/lang/Object;
.source "ArrayDecoders.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static decodeBoolList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 14
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 401
    .local p4, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    check-cast v0, Lcom/android/framework/protobuf/BooleanArrayList;

    .line 402
    .local v0, "output":Lcom/android/framework/protobuf/BooleanArrayList;
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 403
    iget-wide v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v5

    :goto_14
    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 404
    :goto_17
    if-ge p2, p3, :cond_33

    .line 405
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 406
    .local v1, "nextPosition":I
    iget v6, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v6, :cond_22

    .line 407
    goto :goto_33

    .line 409
    :cond_22
    invoke-static {p1, v1, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 410
    iget-wide v6, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    cmp-long v6, v6, v3

    if-eqz v6, :cond_2e

    move v6, v2

    goto :goto_2f

    :cond_2e
    move v6, v5

    :goto_2f
    invoke-virtual {v0, v6}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 411
    .end local v1    # "nextPosition":I
    goto :goto_17

    .line 412
    :cond_33
    :goto_33
    return p2
.end method

.method static decodeBytes([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 5
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p2, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 221
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 222
    iget v0, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 223
    .local v0, "length":I
    if-ltz v0, :cond_21

    .line 225
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1c

    .line 227
    if-nez v0, :cond_13

    .line 228
    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    iput-object v1, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 229
    return p1

    .line 231
    :cond_13
    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 232
    add-int v1, p1, v0

    return v1

    .line 226
    :cond_1c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 224
    :cond_21
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method static decodeBytesList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 11
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 680
    .local p4, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    .line 681
    .local v0, "output":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<Lcom/android/framework/protobuf/ByteString;>;"
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 682
    iget v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 683
    .local v1, "length":I
    if-ltz v1, :cond_55

    .line 685
    array-length v2, p1

    sub-int/2addr v2, p2

    if-gt v1, v2, :cond_50

    .line 687
    if-nez v1, :cond_15

    .line 688
    sget-object v2, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 690
    :cond_15
    invoke-static {p1, p2, v1}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 691
    add-int/2addr p2, v1

    .line 693
    :goto_1d
    if-ge p2, p3, :cond_4f

    .line 694
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 695
    .local v2, "nextPosition":I
    iget v3, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v3, :cond_28

    .line 696
    goto :goto_4f

    .line 698
    :cond_28
    invoke-static {p1, v2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 699
    iget v3, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 700
    .local v3, "nextLength":I
    if-ltz v3, :cond_4a

    .line 702
    array-length v4, p1

    sub-int/2addr v4, p2

    if-gt v3, v4, :cond_45

    .line 704
    if-nez v3, :cond_3c

    .line 705
    sget-object v4, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-interface {v0, v4}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 707
    :cond_3c
    invoke-static {p1, p2, v3}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 708
    add-int/2addr p2, v3

    .line 710
    .end local v2    # "nextPosition":I
    .end local v3    # "nextLength":I
    :goto_44
    goto :goto_1d

    .line 703
    .restart local v2    # "nextPosition":I
    .restart local v3    # "nextLength":I
    :cond_45
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    .line 701
    :cond_4a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    .line 711
    .end local v2    # "nextPosition":I
    .end local v3    # "nextLength":I
    :cond_4f
    :goto_4f
    return p2

    .line 686
    :cond_50
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 684
    :cond_55
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodeDouble([BI)D
    .registers 4
    .param p0, "data"    # [B
    .param p1, "position"    # I

    .line 178
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static decodeDoubleList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 10
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 384
    .local p4, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    check-cast v0, Lcom/android/framework/protobuf/DoubleArrayList;

    .line 385
    .local v0, "output":Lcom/android/framework/protobuf/DoubleArrayList;
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    .line 386
    add-int/lit8 p2, p2, 0x8

    .line 387
    :goto_c
    if-ge p2, p3, :cond_21

    .line 388
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 389
    .local v1, "nextPosition":I
    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_17

    .line 390
    goto :goto_21

    .line 392
    :cond_17
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    .line 393
    add-int/lit8 p2, v1, 0x8

    .line 394
    .end local v1    # "nextPosition":I
    goto :goto_c

    .line 395
    :cond_21
    :goto_21
    return p2
.end method

.method static decodeExtension(I[BIILcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 27
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p7, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "**>;",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "Lcom/android/framework/protobuf/UnknownFieldSetLite;",
            "Lcom/android/framework/protobuf/UnknownFieldSetLite;",
            ">;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    .local p4, "message":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<**>;"
    .local p5, "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    .local p6, "unknownFieldSchema":Lcom/android/framework/protobuf/UnknownFieldSchema;, "Lcom/android/framework/protobuf/UnknownFieldSchema<Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/UnknownFieldSetLite;>;"
    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    iget-object v12, v9, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    .line 807
    .local v12, "extensions":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    ushr-int/lit8 v13, p0, 0x3

    .line 808
    .local v13, "fieldNumber":I
    iget-object v0, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_111

    iget-object v0, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_111

    .line 809
    sget-object v0, Lcom/android/framework/protobuf/ArrayDecoders$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual/range {p5 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_29c

    .line 892
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type cannot be packed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 893
    invoke-virtual {v2}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 879
    :pswitch_4c
    new-instance v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/IntArrayList;-><init>()V

    move-object v6, v0

    .line 880
    .local v6, "list":Lcom/android/framework/protobuf/IntArrayList;
    invoke-static {v7, v8, v6, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 881
    .end local p2    # "position":I
    .local v8, "position":I
    iget-object v0, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 885
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/android/framework/protobuf/Internal$EnumLiteMap;

    move-result-object v3

    const/4 v4, 0x0

    .line 881
    move-object/from16 v0, p4

    move v1, v13

    move-object v2, v6

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 888
    iget-object v0, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v0, v6}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 889
    move-object/from16 v15, p6

    goto/16 :goto_29a

    .line 872
    .end local v6    # "list":Lcom/android/framework/protobuf/IntArrayList;
    .end local v8    # "position":I
    .restart local p2    # "position":I
    :pswitch_6f
    new-instance v0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/LongArrayList;-><init>()V

    .line 873
    .local v0, "list":Lcom/android/framework/protobuf/LongArrayList;
    invoke-static {v7, v8, v0, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedSInt64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 874
    .end local p2    # "position":I
    .restart local v8    # "position":I
    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 875
    move-object/from16 v15, p6

    goto/16 :goto_29a

    .line 865
    .end local v0    # "list":Lcom/android/framework/protobuf/LongArrayList;
    .end local v8    # "position":I
    .restart local p2    # "position":I
    :pswitch_81
    new-instance v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/IntArrayList;-><init>()V

    .line 866
    .local v0, "list":Lcom/android/framework/protobuf/IntArrayList;
    invoke-static {v7, v8, v0, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedSInt32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 867
    .end local p2    # "position":I
    .restart local v8    # "position":I
    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 868
    move-object/from16 v15, p6

    goto/16 :goto_29a

    .line 858
    .end local v0    # "list":Lcom/android/framework/protobuf/IntArrayList;
    .end local v8    # "position":I
    .restart local p2    # "position":I
    :pswitch_93
    new-instance v0, Lcom/android/framework/protobuf/BooleanArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/BooleanArrayList;-><init>()V

    .line 859
    .local v0, "list":Lcom/android/framework/protobuf/BooleanArrayList;
    invoke-static {v7, v8, v0, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedBoolList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 860
    .end local p2    # "position":I
    .restart local v8    # "position":I
    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 861
    move-object/from16 v15, p6

    goto/16 :goto_29a

    .line 851
    .end local v0    # "list":Lcom/android/framework/protobuf/BooleanArrayList;
    .end local v8    # "position":I
    .restart local p2    # "position":I
    :pswitch_a5
    new-instance v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/IntArrayList;-><init>()V

    .line 852
    .local v0, "list":Lcom/android/framework/protobuf/IntArrayList;
    invoke-static {v7, v8, v0, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedFixed32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 853
    .end local p2    # "position":I
    .restart local v8    # "position":I
    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 854
    move-object/from16 v15, p6

    goto/16 :goto_29a

    .line 843
    .end local v0    # "list":Lcom/android/framework/protobuf/IntArrayList;
    .end local v8    # "position":I
    .restart local p2    # "position":I
    :pswitch_b7
    new-instance v0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/LongArrayList;-><init>()V

    .line 844
    .local v0, "list":Lcom/android/framework/protobuf/LongArrayList;
    invoke-static {v7, v8, v0, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedFixed64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 845
    .end local p2    # "position":I
    .restart local v8    # "position":I
    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 846
    move-object/from16 v15, p6

    goto/16 :goto_29a

    .line 835
    .end local v0    # "list":Lcom/android/framework/protobuf/LongArrayList;
    .end local v8    # "position":I
    .restart local p2    # "position":I
    :pswitch_c9
    new-instance v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/IntArrayList;-><init>()V

    .line 836
    .local v0, "list":Lcom/android/framework/protobuf/IntArrayList;
    invoke-static {v7, v8, v0, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 837
    .end local p2    # "position":I
    .restart local v8    # "position":I
    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 838
    move-object/from16 v15, p6

    goto/16 :goto_29a

    .line 827
    .end local v0    # "list":Lcom/android/framework/protobuf/IntArrayList;
    .end local v8    # "position":I
    .restart local p2    # "position":I
    :pswitch_db
    new-instance v0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/LongArrayList;-><init>()V

    .line 828
    .local v0, "list":Lcom/android/framework/protobuf/LongArrayList;
    invoke-static {v7, v8, v0, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedVarint64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 829
    .end local p2    # "position":I
    .restart local v8    # "position":I
    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 830
    move-object/from16 v15, p6

    goto/16 :goto_29a

    .line 819
    .end local v0    # "list":Lcom/android/framework/protobuf/LongArrayList;
    .end local v8    # "position":I
    .restart local p2    # "position":I
    :pswitch_ed
    new-instance v0, Lcom/android/framework/protobuf/FloatArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/FloatArrayList;-><init>()V

    .line 820
    .local v0, "list":Lcom/android/framework/protobuf/FloatArrayList;
    invoke-static {v7, v8, v0, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedFloatList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 821
    .end local p2    # "position":I
    .restart local v8    # "position":I
    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 822
    move-object/from16 v15, p6

    goto/16 :goto_29a

    .line 812
    .end local v0    # "list":Lcom/android/framework/protobuf/FloatArrayList;
    .end local v8    # "position":I
    .restart local p2    # "position":I
    :pswitch_ff
    new-instance v0, Lcom/android/framework/protobuf/DoubleArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/DoubleArrayList;-><init>()V

    .line 813
    .local v0, "list":Lcom/android/framework/protobuf/DoubleArrayList;
    invoke-static {v7, v8, v0, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedDoubleList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 814
    .end local p2    # "position":I
    .restart local v8    # "position":I
    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 815
    move-object/from16 v15, p6

    goto/16 :goto_29a

    .line 896
    .end local v0    # "list":Lcom/android/framework/protobuf/DoubleArrayList;
    .end local v8    # "position":I
    .restart local p2    # "position":I
    :cond_111
    const/4 v14, 0x0

    .line 898
    .local v14, "value":Ljava/lang/Object;
    invoke-virtual/range {p5 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->ENUM:Lcom/android/framework/protobuf/WireFormat$FieldType;

    if-ne v0, v1, :cond_13f

    .line 899
    invoke-static {v7, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 900
    .end local p2    # "position":I
    .local v0, "position":I
    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/android/framework/protobuf/Internal$EnumLiteMap;

    move-result-object v1

    iget v2, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-interface {v1, v2}, Lcom/android/framework/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/android/framework/protobuf/Internal$EnumLite;

    move-result-object v1

    .line 901
    .local v1, "enumValue":Ljava/lang/Object;
    if-nez v1, :cond_135

    .line 902
    iget v2, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    const/4 v3, 0x0

    move-object/from16 v15, p6

    invoke-static {v9, v13, v2, v3, v15}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 904
    return v0

    .line 908
    :cond_135
    move-object/from16 v15, p6

    iget v2, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 909
    .end local v1    # "enumValue":Ljava/lang/Object;
    goto/16 :goto_288

    .line 910
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :cond_13f
    move-object/from16 v15, p6

    sget-object v0, Lcom/android/framework/protobuf/ArrayDecoders$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual/range {p5 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2bc

    move v0, v8

    goto/16 :goto_288

    .line 983
    :pswitch_153
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    .line 984
    invoke-virtual/range {p5 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    .line 985
    .local v6, "fieldSchema":Lcom/android/framework/protobuf/Schema;
    invoke-virtual/range {p5 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_177

    .line 986
    move/from16 v5, p3

    invoke-static {v6, v7, v8, v5, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 987
    .end local p2    # "position":I
    .restart local v0    # "position":I
    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v2, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v12, v1, v2}, Lcom/android/framework/protobuf/FieldSet;->addRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_19f

    .line 989
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :cond_177
    move/from16 v5, p3

    iget-object v0, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v0}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 990
    .local v0, "oldValue":Ljava/lang/Object;
    if-nez v0, :cond_18d

    .line 991
    invoke-interface {v6}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 992
    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object/from16 v16, v0

    goto :goto_18f

    .line 990
    :cond_18d
    move-object/from16 v16, v0

    .line 994
    .end local v0    # "oldValue":Ljava/lang/Object;
    .local v16, "oldValue":Ljava/lang/Object;
    :goto_18f
    nop

    .line 995
    move-object/from16 v0, v16

    move-object v1, v6

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/ArrayDecoders;->mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 997
    .end local v16    # "oldValue":Ljava/lang/Object;
    .end local p2    # "position":I
    .local v0, "position":I
    :goto_19f
    return v0

    .line 961
    .end local v0    # "position":I
    .end local v6    # "fieldSchema":Lcom/android/framework/protobuf/Schema;
    .restart local p2    # "position":I
    :pswitch_1a0
    shl-int/lit8 v0, v13, 0x3

    or-int/lit8 v16, v0, 0x4

    .line 963
    .local v16, "endTag":I
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    .line 964
    invoke-virtual/range {p5 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v17

    .line 965
    .local v17, "fieldSchema":Lcom/android/framework/protobuf/Schema;
    invoke-virtual/range {p5 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1d2

    .line 966
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v16

    move-object/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeGroupField(Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 967
    .end local p2    # "position":I
    .restart local v0    # "position":I
    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v2, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v12, v1, v2}, Lcom/android/framework/protobuf/FieldSet;->addRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1fb

    .line 969
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :cond_1d2
    iget-object v0, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v0}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 970
    .local v0, "oldValue":Ljava/lang/Object;
    if-nez v0, :cond_1e6

    .line 971
    invoke-interface/range {v17 .. v17}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 972
    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object/from16 v18, v0

    goto :goto_1e8

    .line 970
    :cond_1e6
    move-object/from16 v18, v0

    .line 974
    .end local v0    # "oldValue":Ljava/lang/Object;
    .local v18, "oldValue":Ljava/lang/Object;
    :goto_1e8
    nop

    .line 975
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, v16

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/android/framework/protobuf/ArrayDecoders;->mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 978
    .end local v18    # "oldValue":Ljava/lang/Object;
    .end local p2    # "position":I
    .local v0, "position":I
    :goto_1fb
    return v0

    .line 956
    .end local v0    # "position":I
    .end local v16    # "endTag":I
    .end local v17    # "fieldSchema":Lcom/android/framework/protobuf/Schema;
    .restart local p2    # "position":I
    :pswitch_1fc
    invoke-static {v7, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeString([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 957
    .end local p2    # "position":I
    .restart local v0    # "position":I
    iget-object v14, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 958
    goto/16 :goto_288

    .line 944
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_204
    invoke-static {v7, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBytes([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 945
    .end local p2    # "position":I
    .restart local v0    # "position":I
    iget-object v14, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 946
    goto/16 :goto_288

    .line 1000
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_20c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 952
    :pswitch_214
    invoke-static {v7, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 953
    .end local p2    # "position":I
    .restart local v0    # "position":I
    iget-wide v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 954
    goto :goto_288

    .line 948
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_223
    invoke-static {v7, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 949
    .end local p2    # "position":I
    .restart local v0    # "position":I
    iget v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 950
    goto :goto_288

    .line 940
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_232
    invoke-static {v7, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 941
    .end local p2    # "position":I
    .restart local v0    # "position":I
    iget-wide v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_240

    const/4 v1, 0x1

    goto :goto_241

    :cond_240
    const/4 v1, 0x0

    :goto_241
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 942
    goto :goto_288

    .line 936
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_246
    invoke-static/range {p1 .. p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 937
    add-int/lit8 v0, v8, 0x4

    .line 938
    .end local p2    # "position":I
    .restart local v0    # "position":I
    goto :goto_288

    .line 931
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_251
    invoke-static/range {p1 .. p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 932
    add-int/lit8 v0, v8, 0x8

    .line 933
    .end local p2    # "position":I
    .restart local v0    # "position":I
    goto :goto_288

    .line 926
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_25c
    invoke-static {v7, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 927
    .end local p2    # "position":I
    .restart local v0    # "position":I
    iget v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 928
    goto :goto_288

    .line 921
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_267
    invoke-static {v7, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 922
    .end local p2    # "position":I
    .restart local v0    # "position":I
    iget-wide v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 923
    goto :goto_288

    .line 916
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_272
    invoke-static/range {p1 .. p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    .line 917
    add-int/lit8 v0, v8, 0x4

    .line 918
    .end local p2    # "position":I
    .restart local v0    # "position":I
    goto :goto_288

    .line 912
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_27d
    invoke-static/range {p1 .. p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    .line 913
    add-int/lit8 v0, v8, 0x8

    .line 914
    .end local p2    # "position":I
    .restart local v0    # "position":I
    nop

    .line 1003
    :goto_288
    invoke-virtual/range {p5 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_294

    .line 1004
    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v14}, Lcom/android/framework/protobuf/FieldSet;->addRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_299

    .line 1006
    :cond_294
    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v14}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 1009
    .end local v14    # "value":Ljava/lang/Object;
    :goto_299
    move v8, v0

    .end local v0    # "position":I
    .restart local v8    # "position":I
    :goto_29a
    return v8

    nop

    :pswitch_data_29c
    .packed-switch 0x1
        :pswitch_ff
        :pswitch_ed
        :pswitch_db
        :pswitch_db
        :pswitch_c9
        :pswitch_c9
        :pswitch_b7
        :pswitch_b7
        :pswitch_a5
        :pswitch_a5
        :pswitch_93
        :pswitch_81
        :pswitch_6f
        :pswitch_4c
    .end packed-switch

    :pswitch_data_2bc
    .packed-switch 0x1
        :pswitch_27d
        :pswitch_272
        :pswitch_267
        :pswitch_267
        :pswitch_25c
        :pswitch_25c
        :pswitch_251
        :pswitch_251
        :pswitch_246
        :pswitch_246
        :pswitch_232
        :pswitch_223
        :pswitch_214
        :pswitch_20c
        :pswitch_204
        :pswitch_1fc
        :pswitch_1a0
        :pswitch_153
    .end packed-switch
.end method

.method static decodeExtensionOrUnknownField(I[BIILjava/lang/Object;Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 21
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p4, "message"    # Ljava/lang/Object;
    .param p5, "defaultInstance"    # Lcom/android/framework/protobuf/MessageLite;
    .param p7, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/MessageLite;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "Lcom/android/framework/protobuf/UnknownFieldSetLite;",
            "Lcom/android/framework/protobuf/UnknownFieldSetLite;",
            ">;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 780
    .local p6, "unknownFieldSchema":Lcom/android/framework/protobuf/UnknownFieldSchema;, "Lcom/android/framework/protobuf/UnknownFieldSchema<Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/UnknownFieldSetLite;>;"
    ushr-int/lit8 v8, p0, 0x3

    .line 781
    .local v8, "number":I
    move-object/from16 v9, p7

    iget-object v0, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 782
    move-object/from16 v10, p5

    invoke-virtual {v0, v10, v8}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/android/framework/protobuf/MessageLite;I)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v11

    .line 783
    .local v11, "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;
    if-nez v11, :cond_1f

    .line 784
    nop

    .line 785
    invoke-static/range {p4 .. p4}, Lcom/android/framework/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v4

    .line 784
    move v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    return v0

    .line 788
    :cond_1f
    move-object/from16 v0, p4

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 789
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v12

    .line 790
    .local v12, "unused":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    move-object/from16 v4, p4

    check-cast v4, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    move v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v5, v11

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeExtension(I[BIILcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    return v0
.end method

.method static decodeFixed32([BI)I
    .registers 4
    .param p0, "data"    # [B
    .param p1, "position"    # I

    .line 158
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static decodeFixed32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 9
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 333
    .local p4, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 334
    .local v0, "output":Lcom/android/framework/protobuf/IntArrayList;
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 335
    add-int/lit8 p2, p2, 0x4

    .line 336
    :goto_c
    if-ge p2, p3, :cond_21

    .line 337
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 338
    .local v1, "nextPosition":I
    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_17

    .line 339
    goto :goto_21

    .line 341
    :cond_17
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 342
    add-int/lit8 p2, v1, 0x4

    .line 343
    .end local v1    # "nextPosition":I
    goto :goto_c

    .line 344
    :cond_21
    :goto_21
    return p2
.end method

.method static decodeFixed64([BI)J
    .registers 9
    .param p0, "data"    # [B
    .param p1, "position"    # I

    .line 166
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x7

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static decodeFixed64List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 10
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 350
    .local p4, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 351
    .local v0, "output":Lcom/android/framework/protobuf/LongArrayList;
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 352
    add-int/lit8 p2, p2, 0x8

    .line 353
    :goto_c
    if-ge p2, p3, :cond_21

    .line 354
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 355
    .local v1, "nextPosition":I
    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_17

    .line 356
    goto :goto_21

    .line 358
    :cond_17
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 359
    add-int/lit8 p2, v1, 0x8

    .line 360
    .end local v1    # "nextPosition":I
    goto :goto_c

    .line 361
    :cond_21
    :goto_21
    return p2
.end method

.method static decodeFloat([BI)F
    .registers 3
    .param p0, "data"    # [B
    .param p1, "position"    # I

    .line 183
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method static decodeFloatList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 9
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 367
    .local p4, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    check-cast v0, Lcom/android/framework/protobuf/FloatArrayList;

    .line 368
    .local v0, "output":Lcom/android/framework/protobuf/FloatArrayList;
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    .line 369
    add-int/lit8 p2, p2, 0x4

    .line 370
    :goto_c
    if-ge p2, p3, :cond_21

    .line 371
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 372
    .local v1, "nextPosition":I
    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_17

    .line 373
    goto :goto_21

    .line 375
    :cond_17
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    .line 376
    add-int/lit8 p2, v1, 0x4

    .line 377
    .end local v1    # "nextPosition":I
    goto :goto_c

    .line 378
    :cond_21
    :goto_21
    return p2
.end method

.method static decodeGroupField(Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 14
    .param p0, "schema"    # Lcom/android/framework/protobuf/Schema;
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p4, "endGroup"    # I
    .param p5, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-interface {p0}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 253
    .local v7, "msg":Ljava/lang/Object;
    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/framework/protobuf/ArrayDecoders;->mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 254
    .local v0, "offset":I
    invoke-interface {p0, v7}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 255
    iput-object v7, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 256
    return v0
.end method

.method static decodeGroupList(Lcom/android/framework/protobuf/Schema;I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 16
    .param p0, "schema"    # Lcom/android/framework/protobuf/Schema;
    .param p1, "tag"    # I
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p6, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/Schema;",
            "I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    .local p5, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p5

    .line 759
    .local v0, "output":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<Ljava/lang/Object;>;"
    and-int/lit8 v1, p1, -0x8

    or-int/lit8 v1, v1, 0x4

    .line 760
    .local v1, "endgroup":I
    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, v1

    move-object v7, p6

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeGroupField(Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 761
    iget-object v2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 762
    :goto_14
    if-ge p3, p4, :cond_2f

    .line 763
    invoke-static {p2, p3, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 764
    .local v8, "nextPosition":I
    iget v2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p1, v2, :cond_1f

    .line 765
    goto :goto_2f

    .line 767
    :cond_1f
    move-object v2, p0

    move-object v3, p2

    move v4, v8

    move v5, p4

    move v6, v1

    move-object v7, p6

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeGroupField(Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 768
    iget-object v2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 769
    .end local v8    # "nextPosition":I
    goto :goto_14

    .line 770
    :cond_2f
    :goto_2f
    return p3
.end method

.method static decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 12
    .param p0, "schema"    # Lcom/android/framework/protobuf/Schema;
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p4, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-interface {p0}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 241
    .local v6, "msg":Ljava/lang/Object;
    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/ArrayDecoders;->mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 242
    .local v0, "offset":I
    invoke-interface {p0, v6}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 243
    iput-object v6, p4, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 244
    return v0
.end method

.method static decodeMessageList(Lcom/android/framework/protobuf/Schema;I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 10
    .param p1, "tag"    # I
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p6, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 729
    .local p0, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<*>;"
    .local p5, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p5

    .line 730
    .local v0, "output":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<Ljava/lang/Object;>;"
    invoke-static {p0, p2, p3, p4, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 731
    iget-object v1, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 732
    :goto_a
    if-ge p3, p4, :cond_1f

    .line 733
    invoke-static {p2, p3, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 734
    .local v1, "nextPosition":I
    iget v2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p1, v2, :cond_15

    .line 735
    goto :goto_1f

    .line 737
    :cond_15
    invoke-static {p0, p2, v1, p4, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 738
    iget-object v2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 739
    .end local v1    # "nextPosition":I
    goto :goto_a

    .line 740
    :cond_1f
    :goto_1f
    return p3
.end method

.method static decodePackedBoolList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 10
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p3, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    .local p2, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/BooleanArrayList;

    .line 549
    .local v0, "output":Lcom/android/framework/protobuf/BooleanArrayList;
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 550
    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    .line 551
    .local v1, "fieldLimit":I
    :goto_a
    if-ge p1, v1, :cond_1f

    .line 552
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 553
    iget-wide v2, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_a

    .line 555
    :cond_1f
    if-ne p1, v1, :cond_22

    .line 558
    return p1

    .line 556
    :cond_22
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodePackedDoubleList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 8
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p3, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    .local p2, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/DoubleArrayList;

    .line 533
    .local v0, "output":Lcom/android/framework/protobuf/DoubleArrayList;
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 534
    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    .line 535
    .local v1, "fieldLimit":I
    :goto_a
    if-ge p1, v1, :cond_16

    .line 536
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    .line 537
    add-int/lit8 p1, p1, 0x8

    goto :goto_a

    .line 539
    :cond_16
    if-ne p1, v1, :cond_19

    .line 542
    return p1

    .line 540
    :cond_19
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodePackedFixed32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 7
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p3, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    .local p2, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 485
    .local v0, "output":Lcom/android/framework/protobuf/IntArrayList;
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 486
    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    .line 487
    .local v1, "fieldLimit":I
    :goto_a
    if-ge p1, v1, :cond_16

    .line 488
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 489
    add-int/lit8 p1, p1, 0x4

    goto :goto_a

    .line 491
    :cond_16
    if-ne p1, v1, :cond_19

    .line 494
    return p1

    .line 492
    :cond_19
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodePackedFixed64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 8
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p3, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    .local p2, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 501
    .local v0, "output":Lcom/android/framework/protobuf/LongArrayList;
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 502
    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    .line 503
    .local v1, "fieldLimit":I
    :goto_a
    if-ge p1, v1, :cond_16

    .line 504
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 505
    add-int/lit8 p1, p1, 0x8

    goto :goto_a

    .line 507
    :cond_16
    if-ne p1, v1, :cond_19

    .line 510
    return p1

    .line 508
    :cond_19
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodePackedFloatList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 7
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p3, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    .local p2, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/FloatArrayList;

    .line 517
    .local v0, "output":Lcom/android/framework/protobuf/FloatArrayList;
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 518
    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    .line 519
    .local v1, "fieldLimit":I
    :goto_a
    if-ge p1, v1, :cond_16

    .line 520
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    .line 521
    add-int/lit8 p1, p1, 0x4

    goto :goto_a

    .line 523
    :cond_16
    if-ne p1, v1, :cond_19

    .line 526
    return p1

    .line 524
    :cond_19
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodePackedSInt32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 7
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p3, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    .local p2, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 565
    .local v0, "output":Lcom/android/framework/protobuf/IntArrayList;
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 566
    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    .line 567
    .local v1, "fieldLimit":I
    :goto_a
    if-ge p1, v1, :cond_1a

    .line 568
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 569
    iget v2, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_a

    .line 571
    :cond_1a
    if-ne p1, v1, :cond_1d

    .line 574
    return p1

    .line 572
    :cond_1d
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodePackedSInt64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 8
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p3, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    .local p2, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 581
    .local v0, "output":Lcom/android/framework/protobuf/LongArrayList;
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 582
    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    .line 583
    .local v1, "fieldLimit":I
    :goto_a
    if-ge p1, v1, :cond_1a

    .line 584
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 585
    iget-wide v2, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_a

    .line 587
    :cond_1a
    if-ne p1, v1, :cond_1d

    .line 590
    return p1

    .line 588
    :cond_1d
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodePackedVarint32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 7
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p3, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    .local p2, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 453
    .local v0, "output":Lcom/android/framework/protobuf/IntArrayList;
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 454
    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    .line 455
    .local v1, "fieldLimit":I
    :goto_a
    if-ge p1, v1, :cond_16

    .line 456
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 457
    iget v2, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_a

    .line 459
    :cond_16
    if-ne p1, v1, :cond_19

    .line 462
    return p1

    .line 460
    :cond_19
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodePackedVarint64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 8
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p3, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    .local p2, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 469
    .local v0, "output":Lcom/android/framework/protobuf/LongArrayList;
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 470
    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    .line 471
    .local v1, "fieldLimit":I
    :goto_a
    if-ge p1, v1, :cond_16

    .line 472
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 473
    iget-wide v2, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-virtual {v0, v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_a

    .line 475
    :cond_16
    if-ne p1, v1, :cond_19

    .line 478
    return p1

    .line 476
    :cond_19
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodeSInt32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 9
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 418
    .local p4, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 419
    .local v0, "output":Lcom/android/framework/protobuf/IntArrayList;
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 420
    iget v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 421
    :goto_10
    if-ge p2, p3, :cond_29

    .line 422
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 423
    .local v1, "nextPosition":I
    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_1b

    .line 424
    goto :goto_29

    .line 426
    :cond_1b
    invoke-static {p1, v1, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 427
    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 428
    .end local v1    # "nextPosition":I
    goto :goto_10

    .line 429
    :cond_29
    :goto_29
    return p2
.end method

.method static decodeSInt64List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 10
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 435
    .local p4, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 436
    .local v0, "output":Lcom/android/framework/protobuf/LongArrayList;
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 437
    iget-wide v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 438
    :goto_10
    if-ge p2, p3, :cond_29

    .line 439
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 440
    .local v1, "nextPosition":I
    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_1b

    .line 441
    goto :goto_29

    .line 443
    :cond_1b
    invoke-static {p1, v1, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 444
    iget-wide v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 445
    .end local v1    # "nextPosition":I
    goto :goto_10

    .line 446
    :cond_29
    :goto_29
    return p2
.end method

.method static decodeString([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 6
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p2, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 189
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 190
    iget v0, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 191
    .local v0, "length":I
    if-ltz v0, :cond_1b

    .line 193
    if-nez v0, :cond_f

    .line 194
    const-string v1, ""

    iput-object v1, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 195
    return p1

    .line 197
    :cond_f
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 198
    add-int v1, p1, v0

    return v1

    .line 192
    :cond_1b
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method static decodeStringList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 13
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 598
    .local p4, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    .line 599
    .local v0, "output":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<Ljava/lang/String;>;"
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 600
    iget v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 601
    .local v1, "length":I
    if-ltz v1, :cond_47

    .line 603
    const-string v2, ""

    if-nez v1, :cond_11

    .line 604
    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 606
    :cond_11
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 607
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v0, v3}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 608
    add-int/2addr p2, v1

    .line 610
    .end local v3    # "value":Ljava/lang/String;
    :goto_1c
    if-ge p2, p3, :cond_46

    .line 611
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 612
    .local v3, "nextPosition":I
    iget v4, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v4, :cond_27

    .line 613
    goto :goto_46

    .line 615
    :cond_27
    invoke-static {p1, v3, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 616
    iget v4, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 617
    .local v4, "nextLength":I
    if-ltz v4, :cond_41

    .line 619
    if-nez v4, :cond_35

    .line 620
    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 622
    :cond_35
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, p1, p2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 623
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v0, v5}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 624
    add-int/2addr p2, v4

    .line 626
    .end local v3    # "nextPosition":I
    .end local v4    # "nextLength":I
    .end local v5    # "value":Ljava/lang/String;
    :goto_40
    goto :goto_1c

    .line 618
    .restart local v3    # "nextPosition":I
    .restart local v4    # "nextLength":I
    :cond_41
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 627
    .end local v3    # "nextPosition":I
    .end local v4    # "nextLength":I
    :cond_46
    :goto_46
    return p2

    .line 602
    :cond_47
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodeStringListRequireUtf8(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 13
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 637
    .local p4, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    .line 638
    .local v0, "output":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<Ljava/lang/String;>;"
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 639
    iget v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 640
    .local v1, "length":I
    if-ltz v1, :cond_61

    .line 642
    const-string v2, ""

    if-nez v1, :cond_11

    .line 643
    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 645
    :cond_11
    add-int v3, p2, v1

    invoke-static {p1, p2, v3}, Lcom/android/framework/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 648
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 649
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v0, v3}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 650
    add-int/2addr p2, v1

    .line 652
    .end local v3    # "value":Ljava/lang/String;
    :goto_24
    if-ge p2, p3, :cond_5b

    .line 653
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 654
    .local v3, "nextPosition":I
    iget v4, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v4, :cond_2f

    .line 655
    goto :goto_5b

    .line 657
    :cond_2f
    invoke-static {p1, v3, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 658
    iget v4, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 659
    .local v4, "nextLength":I
    if-ltz v4, :cond_56

    .line 661
    if-nez v4, :cond_3d

    .line 662
    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 664
    :cond_3d
    add-int v5, p2, v4

    invoke-static {p1, p2, v5}, Lcom/android/framework/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 667
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, p1, p2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 668
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v0, v5}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 669
    add-int/2addr p2, v4

    .line 671
    .end local v3    # "nextPosition":I
    .end local v4    # "nextLength":I
    .end local v5    # "value":Ljava/lang/String;
    :goto_50
    goto :goto_24

    .line 665
    .restart local v3    # "nextPosition":I
    .restart local v4    # "nextLength":I
    :cond_51
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 660
    :cond_56
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 672
    .end local v3    # "nextPosition":I
    .end local v4    # "nextLength":I
    :cond_5b
    :goto_5b
    return p2

    .line 646
    :cond_5c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 641
    :cond_61
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodeStringRequireUtf8([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 5
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p2, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 205
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 206
    iget v0, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 207
    .local v0, "length":I
    if-ltz v0, :cond_18

    .line 209
    if-nez v0, :cond_f

    .line 210
    const-string v1, ""

    iput-object v1, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 211
    return p1

    .line 213
    :cond_f
    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 214
    add-int v1, p1, v0

    return v1

    .line 208
    :cond_18
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method static decodeUnknownField(I[BIILcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 15
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p4, "unknownFields"    # Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .param p5, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1021
    invoke-static {p0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_91

    .line 1024
    invoke-static {p0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_96

    .line 1066
    :pswitch_d
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1030
    :pswitch_12
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, p0, v0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 1031
    add-int/lit8 v0, p2, 0x4

    return v0

    .line 1049
    :pswitch_20
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->newInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    .line 1050
    .local v0, "child":Lcom/android/framework/protobuf/UnknownFieldSetLite;
    and-int/lit8 v1, p0, -0x8

    or-int/lit8 v7, v1, 0x4

    .line 1051
    .local v7, "endGroup":I
    const/4 v1, 0x0

    .line 1052
    .local v1, "lastTag":I
    :goto_29
    if-ge p2, p3, :cond_40

    .line 1053
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 1054
    iget v8, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 1055
    .end local v1    # "lastTag":I
    .local v8, "lastTag":I
    if-ne v8, v7, :cond_35

    .line 1056
    move v1, v8

    goto :goto_40

    .line 1058
    :cond_35
    move v1, v8

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    goto :goto_29

    .line 1060
    .end local v8    # "lastTag":I
    .restart local v1    # "lastTag":I
    :cond_40
    :goto_40
    if-gt p2, p3, :cond_48

    if-ne v1, v7, :cond_48

    .line 1063
    invoke-virtual {p4, p0, v0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 1064
    return p2

    .line 1061
    :cond_48
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1036
    .end local v0    # "child":Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .end local v1    # "lastTag":I
    .end local v7    # "endGroup":I
    :pswitch_4d
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 1037
    iget v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 1038
    .local v0, "length":I
    if-ltz v0, :cond_70

    .line 1040
    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_6b

    .line 1042
    if-nez v0, :cond_61

    .line 1043
    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p4, p0, v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_68

    .line 1045
    :cond_61
    invoke-static {p1, p2, v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p4, p0, v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 1047
    :goto_68
    add-int v1, p2, v0

    return v1

    .line 1041
    :cond_6b
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1039
    :cond_70
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1033
    .end local v0    # "length":I
    :pswitch_75
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, p0, v0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 1034
    add-int/lit8 v0, p2, 0x8

    return v0

    .line 1026
    :pswitch_83
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 1027
    iget-wide v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, p0, v0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 1028
    return p2

    .line 1022
    :cond_91
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_83
        :pswitch_75
        :pswitch_4d
        :pswitch_20
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method static decodeVarint32(I[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 10
    .param p0, "firstByte"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;

    .line 92
    and-int/lit8 v0, p0, 0x7f

    .line 93
    .local v0, "value":I
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "position":I
    .local v1, "position":I
    aget-byte p2, p1, p2

    .line 94
    .local p2, "b2":B
    if-ltz p2, :cond_e

    .line 95
    shl-int/lit8 v2, p2, 0x7

    or-int/2addr v2, v0

    iput v2, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 96
    return v1

    .line 98
    :cond_e
    and-int/lit8 v2, p2, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v0, v2

    .line 100
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "position":I
    .local v2, "position":I
    aget-byte v1, p1, v1

    .line 101
    .local v1, "b3":B
    if-ltz v1, :cond_1f

    .line 102
    shl-int/lit8 v3, v1, 0xe

    or-int/2addr v3, v0

    iput v3, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 103
    return v2

    .line 105
    :cond_1f
    and-int/lit8 v3, v1, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v0, v3

    .line 107
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "position":I
    .local v3, "position":I
    aget-byte v2, p1, v2

    .line 108
    .local v2, "b4":B
    if-ltz v2, :cond_30

    .line 109
    shl-int/lit8 v4, v2, 0x15

    or-int/2addr v4, v0

    iput v4, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 110
    return v3

    .line 112
    :cond_30
    and-int/lit8 v4, v2, 0x7f

    shl-int/lit8 v4, v4, 0x15

    or-int/2addr v0, v4

    .line 114
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "position":I
    .local v4, "position":I
    aget-byte v3, p1, v3

    .line 115
    .local v3, "b5":B
    if-ltz v3, :cond_41

    .line 116
    shl-int/lit8 v5, v3, 0x1c

    or-int/2addr v5, v0

    iput v5, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 117
    return v4

    .line 119
    :cond_41
    and-int/lit8 v5, v3, 0x7f

    shl-int/lit8 v5, v5, 0x1c

    or-int/2addr v0, v5

    .line 121
    :goto_46
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "position":I
    .local v5, "position":I
    aget-byte v4, p1, v4

    if-gez v4, :cond_4e

    move v4, v5

    goto :goto_46

    .line 123
    :cond_4e
    iput v0, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 124
    return v5
.end method

.method static decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 5
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p2, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;

    .line 82
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "position":I
    .local v0, "position":I
    aget-byte p1, p0, p1

    .line 83
    .local p1, "value":I
    if-ltz p1, :cond_9

    .line 84
    iput p1, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 85
    return v0

    .line 87
    :cond_9
    invoke-static {p1, p0, v0, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    return v1
.end method

.method static decodeVarint32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 9
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 299
    .local p4, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 300
    .local v0, "output":Lcom/android/framework/protobuf/IntArrayList;
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 301
    iget v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 302
    :goto_c
    if-ge p2, p3, :cond_21

    .line 303
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 304
    .local v1, "nextPosition":I
    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_17

    .line 305
    goto :goto_21

    .line 307
    :cond_17
    invoke-static {p1, v1, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 308
    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 309
    .end local v1    # "nextPosition":I
    goto :goto_c

    .line 310
    :cond_21
    :goto_21
    return p2
.end method

.method static decodeVarint64(J[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 12
    .param p0, "firstByte"    # J
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;

    .line 143
    const-wide/16 v0, 0x7f

    and-long/2addr v0, p0

    .line 144
    .local v0, "value":J
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "position":I
    .local v2, "position":I
    aget-byte p3, p2, p3

    .line 145
    .local p3, "next":B
    const/4 v3, 0x7

    .line 146
    .local v3, "shift":I
    and-int/lit8 v4, p3, 0x7f

    int-to-long v4, v4

    const/4 v6, 0x7

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 147
    :goto_e
    if-gez p3, :cond_1d

    .line 148
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "position":I
    .local v4, "position":I
    aget-byte p3, p2, v2

    .line 149
    add-int/lit8 v3, v3, 0x7

    .line 150
    and-int/lit8 v2, p3, 0x7f

    int-to-long v5, v2

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    move v2, v4

    goto :goto_e

    .line 152
    .end local v4    # "position":I
    .restart local v2    # "position":I
    :cond_1d
    iput-wide v0, p4, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    .line 153
    return v2
.end method

.method static decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 8
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p2, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;

    .line 132
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "position":I
    .local v0, "position":I
    aget-byte p1, p0, p1

    int-to-long v1, p1

    .line 133
    .local v1, "value":J
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_e

    .line 134
    iput-wide v1, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    .line 135
    return v0

    .line 137
    :cond_e
    invoke-static {v1, v2, p0, v0, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64(J[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1
.end method

.method static decodeVarint64List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 10
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 316
    .local p4, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 317
    .local v0, "output":Lcom/android/framework/protobuf/LongArrayList;
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 318
    iget-wide v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 319
    :goto_c
    if-ge p2, p3, :cond_21

    .line 320
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 321
    .local v1, "nextPosition":I
    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_17

    .line 322
    goto :goto_21

    .line 324
    :cond_17
    invoke-static {p1, v1, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 325
    iget-wide v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-virtual {v0, v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 326
    .end local v1    # "nextPosition":I
    goto :goto_c

    .line 327
    :cond_21
    :goto_21
    return p2
.end method

.method static mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 15
    .param p0, "msg"    # Ljava/lang/Object;
    .param p1, "schema"    # Lcom/android/framework/protobuf/Schema;
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "endGroup"    # I
    .param p6, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    move-object v7, p1

    check-cast v7, Lcom/android/framework/protobuf/MessageSchema;

    .line 290
    .local v7, "messageSchema":Lcom/android/framework/protobuf/MessageSchema;
    nop

    .line 291
    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->parseProto2Message(Ljava/lang/Object;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 292
    .local v0, "endPosition":I
    iput-object p0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 293
    return v0
.end method

.method static mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 13
    .param p0, "msg"    # Ljava/lang/Object;
    .param p1, "schema"    # Lcom/android/framework/protobuf/Schema;
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "position":I
    .local v0, "position":I
    aget-byte p3, p2, p3

    .line 264
    .local p3, "length":I
    if-gez p3, :cond_e

    .line 265
    invoke-static {p3, p2, v0, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 266
    iget p3, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    move v6, v0

    goto :goto_f

    .line 264
    :cond_e
    move v6, v0

    .line 268
    .end local v0    # "position":I
    .local v6, "position":I
    :goto_f
    if-ltz p3, :cond_24

    sub-int v0, p4, v6

    if-gt p3, v0, :cond_24

    .line 271
    add-int v4, v6, p3

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v3, v6

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)V

    .line 272
    iput-object p0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 273
    add-int v0, v6, p3

    return v0

    .line 269
    :cond_24
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method static skipField(I[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 8
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p4, "registers"    # Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1073
    invoke-static {p0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_44

    .line 1076
    invoke-static {p0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    .line 1103
    :pswitch_d
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1081
    :pswitch_12
    add-int/lit8 v0, p2, 0x4

    return v0

    .line 1088
    :pswitch_15
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v0, v0, 0x4

    .line 1089
    .local v0, "endGroup":I
    const/4 v1, 0x0

    .line 1090
    .local v1, "lastTag":I
    :goto_1a
    if-ge p2, p3, :cond_2a

    .line 1091
    invoke-static {p1, p2, p4}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 1092
    iget v1, p4, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 1093
    if-ne v1, v0, :cond_25

    .line 1094
    goto :goto_2a

    .line 1096
    :cond_25
    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/framework/protobuf/ArrayDecoders;->skipField(I[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    goto :goto_1a

    .line 1098
    :cond_2a
    :goto_2a
    if-gt p2, p3, :cond_2f

    if-ne v1, v0, :cond_2f

    .line 1101
    return p2

    .line 1099
    :cond_2f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1085
    .end local v0    # "endGroup":I
    .end local v1    # "lastTag":I
    :pswitch_34
    invoke-static {p1, p2, p4}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 1086
    iget v0, p4, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v0, p2

    return v0

    .line 1083
    :pswitch_3c
    add-int/lit8 v0, p2, 0x8

    return v0

    .line 1078
    :pswitch_3f
    invoke-static {p1, p2, p4}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 1079
    return p2

    .line 1074
    :cond_44
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3c
        :pswitch_34
        :pswitch_15
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method
