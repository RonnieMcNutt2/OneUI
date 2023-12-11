.class public Lcom/samsung/android/knox/knoxai/TaProcessBuffer;
.super Ljava/lang/Object;
.source "TaProcessBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;,
        Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/knoxai/TaProcessBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buffer:[B

.field private processBufferType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->readFromParcel(Landroid/os/Parcel;)V

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/knoxai/TaProcessBuffer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getBuffer()[B
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->buffer:[B

    return-object v0
.end method

.method public getBufferLength()I
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->buffer:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    array-length v0, v0

    :goto_7
    return v0
.end method

.method public getProcessBufferType()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->processBufferType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->processBufferType:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->buffer:[B

    .line 96
    return-void
.end method

.method public setBuffer([B)V
    .registers 2
    .param p1, "buffer"    # [B

    .line 75
    iput-object p1, p0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->buffer:[B

    .line 76
    return-void
.end method

.method public setProcessBufferType(Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;)V
    .registers 3
    .param p1, "type"    # Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    .line 67
    invoke-virtual {p1}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->processBufferType:I

    .line 68
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 88
    iget v0, p0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->processBufferType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->buffer:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 90
    return-void
.end method
