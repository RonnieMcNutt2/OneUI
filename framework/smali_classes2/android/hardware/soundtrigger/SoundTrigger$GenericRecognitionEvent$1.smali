.class Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent$1;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2089
    invoke-static {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->-$$Nest$smfromParcelForGeneric(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 2087
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    .registers 3
    .param p1, "size"    # I

    .line 2093
    new-array v0, p1, [Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 2087
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent$1;->newArray(I)[Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    move-result-object p1

    return-object p1
.end method
