.class public Lcom/samsung/android/knox/mpos/TACommandResponse;
.super Ljava/lang/Object;
.source "TACommandResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/mpos/TACommandResponse;",
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

    .line 47
    new-instance v0, Lcom/samsung/android/knox/mpos/TACommandResponse$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/mpos/TACommandResponse$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/mpos/TACommandResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponseCode:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponse:[B

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B)V
    .registers 5
    .param p1, "responseId"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "response"    # [B

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponseCode:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponse:[B

    .line 41
    iput p1, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponseCode:I

    .line 42
    iput-object p2, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponse:[B

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponseCode:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponse:[B

    .line 60
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/mpos/TACommandResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/mpos/TACommandResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/mpos/TACommandResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public dump()V
    .registers 1

    .line 132
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponseCode:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .local v0, "len":I
    if-lez v0, :cond_19

    .line 81
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponse:[B

    .line 82
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 84
    :cond_19
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 66
    iget v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponse:[B

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    array-length v0, v0

    .line 69
    .local v0, "len":I
    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    if-lez v0, :cond_1b

    .line 71
    iget-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponse:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 73
    :cond_1b
    return-void
.end method
