.class Landroid/os/ZygoteProcess$ZygoteState;
.super Ljava/lang/Object;
.source "ZygoteProcess.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ZygoteProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZygoteState"
.end annotation


# instance fields
.field private final mAbiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClosed:Z

.field final mUsapSocketAddress:Landroid/net/LocalSocketAddress;

.field final mZygoteInputStream:Ljava/io/DataInputStream;

.field final mZygoteOutputWriter:Ljava/io/BufferedWriter;

.field private final mZygoteSessionSocket:Landroid/net/LocalSocket;

.field final mZygoteSocketAddress:Landroid/net/LocalSocketAddress;


# direct methods
.method private constructor <init>(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;Landroid/net/LocalSocket;Ljava/io/DataInputStream;Ljava/io/BufferedWriter;Ljava/util/List;)V
    .registers 7
    .param p1, "zygoteSocketAddress"    # Landroid/net/LocalSocketAddress;
    .param p2, "usapSocketAddress"    # Landroid/net/LocalSocketAddress;
    .param p3, "zygoteSessionSocket"    # Landroid/net/LocalSocket;
    .param p4, "zygoteInputStream"    # Ljava/io/DataInputStream;
    .param p5, "zygoteOutputWriter"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LocalSocketAddress;",
            "Landroid/net/LocalSocketAddress;",
            "Landroid/net/LocalSocket;",
            "Ljava/io/DataInputStream;",
            "Ljava/io/BufferedWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p6, "abiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteSocketAddress:Landroid/net/LocalSocketAddress;

    .line 169
    iput-object p2, p0, Landroid/os/ZygoteProcess$ZygoteState;->mUsapSocketAddress:Landroid/net/LocalSocketAddress;

    .line 170
    iput-object p3, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteSessionSocket:Landroid/net/LocalSocket;

    .line 171
    iput-object p4, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    .line 172
    iput-object p5, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    .line 173
    iput-object p6, p0, Landroid/os/ZygoteProcess$ZygoteState;->mAbiList:Ljava/util/List;

    .line 174
    return-void
.end method

.method static connect(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)Landroid/os/ZygoteProcess$ZygoteState;
    .registers 13
    .param p0, "zygoteSocketAddress"    # Landroid/net/LocalSocketAddress;
    .param p1, "usapSocketAddress"    # Landroid/net/LocalSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 194
    .local v0, "zygoteSessionSocket":Landroid/net/LocalSocket;
    if-eqz p0, :cond_3e

    .line 199
    :try_start_7
    invoke-virtual {v0, p0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 200
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v8, v1

    .line 201
    .local v8, "zygoteInputStream":Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 203
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_24} :catch_36

    move-object v9, v1

    .line 211
    .local v9, "zygoteOutputWriter":Ljava/io/BufferedWriter;
    nop

    .line 213
    new-instance v10, Landroid/os/ZygoteProcess$ZygoteState;

    .line 215
    invoke-static {v9, v8}, Landroid/os/ZygoteProcess;->-$$Nest$smgetAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/util/List;

    move-result-object v7

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v7}, Landroid/os/ZygoteProcess$ZygoteState;-><init>(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;Landroid/net/LocalSocket;Ljava/io/DataInputStream;Ljava/io/BufferedWriter;Ljava/util/List;)V

    .line 213
    return-object v10

    .line 205
    .end local v8    # "zygoteInputStream":Ljava/io/DataInputStream;
    .end local v9    # "zygoteOutputWriter":Ljava/io/BufferedWriter;
    :catch_36
    move-exception v1

    .line 207
    .local v1, "ex":Ljava/io/IOException;
    :try_start_37
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 208
    :goto_3a
    goto :goto_3d

    :catch_3b
    move-exception v2

    goto :goto_3a

    .line 210
    :goto_3d
    throw v1

    .line 195
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_3e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "zygoteSocketAddress can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 231
    :try_start_0
    iget-object v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteSessionSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 234
    goto :goto_e

    .line 232
    :catch_6
    move-exception v0

    .line 233
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "ZygoteProcess"

    const-string v2, "I/O exception on routine close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mClosed:Z

    .line 237
    return-void
.end method

.method getUsapSessionSocket()Landroid/net/LocalSocket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 220
    .local v0, "usapSessionSocket":Landroid/net/LocalSocket;
    iget-object v1, p0, Landroid/os/ZygoteProcess$ZygoteState;->mUsapSocketAddress:Landroid/net/LocalSocketAddress;

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 222
    return-object v0
.end method

.method isClosed()Z
    .registers 2

    .line 240
    iget-boolean v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mClosed:Z

    return v0
.end method

.method matches(Ljava/lang/String;)Z
    .registers 3
    .param p1, "abi"    # Ljava/lang/String;

    .line 226
    iget-object v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mAbiList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
