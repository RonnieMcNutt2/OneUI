.class Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint$1;
.super Ljava/lang/Object;
.source "AudioHalVolumeCurve.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 109
    new-instance v0, Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;

    invoke-direct {v0}, Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;-><init>()V

    .line 110
    .local v0, "_aidl_out":Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;
    invoke-virtual {v0, p1}, Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;->readFromParcel(Landroid/os/Parcel;)V

    .line 111
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 115
    new-array v0, p1, [Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint$1;->newArray(I)[Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;

    move-result-object p1

    return-object p1
.end method
