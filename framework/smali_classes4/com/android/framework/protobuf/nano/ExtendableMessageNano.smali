.class public abstract Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "ExtendableMessageNano.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<",
        "TM;>;>",
        "Lcom/android/framework/protobuf/nano/MessageNano;"
    }
.end annotation


# instance fields
.field protected unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    .local p0, "this":Lcom/android/framework/protobuf/nano/ExtendableMessageNano;, "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 165
    .local p0, "this":Lcom/android/framework/protobuf/nano/ExtendableMessageNano;, "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->clone()Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;

    .line 166
    .local v0, "cloned":Lcom/android/framework/protobuf/nano/ExtendableMessageNano;, "TM;"
    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/InternalNano;->cloneUnknownFieldData(Lcom/android/framework/protobuf/nano/ExtendableMessageNano;Lcom/android/framework/protobuf/nano/ExtendableMessageNano;)V

    .line 167
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/android/framework/protobuf/nano/ExtendableMessageNano;, "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->clone()Lcom/android/framework/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/android/framework/protobuf/nano/ExtendableMessageNano;, "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->clone()Lcom/android/framework/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .registers 5

    .line 49
    .local p0, "this":Lcom/android/framework/protobuf/nano/ExtendableMessageNano;, "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    const/4 v0, 0x0

    .line 50
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-eqz v1, :cond_1c

    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 52
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/nano/FieldArray;->dataAt(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v2

    .line 53
    .local v2, "field":Lcom/android/framework/protobuf/nano/FieldData;
    invoke-virtual {v2}, Lcom/android/framework/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 51
    .end local v2    # "field":Lcom/android/framework/protobuf/nano/FieldData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 56
    .end local v1    # "i":I
    :cond_1c
    return v0
.end method

.method public final getExtension(Lcom/android/framework/protobuf/nano/Extension;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "TM;TT;>;)TT;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/android/framework/protobuf/nano/ExtendableMessageNano;, "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    .local p1, "extension":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;TT;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 87
    return-object v1

    .line 89
    :cond_6
    iget v2, p1, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v0

    .line 90
    .local v0, "field":Lcom/android/framework/protobuf/nano/FieldData;
    if-nez v0, :cond_13

    goto :goto_17

    :cond_13
    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/nano/FieldData;->getValue(Lcom/android/framework/protobuf/nano/Extension;)Ljava/lang/Object;

    move-result-object v1

    :goto_17
    return-object v1
.end method

.method public final hasExtension(Lcom/android/framework/protobuf/nano/Extension;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "TM;*>;)Z"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/android/framework/protobuf/nano/ExtendableMessageNano;, "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    .local p1, "extension":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;*>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 76
    return v1

    .line 78
    :cond_6
    iget v2, p1, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v0

    .line 79
    .local v0, "field":Lcom/android/framework/protobuf/nano/FieldData;
    if-eqz v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public final setExtension(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "TM;TT;>;TT;)TM;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lcom/android/framework/protobuf/nano/ExtendableMessageNano;, "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    .local p1, "extension":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget v0, p1, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    .line 98
    .local v0, "fieldNumber":I
    if-nez p2, :cond_1b

    .line 99
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-eqz v1, :cond_3c

    .line 100
    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/nano/FieldArray;->remove(I)V

    .line 101
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    goto :goto_3c

    .line 106
    :cond_1b
    const/4 v1, 0x0

    .line 107
    .local v1, "field":Lcom/android/framework/protobuf/nano/FieldData;
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v2, :cond_28

    .line 108
    new-instance v2, Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-direct {v2}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>()V

    iput-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    goto :goto_2c

    .line 110
    :cond_28
    invoke-virtual {v2, v0}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v1

    .line 112
    :goto_2c
    if-nez v1, :cond_39

    .line 113
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    new-instance v3, Lcom/android/framework/protobuf/nano/FieldData;

    invoke-direct {v3, p1, p2}, Lcom/android/framework/protobuf/nano/FieldData;-><init>(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/framework/protobuf/nano/FieldArray;->put(ILcom/android/framework/protobuf/nano/FieldData;)V

    goto :goto_3c

    .line 115
    :cond_39
    invoke-virtual {v1, p1, p2}, Lcom/android/framework/protobuf/nano/FieldData;->setValue(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)V

    .line 120
    .end local v1    # "field":Lcom/android/framework/protobuf/nano/FieldData;
    :cond_3c
    :goto_3c
    move-object v1, p0

    .line 121
    .local v1, "typedThis":Lcom/android/framework/protobuf/nano/ExtendableMessageNano;, "TM;"
    return-object v1
.end method

.method protected final storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z
    .registers 10
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    .local p0, "this":Lcom/android/framework/protobuf/nano/ExtendableMessageNano;, "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 141
    .local v0, "startPos":I
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 142
    const/4 v1, 0x0

    return v1

    .line 144
    :cond_c
    invoke-static {p2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v1

    .line 145
    .local v1, "fieldNumber":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 146
    .local v2, "endPos":I
    sub-int v3, v2, v0

    invoke-virtual {p1, v0, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getData(II)[B

    move-result-object v3

    .line 147
    .local v3, "bytes":[B
    new-instance v4, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    invoke-direct {v4, p2, v3}, Lcom/android/framework/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    .line 149
    .local v4, "unknownField":Lcom/android/framework/protobuf/nano/UnknownFieldData;
    const/4 v5, 0x0

    .line 150
    .local v5, "field":Lcom/android/framework/protobuf/nano/FieldData;
    iget-object v6, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v6, :cond_2c

    .line 151
    new-instance v6, Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-direct {v6}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>()V

    iput-object v6, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    goto :goto_30

    .line 153
    :cond_2c
    invoke-virtual {v6, v1}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v5

    .line 155
    :goto_30
    if-nez v5, :cond_3d

    .line 156
    new-instance v6, Lcom/android/framework/protobuf/nano/FieldData;

    invoke-direct {v6}, Lcom/android/framework/protobuf/nano/FieldData;-><init>()V

    move-object v5, v6

    .line 157
    iget-object v6, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v6, v1, v5}, Lcom/android/framework/protobuf/nano/FieldArray;->put(ILcom/android/framework/protobuf/nano/FieldData;)V

    .line 159
    :cond_3d
    invoke-virtual {v5, v4}, Lcom/android/framework/protobuf/nano/FieldData;->addUnknownField(Lcom/android/framework/protobuf/nano/UnknownFieldData;)V

    .line 160
    const/4 v6, 0x1

    return v6
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/android/framework/protobuf/nano/ExtendableMessageNano;, "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v0, :cond_5

    .line 62
    return-void

    .line 64
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 65
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/nano/FieldArray;->dataAt(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v1

    .line 66
    .local v1, "field":Lcom/android/framework/protobuf/nano/FieldData;
    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/nano/FieldData;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 64
    .end local v1    # "field":Lcom/android/framework/protobuf/nano/FieldData;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 68
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method
