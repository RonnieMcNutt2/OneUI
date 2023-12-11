.class public Lcom/samsung/android/knox/mpos/TACommandRequest;
.super Ljava/lang/Object;
.source "TACommandRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/mpos/TACommandRequest;",
            ">;"
        }
    .end annotation
.end field

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

    .line 72
    new-instance v0, Lcom/samsung/android/knox/mpos/TACommandRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/mpos/TACommandRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/mpos/TACommandRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mVersion:I

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    .line 39
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    .line 40
    iput v2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mOffset:I

    .line 42
    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mCommandId:I

    .line 43
    iput-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    .line 51
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

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mVersion:I

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    .line 39
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    .line 40
    iput v2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mOffset:I

    .line 42
    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mCommandId:I

    .line 43
    iput-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    .line 132
    iput p1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mVersion:I

    .line 133
    iput-object p2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    .line 134
    iput p3, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mCommandId:I

    .line 135
    iput p4, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    .line 136
    iput p5, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mOffset:I

    .line 137
    iput-object p6, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    .line 138
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mVersion:I

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    .line 39
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    .line 40
    iput v2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mOffset:I

    .line 42
    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mCommandId:I

    .line 43
    iput-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    .line 85
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/mpos/TACommandRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/mpos/TACommandRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/mpos/TACommandRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public disassemble()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/mpos/TACommandRequest;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "arr":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/mpos/TACommandRequest;>;"
    iget-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    if-nez v1, :cond_b

    .line 156
    const/4 v1, 0x0

    return-object v1

    .line 159
    :cond_b
    array-length v1, v1

    const/16 v2, 0xb9c

    if-gt v1, v2, :cond_14

    .line 160
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    return-object v0

    .line 165
    :cond_14
    const/4 v1, 0x0

    .line 167
    .local v1, "offset":I
    :goto_15
    add-int/lit16 v2, v1, 0xb9c

    iget v6, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    if-ge v2, v6, :cond_36

    .line 168
    new-instance v9, Lcom/samsung/android/knox/mpos/TACommandRequest;

    iget v3, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mVersion:I

    iget-object v4, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    iget v5, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mCommandId:I

    iget-object v2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    add-int/lit16 v7, v1, 0xb9c

    .line 169
    invoke-static {v2, v1, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    move-object v2, v9

    move v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/mpos/TACommandRequest;-><init>(I[BIII[B)V

    .line 168
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit16 v1, v1, 0xb9c

    goto :goto_15

    .line 173
    :cond_36
    new-instance v9, Lcom/samsung/android/knox/mpos/TACommandRequest;

    iget v3, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mVersion:I

    iget-object v4, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    iget v5, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mCommandId:I

    iget-object v2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    .line 174
    invoke-static {v2, v1, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    move-object v2, v9

    move v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/mpos/TACommandRequest;-><init>(I[BIII[B)V

    .line 173
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-object v0
.end method

.method public dump()V
    .registers 1

    .line 219
    return-void
.end method

.method public getChunkOffset()I
    .registers 2

    .line 145
    iget v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mOffset:I

    return v0
.end method

.method public getPayload()[B
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    return-object v0
.end method

.method public getTotalLength()I
    .registers 2

    .line 141
    iget v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    return v0
.end method

.method public init(I[BI[B)V
    .registers 7
    .param p1, "version"    # I
    .param p2, "magic"    # [B
    .param p3, "cmdId"    # I
    .param p4, "request"    # [B

    .line 59
    iput p1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mVersion:I

    .line 60
    iput-object p2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    .line 61
    iput p3, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mCommandId:I

    .line 62
    iput-object p4, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    .line 63
    const/4 v0, 0x0

    if-eqz p4, :cond_f

    .line 64
    array-length v1, p4

    iput v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    goto :goto_11

    .line 66
    :cond_f
    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    .line 68
    :goto_11
    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mOffset:I

    .line 69
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mVersion:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .local v0, "len":I
    if-lez v0, :cond_13

    .line 110
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    .line 111
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 114
    :cond_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mCommandId:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mOffset:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    if-lez v0, :cond_32

    .line 119
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    .line 120
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 122
    :cond_32
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 90
    iget v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 94
    iget v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mCommandId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    if-eqz v0, :cond_31

    array-length v1, v0

    if-nez v1, :cond_27

    goto :goto_31

    .line 101
    :cond_27
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 103
    return-void

    .line 98
    :cond_31
    :goto_31
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void
.end method
