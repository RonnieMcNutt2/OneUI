.class Landroid/hardware/soundtrigger/KeyphraseMetadata$1;
.super Ljava/lang/Object;
.source "KeyphraseMetadata.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/KeyphraseMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/soundtrigger/KeyphraseMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 202
    new-instance v0, Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-direct {v0, p1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 194
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/KeyphraseMetadata$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .registers 3
    .param p1, "size"    # I

    .line 197
    new-array v0, p1, [Landroid/hardware/soundtrigger/KeyphraseMetadata;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 194
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/KeyphraseMetadata$1;->newArray(I)[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object p1

    return-object p1
.end method
