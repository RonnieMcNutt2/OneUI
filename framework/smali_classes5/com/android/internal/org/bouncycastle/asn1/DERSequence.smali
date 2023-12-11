.class public Lcom/android/internal/org/bouncycastle/asn1/DERSequence;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
.source "DERSequence.java"


# instance fields
.field private bodyLength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "element"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3
    .param p1, "elementVector"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    .line 46
    return-void
.end method

.method public constructor <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    .line 55
    return-void
.end method

.method constructor <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Z)V
    .registers 4
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .param p2, "clone"    # Z

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Z)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    .line 60
    return-void
.end method

.method public static convert(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/internal/org/bouncycastle/asn1/DERSequence;
    .registers 2
    .param p0, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 18
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    return-object v0
.end method

.method private getBodyLength()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    if-gez v0, :cond_21

    .line 66
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 67
    .local v0, "count":I
    const/4 v1, 0x0

    .line 69
    .local v1, "totalLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_1f

    .line 71
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 72
    .local v3, "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v4

    add-int/2addr v1, v4

    .line 69
    .end local v3    # "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 75
    .end local v2    # "i":I
    :cond_1f
    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    .line 78
    .end local v0    # "count":I
    .end local v1    # "totalLength":I
    :cond_21
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    return v0
.end method


# virtual methods
.method encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 11
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    if-eqz p2, :cond_7

    .line 100
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 103
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getDERSubStream()Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    move-result-object v0

    .line 105
    .local v0, "derOut":Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v1, v1

    .line 106
    .local v1, "count":I
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    const/4 v3, 0x1

    if-gez v2, :cond_44

    const/16 v2, 0x10

    if-le v1, v2, :cond_18

    goto :goto_44

    .line 118
    :cond_18
    const/4 v2, 0x0

    .line 120
    .local v2, "totalLength":I
    new-array v4, v1, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 121
    .local v4, "derObjects":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1c
    if-ge v5, v1, :cond_34

    .line 123
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 124
    .local v6, "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    aput-object v6, v4, v5

    .line 125
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v7

    add-int/2addr v2, v7

    .line 121
    .end local v6    # "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 128
    .end local v5    # "i":I
    :cond_34
    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    .line 129
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 131
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3a
    if-ge v5, v1, :cond_60

    .line 133
    aget-object v6, v4, v5

    invoke-virtual {v6, v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 131
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 108
    .end local v2    # "totalLength":I
    .end local v4    # "derObjects":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .end local v5    # "i":I
    :cond_44
    :goto_44
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->getBodyLength()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 110
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4c
    if-ge v2, v1, :cond_60

    .line 112
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    .line 113
    .local v4, "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v4, v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 110
    .end local v4    # "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 136
    .end local v2    # "i":I
    :cond_60
    return-void
.end method

.method encodedLength()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->getBodyLength()I

    move-result v0

    .line 85
    .local v0, "length":I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 140
    return-object p0
.end method

.method toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 145
    return-object p0
.end method
