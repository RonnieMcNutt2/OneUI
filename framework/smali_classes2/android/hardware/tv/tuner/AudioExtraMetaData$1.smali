.class Landroid/hardware/tv/tuner/AudioExtraMetaData$1;
.super Ljava/lang/Object;
.source "AudioExtraMetaData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/AudioExtraMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/tv/tuner/AudioExtraMetaData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/tuner/AudioExtraMetaData;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 19
    new-instance v0, Landroid/hardware/tv/tuner/AudioExtraMetaData;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/AudioExtraMetaData;-><init>()V

    .line 20
    .local v0, "_aidl_out":Landroid/hardware/tv/tuner/AudioExtraMetaData;
    invoke-virtual {v0, p1}, Landroid/hardware/tv/tuner/AudioExtraMetaData;->readFromParcel(Landroid/os/Parcel;)V

    .line 21
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/AudioExtraMetaData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/tuner/AudioExtraMetaData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/tv/tuner/AudioExtraMetaData;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 25
    new-array v0, p1, [Landroid/hardware/tv/tuner/AudioExtraMetaData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/AudioExtraMetaData$1;->newArray(I)[Landroid/hardware/tv/tuner/AudioExtraMetaData;

    move-result-object p1

    return-object p1
.end method
