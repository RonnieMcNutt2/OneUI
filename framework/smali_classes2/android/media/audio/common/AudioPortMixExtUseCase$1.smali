.class Landroid/media/audio/common/AudioPortMixExtUseCase$1;
.super Ljava/lang/Object;
.source "AudioPortMixExtUseCase.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/AudioPortMixExtUseCase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/audio/common/AudioPortMixExtUseCase;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/AudioPortMixExtUseCase;
    .registers 4
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 87
    new-instance v0, Landroid/media/audio/common/AudioPortMixExtUseCase;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/audio/common/AudioPortMixExtUseCase;-><init>(Landroid/os/Parcel;Landroid/media/audio/common/AudioPortMixExtUseCase-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioPortMixExtUseCase$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/AudioPortMixExtUseCase;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/audio/common/AudioPortMixExtUseCase;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 91
    new-array v0, p1, [Landroid/media/audio/common/AudioPortMixExtUseCase;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioPortMixExtUseCase$1;->newArray(I)[Landroid/media/audio/common/AudioPortMixExtUseCase;

    move-result-object p1

    return-object p1
.end method
