.class public Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;
.super Ljava/lang/Object;
.source "MultiResolutionChangeRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallerInfo:Ljava/lang/String;

.field private mDensity:I

.field private mDisplayId:I

.field private mForcedHideCutout:I

.field private mHeight:I

.field private mSaveToSettings:Z

.field private mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fputmForcedHideCutout(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mForcedHideCutout:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 179
    new-instance v0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mForcedHideCutout:I

    .line 46
    return-void
.end method

.method private constructor <init>(IIIIZ)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I
    .param p5, "saveToSettings"    # Z

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mForcedHideCutout:I

    .line 50
    iput p1, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mDisplayId:I

    .line 51
    iput p2, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mWidth:I

    .line 52
    iput p3, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mHeight:I

    .line 53
    iput p4, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mDensity:I

    .line 54
    iput-boolean p5, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mSaveToSettings:Z

    .line 55
    return-void
.end method

.method synthetic constructor <init>(IIIIZLcom/samsung/android/view/MultiResolutionChangeRequestInfo-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;-><init>(IIIIZ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public getCallerInfo()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mCallerInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getDensity()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mDensity:I

    return v0
.end method

.method public getDisplayId()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mDisplayId:I

    return v0
.end method

.method public getForcedHideCutout()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mForcedHideCutout:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mHeight:I

    return v0
.end method

.method public getSaveToSettings()Z
    .registers 2

    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mSaveToSettings:Z

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mWidth:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mDisplayId:I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mWidth:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mHeight:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mDensity:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mSaveToSettings:Z

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mCallerInfo:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mForcedHideCutout:I

    .line 177
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 154
    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-boolean v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mSaveToSettings:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mCallerInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mForcedHideCutout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    return-void
.end method
