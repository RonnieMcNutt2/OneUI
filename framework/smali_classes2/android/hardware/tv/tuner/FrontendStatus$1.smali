.class Landroid/hardware/tv/tuner/FrontendStatus$1;
.super Ljava/lang/Object;
.source "FrontendStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/FrontendStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/tv/tuner/FrontendStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 791
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/FrontendStatus-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 788
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/tuner/FrontendStatus;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 795
    new-array v0, p1, [Landroid/hardware/tv/tuner/FrontendStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 788
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendStatus$1;->newArray(I)[Landroid/hardware/tv/tuner/FrontendStatus;

    move-result-object p1

    return-object p1
.end method
