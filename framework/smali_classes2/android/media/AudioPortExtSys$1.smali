.class Landroid/media/AudioPortExtSys$1;
.super Ljava/lang/Object;
.source "AudioPortExtSys.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioPortExtSys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/AudioPortExtSys;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioPortExtSys;
    .registers 4
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 102
    new-instance v0, Landroid/media/AudioPortExtSys;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/AudioPortExtSys;-><init>(Landroid/os/Parcel;Landroid/media/AudioPortExtSys-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 99
    invoke-virtual {p0, p1}, Landroid/media/AudioPortExtSys$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioPortExtSys;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/AudioPortExtSys;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 106
    new-array v0, p1, [Landroid/media/AudioPortExtSys;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 99
    invoke-virtual {p0, p1}, Landroid/media/AudioPortExtSys$1;->newArray(I)[Landroid/media/AudioPortExtSys;

    move-result-object p1

    return-object p1
.end method
