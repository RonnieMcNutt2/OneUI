.class Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys$1;
.super Ljava/lang/Object;
.source "PhraseRecognitionEventSys.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 29
    new-instance v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;-><init>()V

    .line 30
    .local v0, "_aidl_out":Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;
    invoke-virtual {v0, p1}, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->readFromParcel(Landroid/os/Parcel;)V

    .line 31
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 35
    new-array v0, p1, [Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys$1;->newArray(I)[Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;

    move-result-object p1

    return-object p1
.end method
