.class public Lcom/android/internal/org/bouncycastle/asn1/DLBitString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
.source "DLBitString.java"


# direct methods
.method protected constructor <init>(BI)V
    .registers 3
    .param p1, "data"    # B
    .param p2, "padBits"    # I

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>(BI)V

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "value"    # I

    .line 97
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->getPadBits(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 105
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;-><init>([BI)V

    .line 92
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "padBits"    # I

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 86
    return-void
.end method

.method static fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/DLBitString;
    .registers 6
    .param p0, "bytes"    # [B

    .line 129
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_19

    .line 134
    const/4 v0, 0x0

    aget-byte v2, p0, v0

    .line 135
    .local v2, "padBits":I
    array-length v3, p0

    sub-int/2addr v3, v1

    new-array v3, v3, [B

    .line 137
    .local v3, "data":[B
    array-length v4, v3

    if-eqz v4, :cond_13

    .line 139
    array-length v4, p0

    sub-int/2addr v4, v1

    invoke-static {p0, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    :cond_13
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    invoke-direct {v0, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;-><init>([BI)V

    return-object v0

    .line 131
    .end local v2    # "padBits":I
    .end local v3    # "data":[B
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "truncated BIT STRING detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 4
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 62
    .local v0, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_18

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    if-eqz v1, :cond_b

    goto :goto_18

    .line 68
    :cond_b
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    move-result-object v1

    return-object v1

    .line 64
    :cond_18
    :goto_18
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 23
    if-eqz p0, :cond_5d

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    if-eqz v0, :cond_7

    goto :goto_5d

    .line 27
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    if-eqz v0, :cond_f

    .line 29
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-object v0

    .line 31
    :cond_f
    instance-of v0, p0, [B

    if-eqz v0, :cond_3b

    .line 35
    :try_start_13
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_1d

    return-object v0

    .line 37
    :catch_1d
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding error in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_5d
    :goto_5d
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    return-object v0
.end method


# virtual methods
.method encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 6
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->padBits:I

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->data:[B

    const/4 v2, 0x3

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZIB[B)V

    .line 120
    return-void
.end method

.method encodedLength()I
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isConstructed()Z
    .registers 2

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 124
    return-object p0
.end method
