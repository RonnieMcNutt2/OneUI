.class Landroid/media/audio/common/AudioOffloadInfo$1;
.super Ljava/lang/Object;
.source "AudioOffloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/AudioOffloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/audio/common/AudioOffloadInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/AudioOffloadInfo;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 25
    new-instance v0, Landroid/media/audio/common/AudioOffloadInfo;

    invoke-direct {v0}, Landroid/media/audio/common/AudioOffloadInfo;-><init>()V

    .line 26
    .local v0, "_aidl_out":Landroid/media/audio/common/AudioOffloadInfo;
    invoke-virtual {v0, p1}, Landroid/media/audio/common/AudioOffloadInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 27
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 22
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioOffloadInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/AudioOffloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/audio/common/AudioOffloadInfo;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 31
    new-array v0, p1, [Landroid/media/audio/common/AudioOffloadInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 22
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioOffloadInfo$1;->newArray(I)[Landroid/media/audio/common/AudioOffloadInfo;

    move-result-object p1

    return-object p1
.end method
