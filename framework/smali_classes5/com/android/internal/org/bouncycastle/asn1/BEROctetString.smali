.class public Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
.source "BEROctetString.java"


# static fields
.field private static final DEFAULT_CHUNK_SIZE:I = 0x3e8


# instance fields
.field private final chunkSize:I

.field private final octs:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method static bridge synthetic -$$Nest$fgetchunkSize(Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->chunkSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetocts(Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->octs:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "string"    # [B

    .line 62
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([BI)V

    .line 63
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 4
    .param p1, "string"    # [B
    .param p2, "chunkSize"    # I

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([B[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V

    .line 87
    return-void
.end method

.method private constructor <init>([B[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V
    .registers 4
    .param p1, "string"    # [B
    .param p2, "octs"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .param p3, "chunkSize"    # I

    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 106
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->octs:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 107
    iput p3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->chunkSize:I

    .line 108
    return-void
.end method

.method public constructor <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 3
    .param p1, "octs"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 74
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V

    .line 75
    return-void
.end method

.method public constructor <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V
    .registers 4
    .param p1, "octs"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .param p2, "chunkSize"    # I

    .line 100
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->toBytes([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)[B

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([B[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V

    .line 101
    return-void
.end method

.method static fromSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;
    .registers 5
    .param p0, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    .line 188
    .local v0, "count":I
    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 189
    .local v1, "v":[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_16

    .line 191
    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    aput-object v3, v1, v2

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 193
    .end local v2    # "i":I
    :cond_16
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object v2
.end method

.method private static toBytes([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)[B
    .registers 7
    .param p0, "octs"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 38
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 40
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-eq v1, v2, :cond_34

    .line 44
    :try_start_9
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_16

    .line 49
    nop

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 46
    :catch_16
    move-exception v2

    .line 48
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception converting octets "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 52
    .end local v1    # "i":I
    .end local v2    # "e":Ljava/io/IOException;
    :cond_34
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    const/16 v0, 0x24

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodedIndef(ZILjava/util/Enumeration;)V

    .line 183
    return-void
.end method

.method encodedLength()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 174
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_5

    .line 177
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_1b
    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public getObjects()Ljava/util/Enumeration;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->octs:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-nez v0, :cond_a

    .line 119
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$1;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$1;-><init>(Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;)V

    return-object v0

    .line 143
    :cond_a
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$2;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$2;-><init>(Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;)V

    return-object v0
.end method

.method isConstructed()Z
    .registers 2

    .line 165
    const/4 v0, 0x1

    return v0
.end method
