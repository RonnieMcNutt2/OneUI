.class Landroid/media/audio/common/AudioUuid$1;
.super Ljava/lang/Object;
.source "AudioUuid.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/AudioUuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/audio/common/AudioUuid;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/AudioUuid;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 18
    new-instance v0, Landroid/media/audio/common/AudioUuid;

    invoke-direct {v0}, Landroid/media/audio/common/AudioUuid;-><init>()V

    .line 19
    .local v0, "_aidl_out":Landroid/media/audio/common/AudioUuid;
    invoke-virtual {v0, p1}, Landroid/media/audio/common/AudioUuid;->readFromParcel(Landroid/os/Parcel;)V

    .line 20
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioUuid$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/AudioUuid;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/audio/common/AudioUuid;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 24
    new-array v0, p1, [Landroid/media/audio/common/AudioUuid;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioUuid$1;->newArray(I)[Landroid/media/audio/common/AudioUuid;

    move-result-object p1

    return-object p1
.end method
