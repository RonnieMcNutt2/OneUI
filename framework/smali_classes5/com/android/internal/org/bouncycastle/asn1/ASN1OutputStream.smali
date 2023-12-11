.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
.super Ljava/lang/Object;
.source "ASN1OutputStream.java"


# instance fields
.field private os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    .line 43
    return-void
.end method

.method public static create(Ljava/io/OutputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .registers 2
    .param p0, "out"    # Ljava/io/OutputStream;

    .line 16
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static create(Ljava/io/OutputStream;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .registers 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "encoding"    # Ljava/lang/String;

    .line 21
    const-string v0, "DER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 23
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 25
    :cond_e
    const-string v0, "DL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 27
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLOutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DLOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 31
    :cond_1c
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 300
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 306
    return-void
.end method

.method flushInternal()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    return-void
.end method

.method getDERSubStream()Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;
    .registers 3

    .line 316
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method getDLSubStream()Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .registers 3

    .line 321
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLOutputStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DLOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method final write(I)V
    .registers 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 76
    return-void
.end method

.method final write([BII)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 82
    return-void
.end method

.method final writeElements(Ljava/util/Enumeration;)V
    .registers 4
    .param p1, "elements"    # Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    nop

    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 101
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 103
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 104
    .end local v0    # "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    goto :goto_1

    .line 105
    :cond_16
    return-void
.end method

.method final writeElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    array-length v0, p1

    .line 88
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_11

    .line 90
    aget-object v2, p1, v1

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 92
    .local v2, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 88
    .end local v2    # "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 94
    .end local v1    # "i":I
    :cond_11
    return-void
.end method

.method final writeEncoded(ZIB)V
    .registers 5
    .param p1, "withTag"    # Z
    .param p2, "tag"    # I
    .param p3, "contents"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    if-eqz p1, :cond_5

    .line 115
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 117
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 118
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 119
    return-void
.end method

.method final writeEncoded(ZIB[B)V
    .registers 7
    .param p1, "withTag"    # Z
    .param p2, "tag"    # I
    .param p3, "headByte"    # B
    .param p4, "tailBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    if-eqz p1, :cond_5

    .line 160
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 162
    :cond_5
    array-length v0, p4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 163
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 164
    const/4 v0, 0x0

    array-length v1, p4

    invoke-virtual {p0, p4, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 165
    return-void
.end method

.method final writeEncoded(ZIB[BIIB)V
    .registers 9
    .param p1, "withTag"    # Z
    .param p2, "tag"    # I
    .param p3, "headByte"    # B
    .param p4, "body"    # [B
    .param p5, "bodyOff"    # I
    .param p6, "bodyLen"    # I
    .param p7, "tailByte"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    if-eqz p1, :cond_5

    .line 179
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 181
    :cond_5
    add-int/lit8 v0, p6, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 182
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 183
    invoke-virtual {p0, p4, p5, p6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 184
    invoke-virtual {p0, p7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 185
    return-void
.end method

.method final writeEncoded(ZII[B)V
    .registers 7
    .param p1, "withTag"    # Z
    .param p2, "flags"    # I
    .param p3, "tagNo"    # I
    .param p4, "contents"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(ZII)V

    .line 191
    array-length v0, p4

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 192
    const/4 v0, 0x0

    array-length v1, p4

    invoke-virtual {p0, p4, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 193
    return-void
.end method

.method final writeEncoded(ZI[B)V
    .registers 6
    .param p1, "withTag"    # Z
    .param p2, "tag"    # I
    .param p3, "contents"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    if-eqz p1, :cond_5

    .line 129
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 131
    :cond_5
    array-length v0, p3

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 132
    const/4 v0, 0x0

    array-length v1, p3

    invoke-virtual {p0, p3, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 133
    return-void
.end method

.method final writeEncoded(ZI[BII)V
    .registers 6
    .param p1, "withTag"    # Z
    .param p2, "tag"    # I
    .param p3, "contents"    # [B
    .param p4, "contentsOff"    # I
    .param p5, "contentsLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    if-eqz p1, :cond_5

    .line 145
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 147
    :cond_5
    invoke-virtual {p0, p5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 148
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 149
    return-void
.end method

.method final writeEncodedIndef(ZII[B)V
    .registers 7
    .param p1, "withTag"    # Z
    .param p2, "flags"    # I
    .param p3, "tagNo"    # I
    .param p4, "contents"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(ZII)V

    .line 199
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 200
    array-length v0, p4

    const/4 v1, 0x0

    invoke-virtual {p0, p4, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 201
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 202
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 203
    return-void
.end method

.method final writeEncodedIndef(ZILjava/util/Enumeration;)V
    .registers 5
    .param p1, "withTag"    # Z
    .param p2, "tag"    # I
    .param p3, "elements"    # Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    if-eqz p1, :cond_5

    .line 223
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 225
    :cond_5
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 226
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeElements(Ljava/util/Enumeration;)V

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 228
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 229
    return-void
.end method

.method final writeEncodedIndef(ZI[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5
    .param p1, "withTag"    # Z
    .param p2, "tag"    # I
    .param p3, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    if-eqz p1, :cond_5

    .line 210
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 212
    :cond_5
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 213
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 216
    return-void
.end method

.method final writeLength(I)V
    .registers 6
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    const/16 v0, 0x7f

    if-le p1, v0, :cond_24

    .line 51
    const/4 v0, 0x1

    .line 52
    .local v0, "size":I
    move v1, p1

    .line 54
    .local v1, "val":I
    :goto_6
    ushr-int/lit8 v2, v1, 0x8

    move v1, v2

    if-eqz v2, :cond_e

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 59
    :cond_e
    or-int/lit16 v2, v0, 0x80

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 61
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x8

    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_23

    .line 63
    shr-int v3, p1, v2

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 61
    add-int/lit8 v2, v2, -0x8

    goto :goto_18

    .line 65
    .end local v0    # "size":I
    .end local v1    # "val":I
    .end local v2    # "i":I
    :cond_23
    goto :goto_28

    .line 68
    :cond_24
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 70
    :goto_28
    return-void
.end method

.method public writeObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    if-eqz p1, :cond_e

    .line 276
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->flushInternal()V

    .line 278
    return-void

    .line 273
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 4
    .param p1, "primitive"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    if-eqz p1, :cond_a

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->flushInternal()V

    .line 289
    return-void

    .line 284
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V
    .registers 3
    .param p1, "primitive"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-virtual {p1, p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 294
    return-void
.end method

.method final writeTag(ZII)V
    .registers 8
    .param p1, "withTag"    # Z
    .param p2, "flags"    # I
    .param p3, "tagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    if-nez p1, :cond_3

    .line 236
    return-void

    .line 239
    :cond_3
    const/16 v0, 0x1f

    if-ge p3, v0, :cond_d

    .line 241
    or-int v0, p2, p3

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_38

    .line 245
    :cond_d
    or-int/lit8 v0, p2, 0x1f

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 246
    const/16 v0, 0x80

    if-ge p3, v0, :cond_1a

    .line 248
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_38

    .line 252
    :cond_1a
    const/4 v1, 0x5

    new-array v1, v1, [B

    .line 253
    .local v1, "stack":[B
    array-length v2, v1

    .line 255
    .local v2, "pos":I
    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v3, p3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 259
    :cond_25
    shr-int/lit8 p3, p3, 0x7

    .line 260
    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v3, p3, 0x7f

    or-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 262
    const/16 v3, 0x7f

    if-gt p3, v3, :cond_25

    .line 264
    array-length v0, v1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 267
    .end local v1    # "stack":[B
    .end local v2    # "pos":I
    :goto_38
    return-void
.end method
