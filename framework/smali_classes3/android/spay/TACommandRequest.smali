.class public Landroid/spay/TACommandRequest;
.super Ljava/lang/Object;
.source "TACommandRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/spay/TACommandRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static DEBUG:Z = false

.field public static final HEADER_SIZE:I = 0x64

.field public static final MAX_BUFFER_SIZE:I = 0x500000

.field public static final MAX_DATA_TRANSACTION_SIZE:I = 0xc00

.field public static final PAYLOAD_SIZE:I = 0xb9c

.field private static final TAG:Ljava/lang/String; = "TACommandRequest"


# instance fields
.field public mCommandId:I

.field public mLength:I

.field public mMagicNum:[B

.field public mOffset:I

.field public mRequest:[B

.field public mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Landroid/spay/TACommandRequest;->DEBUG:Z

    .line 75
    new-instance v0, Landroid/spay/TACommandRequest$1;

    invoke-direct {v0}, Landroid/spay/TACommandRequest$1;-><init>()V

    sput-object v0, Landroid/spay/TACommandRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/spay/TACommandRequest;->mVersion:I

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    .line 42
    const/4 v2, 0x0

    iput v2, p0, Landroid/spay/TACommandRequest;->mLength:I

    .line 43
    iput v2, p0, Landroid/spay/TACommandRequest;->mOffset:I

    .line 45
    iput v0, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    .line 46
    iput-object v1, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    .line 54
    return-void
.end method

.method private constructor <init>(I[BIII[B)V
    .registers 10
    .param p1, "_version"    # I
    .param p2, "_magicNum"    # [B
    .param p3, "_commandId"    # I
    .param p4, "_length"    # I
    .param p5, "_offset"    # I
    .param p6, "_requestPayload"    # [B

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/spay/TACommandRequest;->mVersion:I

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    .line 42
    const/4 v2, 0x0

    iput v2, p0, Landroid/spay/TACommandRequest;->mLength:I

    .line 43
    iput v2, p0, Landroid/spay/TACommandRequest;->mOffset:I

    .line 45
    iput v0, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    .line 46
    iput-object v1, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    .line 138
    iput p1, p0, Landroid/spay/TACommandRequest;->mVersion:I

    .line 139
    iput-object p2, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    .line 140
    iput p3, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    .line 141
    iput p4, p0, Landroid/spay/TACommandRequest;->mLength:I

    .line 142
    iput p5, p0, Landroid/spay/TACommandRequest;->mOffset:I

    .line 143
    iput-object p6, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    .line 144
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/spay/TACommandRequest;->mVersion:I

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    .line 42
    const/4 v2, 0x0

    iput v2, p0, Landroid/spay/TACommandRequest;->mLength:I

    .line 43
    iput v2, p0, Landroid/spay/TACommandRequest;->mOffset:I

    .line 45
    iput v0, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    .line 46
    iput-object v1, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    .line 88
    invoke-virtual {p0, p1}, Landroid/spay/TACommandRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/spay/TACommandRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/spay/TACommandRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public disassemble()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/spay/TACommandRequest;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "arr":Ljava/util/List;, "Ljava/util/List<Landroid/spay/TACommandRequest;>;"
    iget-object v1, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    if-nez v1, :cond_b

    .line 162
    const/4 v1, 0x0

    return-object v1

    .line 165
    :cond_b
    array-length v1, v1

    const-string v2, "TACommandRequest"

    const/16 v3, 0xb9c

    if-gt v1, v3, :cond_34

    .line 166
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    sget-boolean v1, Landroid/spay/TACommandRequest;->DEBUG:Z

    if-eqz v1, :cond_33

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no need to divide the mRequest, len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_33
    return-object v0

    .line 173
    :cond_34
    sget-boolean v1, Landroid/spay/TACommandRequest;->DEBUG:Z

    if-eqz v1, :cond_51

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dividing the mRequest, len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_51
    const/4 v1, 0x0

    .line 178
    .local v1, "offset":I
    :goto_52
    add-int/lit16 v3, v1, 0xb9c

    iget v7, p0, Landroid/spay/TACommandRequest;->mLength:I

    const-string v10, " to "

    const-string v11, "generating the chunk from "

    if-ge v3, v7, :cond_9d

    .line 179
    sget-boolean v3, Landroid/spay/TACommandRequest;->DEBUG:Z

    if-eqz v3, :cond_80

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit16 v4, v1, 0xb9c

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_80
    new-instance v10, Landroid/spay/TACommandRequest;

    iget v4, p0, Landroid/spay/TACommandRequest;->mVersion:I

    iget-object v5, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    iget v6, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    iget v7, p0, Landroid/spay/TACommandRequest;->mLength:I

    iget-object v3, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    add-int/lit16 v8, v1, 0xb9c

    .line 183
    invoke-static {v3, v1, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    move-object v3, v10

    move v8, v1

    invoke-direct/range {v3 .. v9}, Landroid/spay/TACommandRequest;-><init>(I[BIII[B)V

    .line 182
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit16 v1, v1, 0xb9c

    goto :goto_52

    .line 187
    :cond_9d
    new-instance v12, Landroid/spay/TACommandRequest;

    iget v4, p0, Landroid/spay/TACommandRequest;->mVersion:I

    iget-object v5, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    iget v6, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    iget-object v3, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    .line 188
    invoke-static {v3, v1, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    move-object v3, v12

    move v8, v1

    invoke-direct/range {v3 .. v9}, Landroid/spay/TACommandRequest;-><init>(I[BIII[B)V

    .line 187
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    sget-boolean v3, Landroid/spay/TACommandRequest;->DEBUG:Z

    if-eqz v3, :cond_d7

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/spay/TACommandRequest;->mLength:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_d7
    return-object v0
.end method

.method public dump()V
    .registers 7

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TACommandRequest"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x64

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 200
    .local v0, "hex":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_46
    iget-object v3, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v4, v3

    if-ge v2, v4, :cond_6b

    .line 202
    aget-byte v3, v3, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "0x%02X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v3, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v3, v3

    if-eq v2, v3, :cond_68

    .line 204
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 206
    .end local v2    # "i":I
    :cond_6b
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v1, 0x0

    .line 210
    .local v1, "outFile":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 212
    .local v2, "bw":Ljava/io/BufferedWriter;
    :try_start_7a
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/mnt/sdcard/sendbuf.txt"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v1, v3

    .line 213
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_90} :catch_a5
    .catchall {:try_start_7a .. :try_end_90} :catchall_a3

    .line 219
    nop

    .line 220
    :try_start_91
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 222
    nop

    .line 223
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_98} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_98} :catch_99

    .line 229
    :cond_98
    :goto_98
    goto :goto_b4

    .line 227
    :catch_99
    move-exception v3

    .line 228
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_b4

    .line 225
    :catch_9e
    move-exception v3

    .line 226
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_98

    .line 218
    :catchall_a3
    move-exception v3

    goto :goto_b5

    .line 215
    :catch_a5
    move-exception v3

    .line 216
    .local v3, "e":Ljava/lang/Exception;
    :try_start_a6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_a3

    .line 219
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_ae

    .line 220
    :try_start_ab
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 222
    :cond_ae
    if-eqz v1, :cond_98

    .line 223
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b3} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b3} :catch_99

    goto :goto_98

    .line 231
    :goto_b4
    return-void

    .line 219
    :goto_b5
    if-eqz v2, :cond_bf

    .line 220
    :try_start_b7
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    goto :goto_bf

    .line 227
    :catch_bb
    move-exception v4

    goto :goto_c5

    .line 225
    :catch_bd
    move-exception v4

    goto :goto_c9

    .line 222
    :cond_bf
    :goto_bf
    if-eqz v1, :cond_cc

    .line 223
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_c4} :catch_bd
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c4} :catch_bb

    goto :goto_cc

    .line 228
    .local v4, "e":Ljava/lang/Exception;
    :goto_c5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_cd

    .line 226
    .local v4, "e":Ljava/io/IOException;
    :goto_c9
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 229
    .end local v4    # "e":Ljava/io/IOException;
    :cond_cc
    :goto_cc
    nop

    .line 230
    :goto_cd
    throw v3
.end method

.method public getChunkOffset()I
    .registers 2

    .line 151
    iget v0, p0, Landroid/spay/TACommandRequest;->mOffset:I

    return v0
.end method

.method public getPayload()[B
    .registers 2

    .line 155
    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    return-object v0
.end method

.method public getTotalLength()I
    .registers 2

    .line 147
    iget v0, p0, Landroid/spay/TACommandRequest;->mLength:I

    return v0
.end method

.method public init(I[BI[B)V
    .registers 7
    .param p1, "version"    # I
    .param p2, "magic"    # [B
    .param p3, "cmdId"    # I
    .param p4, "request"    # [B

    .line 62
    iput p1, p0, Landroid/spay/TACommandRequest;->mVersion:I

    .line 63
    iput-object p2, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    .line 64
    iput p3, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    .line 65
    iput-object p4, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    .line 66
    const/4 v0, 0x0

    if-eqz p4, :cond_f

    .line 67
    array-length v1, p4

    iput v1, p0, Landroid/spay/TACommandRequest;->mLength:I

    goto :goto_11

    .line 69
    :cond_f
    iput v0, p0, Landroid/spay/TACommandRequest;->mLength:I

    .line 71
    :goto_11
    iput v0, p0, Landroid/spay/TACommandRequest;->mOffset:I

    .line 72
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/spay/TACommandRequest;->mVersion:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .local v0, "len":I
    if-lez v0, :cond_13

    .line 116
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    .line 117
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 120
    :cond_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/spay/TACommandRequest;->mLength:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/spay/TACommandRequest;->mOffset:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    if-lez v0, :cond_32

    .line 125
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    .line 126
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 128
    :cond_32
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 93
    iget v0, p0, Landroid/spay/TACommandRequest;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    array-length v2, v0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_f

    goto :goto_19

    .line 97
    :cond_f
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1c

    .line 95
    :cond_19
    :goto_19
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    :goto_1c
    iget v0, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Landroid/spay/TACommandRequest;->mLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Landroid/spay/TACommandRequest;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    if-eqz v0, :cond_3d

    array-length v2, v0

    if-nez v2, :cond_33

    goto :goto_3d

    .line 107
    :cond_33
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 109
    return-void

    .line 104
    :cond_3d
    :goto_3d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return-void
.end method
