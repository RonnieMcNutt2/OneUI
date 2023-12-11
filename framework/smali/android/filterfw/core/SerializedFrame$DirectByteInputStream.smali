.class Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;
.super Ljava/io/InputStream;
.source "SerializedFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/SerializedFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectByteInputStream"
.end annotation


# instance fields
.field private mBuffer:[B

.field private mPos:I

.field private mSize:I

.field final synthetic this$0:Landroid/filterfw/core/SerializedFrame;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/SerializedFrame;[BI)V
    .registers 4
    .param p2, "buffer"    # [B
    .param p3, "size"    # I

    .line 124
    iput-object p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->this$0:Landroid/filterfw/core/SerializedFrame;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 121
    const/4 p1, 0x0

    iput p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    .line 125
    iput-object p2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mBuffer:[B

    .line 126
    iput p3, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    .line 127
    return-void
.end method


# virtual methods
.method public final available()I
    .registers 3

    .line 131
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final read()I
    .registers 4

    .line 136
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mBuffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_12

    :cond_11
    const/4 v0, -0x1

    :goto_12
    return v0
.end method

.method public final read([BII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 141
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    if-lt v0, v1, :cond_8

    .line 142
    const/4 v0, -0x1

    return v0

    .line 144
    :cond_8
    add-int v2, v0, p3

    if-le v2, v1, :cond_e

    .line 145
    sub-int p3, v1, v0

    .line 147
    :cond_e
    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mBuffer:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    .line 149
    return p3
.end method

.method public final skip(J)J
    .registers 9
    .param p1, "n"    # J

    .line 154
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    int-to-long v1, v0

    add-long/2addr v1, p1

    iget v3, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    int-to-long v4, v3

    cmp-long v1, v1, v4

    if-lez v1, :cond_d

    .line 155
    sub-int/2addr v3, v0

    int-to-long p1, v3

    .line 157
    :cond_d
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gez v3, :cond_14

    .line 158
    return-wide v1

    .line 160
    :cond_14
    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    .line 161
    return-wide p1
.end method
