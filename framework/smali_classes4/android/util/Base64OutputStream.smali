.class public Landroid/util/Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64OutputStream.java"


# static fields
.field private static EMPTY:[B


# instance fields
.field private bpos:I

.field private buffer:[B

.field private final coder:Landroid/util/Base64$Coder;

.field private final flags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/util/Base64OutputStream;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "flags"    # I

    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "flags"    # I
    .param p3, "encode"    # Z

    .line 64
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    .line 34
    const/4 v1, 0x0

    iput v1, p0, Landroid/util/Base64OutputStream;->bpos:I

    .line 65
    iput p2, p0, Landroid/util/Base64OutputStream;->flags:I

    .line 66
    if-eqz p3, :cond_15

    .line 67
    new-instance v1, Landroid/util/Base64$Encoder;

    invoke-direct {v1, p2, v0}, Landroid/util/Base64$Encoder;-><init>(I[B)V

    iput-object v1, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    goto :goto_1c

    .line 69
    :cond_15
    new-instance v1, Landroid/util/Base64$Decoder;

    invoke-direct {v1, p2, v0}, Landroid/util/Base64$Decoder;-><init>(I[B)V

    iput-object v1, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    .line 71
    :goto_1c
    return-void
.end method

.method private embiggen([BI)[B
    .registers 4
    .param p1, "b"    # [B
    .param p2, "len"    # I

    .line 154
    if-eqz p1, :cond_7

    array-length v0, p1

    if-ge v0, p2, :cond_6

    goto :goto_7

    .line 157
    :cond_6
    return-object p1

    .line 155
    :cond_7
    :goto_7
    new-array v0, p2, [B

    return-object v0
.end method

.method private flushBuffer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget v0, p0, Landroid/util/Base64OutputStream;->bpos:I

    if-lez v0, :cond_c

    .line 96
    iget-object v1, p0, Landroid/util/Base64OutputStream;->buffer:[B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V

    .line 97
    iput v2, p0, Landroid/util/Base64OutputStream;->bpos:I

    .line 99
    :cond_c
    return-void
.end method

.method private internalWrite([BIIZ)V
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v1, v0, Landroid/util/Base64$Coder;->output:[B

    iget-object v2, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    invoke-virtual {v2, p3}, Landroid/util/Base64$Coder;->maxOutputSize(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/util/Base64OutputStream;->embiggen([BI)[B

    move-result-object v1

    iput-object v1, v0, Landroid/util/Base64$Coder;->output:[B

    .line 143
    iget-object v0, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/util/Base64$Coder;->process([BIIZ)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 146
    iget-object v0, p0, Landroid/util/Base64OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v1, v1, Landroid/util/Base64$Coder;->output:[B

    iget-object v2, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    iget v2, v2, Landroid/util/Base64$Coder;->op:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 147
    return-void

    .line 144
    :cond_27
    new-instance v0, Landroid/util/Base64DataException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Landroid/util/Base64DataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, "thrown":Ljava/io/IOException;
    :try_start_1
    invoke-direct {p0}, Landroid/util/Base64OutputStream;->flushBuffer()V

    .line 111
    sget-object v1, Landroid/util/Base64OutputStream;->EMPTY:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v3, v2}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_c

    .line 114
    goto :goto_e

    .line 112
    :catch_c
    move-exception v1

    .line 113
    .local v1, "e":Ljava/io/IOException;
    move-object v0, v1

    .line 117
    .end local v1    # "e":Ljava/io/IOException;
    :goto_e
    :try_start_e
    iget v1, p0, Landroid/util/Base64OutputStream;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1a

    .line 118
    iget-object v1, p0, Landroid/util/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_1f

    .line 120
    :cond_1a
    iget-object v1, p0, Landroid/util/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1f} :catch_20

    .line 128
    :goto_1f
    goto :goto_28

    .line 122
    :catch_20
    move-exception v1

    .line 123
    .restart local v1    # "e":Ljava/io/IOException;
    if-nez v0, :cond_25

    .line 124
    move-object v0, v1

    goto :goto_28

    .line 126
    :cond_25
    invoke-virtual {v0, v1}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 130
    .end local v1    # "e":Ljava/io/IOException;
    :goto_28
    if-nez v0, :cond_2b

    .line 133
    return-void

    .line 131
    :cond_2b
    throw v0
.end method

.method public write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    if-nez v0, :cond_a

    .line 80
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    .line 82
    :cond_a
    iget v0, p0, Landroid/util/Base64OutputStream;->bpos:I

    iget-object v1, p0, Landroid/util/Base64OutputStream;->buffer:[B

    array-length v2, v1

    if-lt v0, v2, :cond_17

    .line 84
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V

    .line 85
    iput v2, p0, Landroid/util/Base64OutputStream;->bpos:I

    .line 87
    :cond_17
    iget-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    iget v1, p0, Landroid/util/Base64OutputStream;->bpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/Base64OutputStream;->bpos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 88
    return-void
.end method

.method public write([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    if-gtz p3, :cond_3

    return-void

    .line 103
    :cond_3
    invoke-direct {p0}, Landroid/util/Base64OutputStream;->flushBuffer()V

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V

    .line 105
    return-void
.end method
