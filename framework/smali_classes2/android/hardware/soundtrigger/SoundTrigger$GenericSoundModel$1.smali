.class Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel$1;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 885
    invoke-static {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->-$$Nest$smfromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 883
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .registers 3
    .param p1, "size"    # I

    .line 889
    new-array v0, p1, [Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 883
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel$1;->newArray(I)[Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object p1

    return-object p1
.end method
