.class public final Lcom/samsung/android/camera/iris/Iris;
.super Ljava/lang/Object;
.source "Iris.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/camera/iris/Iris;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeviceId:J

.field private mGroupId:I

.field private mIrisId:I

.field private mName:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Lcom/samsung/android/camera/iris/Iris$1;

    invoke-direct {v0}, Lcom/samsung/android/camera/iris/Iris$1;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/iris/Iris;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/iris/Iris;->mName:Ljava/lang/CharSequence;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/iris/Iris;->mGroupId:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/iris/Iris;->mIrisId:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/camera/iris/Iris;->mDeviceId:J

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/camera/iris/Iris-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/Iris;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IIJ)V
    .registers 6
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "groupId"    # I
    .param p3, "irisId"    # I
    .param p4, "deviceId"    # J

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/camera/iris/Iris;->mName:Ljava/lang/CharSequence;

    .line 34
    iput p2, p0, Lcom/samsung/android/camera/iris/Iris;->mGroupId:I

    .line 35
    iput p3, p0, Lcom/samsung/android/camera/iris/Iris;->mIrisId:I

    .line 36
    iput-wide p4, p0, Lcom/samsung/android/camera/iris/Iris;->mDeviceId:J

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()J
    .registers 3

    .line 79
    iget-wide v0, p0, Lcom/samsung/android/camera/iris/Iris;->mDeviceId:J

    return-wide v0
.end method

.method public getGroupId()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/samsung/android/camera/iris/Iris;->mGroupId:I

    return v0
.end method

.method public getIrisId()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/samsung/android/camera/iris/Iris;->mIrisId:I

    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/samsung/android/camera/iris/Iris;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    iget-object v0, p0, Lcom/samsung/android/camera/iris/Iris;->mName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lcom/samsung/android/camera/iris/Iris;->mGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Lcom/samsung/android/camera/iris/Iris;->mIrisId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-wide v0, p0, Lcom/samsung/android/camera/iris/Iris;->mDeviceId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    return-void
.end method
