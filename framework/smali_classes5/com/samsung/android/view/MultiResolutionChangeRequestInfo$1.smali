.class Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$1;
.super Ljava/lang/Object;
.source "MultiResolutionChangeRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 182
    new-instance v0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;

    invoke-direct {v0}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;-><init>()V

    .line 183
    .local v0, "data":Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;
    invoke-virtual {v0, p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 184
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 180
    invoke-virtual {p0, p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;
    .registers 3
    .param p1, "size"    # I

    .line 188
    new-array v0, p1, [Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 180
    invoke-virtual {p0, p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$1;->newArray(I)[Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;

    move-result-object p1

    return-object p1
.end method
