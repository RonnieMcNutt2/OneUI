.class Lcom/samsung/android/allshare/NetworkSocketInfo;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/allshare/NetworkSocketInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDeviceClass:Ljava/lang/String;

.field public mIpAddress:Ljava/lang/String;

.field public mMacAddr:Ljava/lang/String;

.field public mPort:I

.field public mProtocol:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1509
    new-instance v0, Lcom/samsung/android/allshare/NetworkSocketInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/allshare/NetworkSocketInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/allshare/NetworkSocketInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 1497
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .line 1502
    iget v0, p0, Lcom/samsung/android/allshare/NetworkSocketInfo;->mProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1503
    iget-object v0, p0, Lcom/samsung/android/allshare/NetworkSocketInfo;->mIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1504
    iget v0, p0, Lcom/samsung/android/allshare/NetworkSocketInfo;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1505
    iget-object v0, p0, Lcom/samsung/android/allshare/NetworkSocketInfo;->mDeviceClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1506
    iget-object v0, p0, Lcom/samsung/android/allshare/NetworkSocketInfo;->mMacAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1507
    return-void
.end method
