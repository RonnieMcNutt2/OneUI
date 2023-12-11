.class public Lcom/samsung/android/bio/face/SemBioFace;
.super Ljava/lang/Object;
.source "SemBioFace.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/bio/face/SemBioFace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeviceId:J

.field private mFaceId:I

.field private mGroupId:I

.field private mName:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 124
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFace$1;

    invoke-direct {v0}, Lcom/samsung/android/bio/face/SemBioFace$1;-><init>()V

    sput-object v0, Lcom/samsung/android/bio/face/SemBioFace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/face/Face;)V
    .registers 4
    .param p1, "face"    # Landroid/hardware/face/Face;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/hardware/face/Face;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mName:Ljava/lang/CharSequence;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mGroupId:I

    .line 48
    invoke-virtual {p1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mFaceId:I

    .line 49
    invoke-virtual {p1}, Landroid/hardware/face/Face;->getDeviceId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mDeviceId:J

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mName:Ljava/lang/CharSequence;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mGroupId:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mFaceId:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mDeviceId:J

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/bio/face/SemBioFace-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFace;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IIJ)V
    .registers 6
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "groupId"    # I
    .param p3, "faceId"    # I
    .param p4, "deviceId"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFace;->mName:Ljava/lang/CharSequence;

    .line 37
    iput p2, p0, Lcom/samsung/android/bio/face/SemBioFace;->mGroupId:I

    .line 38
    iput p3, p0, Lcom/samsung/android/bio/face/SemBioFace;->mFaceId:I

    .line 39
    iput-wide p4, p0, Lcom/samsung/android/bio/face/SemBioFace;->mDeviceId:J

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()J
    .registers 3

    .line 99
    iget-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mDeviceId:J

    return-wide v0
.end method

.method public getFaceId()I
    .registers 2

    .line 80
    iget v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mFaceId:I

    return v0
.end method

.method public getGroupId()I
    .registers 2

    .line 90
    iget v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mGroupId:I

    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 115
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mFaceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mDeviceId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    return-void
.end method
