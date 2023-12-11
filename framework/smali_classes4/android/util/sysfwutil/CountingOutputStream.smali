.class public Landroid/util/sysfwutil/CountingOutputStream;
.super Ljava/io/OutputStream;
.source "CountingOutputStream.java"


# instance fields
.field private mCount:J

.field private final mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 32
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/util/sysfwutil/CountingOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 34
    return-void
.end method


# virtual methods
.method public getCount()J
    .registers 3

    .line 37
    iget-wide v0, p0, Landroid/util/sysfwutil/CountingOutputStream;->mCount:J

    return-wide v0
.end method

.method public write(I)V
    .registers 6
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Landroid/util/sysfwutil/CountingOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 49
    iget-wide v0, p0, Landroid/util/sysfwutil/CountingOutputStream;->mCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/util/sysfwutil/CountingOutputStream;->mCount:J

    .line 50
    return-void
.end method

.method public write([BII)V
    .registers 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Landroid/util/sysfwutil/CountingOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 43
    iget-wide v0, p0, Landroid/util/sysfwutil/CountingOutputStream;->mCount:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/util/sysfwutil/CountingOutputStream;->mCount:J

    .line 44
    return-void
.end method
