.class Lcom/samsung/android/allshare/EventTouch;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/allshare/EventTouch;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAccelLevel:I

.field public mDX:I

.field public mDY:I

.field public mDegree:I

.field public mDistance:I

.field public mFingerId:I

.field public mStr:Ljava/lang/String;

.field public mType:I

.field public mX:I

.field public mY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1677
    new-instance v0, Lcom/samsung/android/allshare/EventTouch$1;

    invoke-direct {v0}, Lcom/samsung/android/allshare/EventTouch$1;-><init>()V

    sput-object v0, Lcom/samsung/android/allshare/EventTouch;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 1658
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1664
    iget v0, p0, Lcom/samsung/android/allshare/EventTouch;->mX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1665
    iget v0, p0, Lcom/samsung/android/allshare/EventTouch;->mY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1666
    iget v0, p0, Lcom/samsung/android/allshare/EventTouch;->mDX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1667
    iget v0, p0, Lcom/samsung/android/allshare/EventTouch;->mDY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1668
    iget v0, p0, Lcom/samsung/android/allshare/EventTouch;->mAccelLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1669
    iget v0, p0, Lcom/samsung/android/allshare/EventTouch;->mFingerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1670
    iget v0, p0, Lcom/samsung/android/allshare/EventTouch;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1671
    iget v0, p0, Lcom/samsung/android/allshare/EventTouch;->mDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1672
    iget v0, p0, Lcom/samsung/android/allshare/EventTouch;->mDegree:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1674
    iget-object v0, p0, Lcom/samsung/android/allshare/EventTouch;->mStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1675
    return-void
.end method
