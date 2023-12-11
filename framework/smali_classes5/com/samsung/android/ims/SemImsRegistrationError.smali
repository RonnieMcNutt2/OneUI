.class public Lcom/samsung/android/ims/SemImsRegistrationError;
.super Ljava/lang/Object;
.source "SemImsRegistrationError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/ims/SemImsRegistrationError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeregistrationReason:I

.field private mDetailedDeregiReason:I

.field private mSipErrorCode:I

.field private mSipErrorReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 132
    new-instance v0, Lcom/samsung/android/ims/SemImsRegistrationError$1;

    invoke-direct {v0}, Lcom/samsung/android/ims/SemImsRegistrationError$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ims/SemImsRegistrationError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorCode:I

    .line 42
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    .line 43
    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDetailedDeregiReason:I

    .line 44
    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDeregistrationReason:I

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "sipErrorCode"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorCode:I

    .line 52
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .registers 5
    .param p1, "sipErrorCode"    # I
    .param p2, "sipErrorReason"    # Ljava/lang/String;
    .param p3, "detailedDeregiReason"    # I
    .param p4, "deregistrationReason"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorCode:I

    .line 59
    iput-object p2, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    .line 60
    iput p3, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDetailedDeregiReason:I

    .line 61
    iput p4, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDeregistrationReason:I

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorCode:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDetailedDeregiReason:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDeregistrationReason:I

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/ims/SemImsRegistrationError-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/ims/SemImsRegistrationError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getDeregistrationReason()I
    .registers 2

    .line 121
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDeregistrationReason:I

    return v0
.end method

.method public getDetailedDeregiReason()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDetailedDeregiReason:I

    return v0
.end method

.method public getSipErrorCode()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorCode:I

    return v0
.end method

.method public getSipErrorReason()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDetailedDeregiReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDeregistrationReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return-void
.end method
