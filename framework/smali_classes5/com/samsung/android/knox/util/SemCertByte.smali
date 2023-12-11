.class public Lcom/samsung/android/knox/util/SemCertByte;
.super Ljava/lang/Object;
.source "SemCertByte.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/util/SemCertByte;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public caCertBytes:[B

.field public caSize:I

.field public certBytes:[B

.field public certsize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 87
    new-instance v0, Lcom/samsung/android/knox/util/SemCertByte$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/util/SemCertByte$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/util/SemCertByte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->certsize:I

    .line 54
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->certBytes:[B

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/util/SemCertByte;->readByteArray(Landroid/os/Parcel;[B)V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->caSize:I

    .line 58
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->caCertBytes:[B

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/util/SemCertByte;->readByteArray(Landroid/os/Parcel;[B)V

    .line 61
    return-void
.end method

.method private final readByteArray(Landroid/os/Parcel;[B)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "val"    # [B

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 79
    .local v0, "ba":[B
    array-length v1, v0

    array-length v2, p2

    if-ne v1, v2, :cond_e

    .line 80
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    return-void

    .line 82
    :cond_e
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 70
    iget v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->certsize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->certBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 72
    iget v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->caSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->caCertBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 74
    return-void
.end method
