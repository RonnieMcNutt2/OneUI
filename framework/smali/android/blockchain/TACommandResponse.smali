.class public Landroid/blockchain/TACommandResponse;
.super Ljava/lang/Object;
.source "TACommandResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/blockchain/TACommandResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TACommandResponse"


# instance fields
.field public mErrorMsg:Ljava/lang/String;

.field public mResponse:[B

.field public mResponseCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Landroid/blockchain/TACommandResponse$1;

    invoke-direct {v0}, Landroid/blockchain/TACommandResponse$1;-><init>()V

    sput-object v0, Landroid/blockchain/TACommandResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Landroid/blockchain/TACommandResponse;->mResponseCode:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/blockchain/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B)V
    .registers 5
    .param p1, "responseId"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "response"    # [B

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Landroid/blockchain/TACommandResponse;->mResponseCode:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/blockchain/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    .line 42
    iput p1, p0, Landroid/blockchain/TACommandResponse;->mResponseCode:I

    .line 43
    iput-object p2, p0, Landroid/blockchain/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Landroid/blockchain/TACommandResponse;->mResponseCode:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/blockchain/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    .line 61
    invoke-virtual {p0, p1}, Landroid/blockchain/TACommandResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/blockchain/TACommandResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/blockchain/TACommandResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public dump()V
    .registers 7

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TACommandResponse"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x64

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 92
    .local v0, "hex":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    iget-object v3, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    array-length v4, v3

    if-ge v2, v4, :cond_56

    .line 93
    if-lez v2, :cond_3e

    aget-byte v4, v3, v2

    if-eqz v4, :cond_3e

    add-int/lit8 v4, v2, -0x1

    aget-byte v3, v3, v4

    if-nez v3, :cond_3e

    .line 94
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_3e
    iget-object v3, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    aget-byte v3, v3, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02X "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 98
    .end local v2    # "i":I
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "outFile":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 103
    .local v2, "bw":Ljava/io/BufferedWriter;
    :try_start_5f
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/mnt/sdcard/respbuf.txt"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v1, v3

    .line 104
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_75} :catch_8a
    .catchall {:try_start_5f .. :try_end_75} :catchall_88

    .line 110
    nop

    .line 111
    :try_start_76
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 113
    nop

    .line 114
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7d} :catch_83
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7d} :catch_7e

    .line 120
    :cond_7d
    :goto_7d
    goto :goto_99

    .line 118
    :catch_7e
    move-exception v3

    .line 119
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_99

    .line 116
    :catch_83
    move-exception v3

    .line 117
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_7d

    .line 109
    :catchall_88
    move-exception v3

    goto :goto_9a

    .line 106
    :catch_8a
    move-exception v3

    .line 107
    .local v3, "e":Ljava/lang/Exception;
    :try_start_8b
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_88

    .line 110
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_93

    .line 111
    :try_start_90
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 113
    :cond_93
    if-eqz v1, :cond_7d

    .line 114
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_98} :catch_83
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_98} :catch_7e

    goto :goto_7d

    .line 122
    :goto_99
    return-void

    .line 110
    :goto_9a
    if-eqz v2, :cond_a4

    .line 111
    :try_start_9c
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    goto :goto_a4

    .line 118
    :catch_a0
    move-exception v4

    goto :goto_aa

    .line 116
    :catch_a2
    move-exception v4

    goto :goto_ae

    .line 113
    :cond_a4
    :goto_a4
    if-eqz v1, :cond_b1

    .line 114
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a9} :catch_a2
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a9} :catch_a0

    goto :goto_b1

    .line 119
    .local v4, "e":Ljava/lang/Exception;
    :goto_aa
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b2

    .line 117
    .local v4, "e":Ljava/io/IOException;
    :goto_ae
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 120
    .end local v4    # "e":Ljava/io/IOException;
    :cond_b1
    :goto_b1
    nop

    .line 121
    :goto_b2
    throw v3
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/blockchain/TACommandResponse;->mResponseCode:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/blockchain/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, "len":I
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    .line 79
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 80
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 67
    iget v0, p0, Landroid/blockchain/TACommandResponse;->mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Landroid/blockchain/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 71
    return-void
.end method
