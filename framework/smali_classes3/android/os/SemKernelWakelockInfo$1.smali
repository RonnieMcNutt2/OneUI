.class Landroid/os/SemKernelWakelockInfo$1;
.super Ljava/lang/Object;
.source "SemKernelWakelockInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SemKernelWakelockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/SemKernelWakelockInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/SemKernelWakelockInfo;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 70
    new-instance v0, Landroid/os/SemKernelWakelockInfo;

    invoke-direct {v0, p1}, Landroid/os/SemKernelWakelockInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 67
    invoke-virtual {p0, p1}, Landroid/os/SemKernelWakelockInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/SemKernelWakelockInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/SemKernelWakelockInfo;
    .registers 3
    .param p1, "size"    # I

    .line 75
    new-array v0, p1, [Landroid/os/SemKernelWakelockInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 67
    invoke-virtual {p0, p1}, Landroid/os/SemKernelWakelockInfo$1;->newArray(I)[Landroid/os/SemKernelWakelockInfo;

    move-result-object p1

    return-object p1
.end method
