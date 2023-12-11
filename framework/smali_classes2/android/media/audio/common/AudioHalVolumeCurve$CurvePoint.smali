.class public Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;
.super Ljava/lang/Object;
.source "AudioHalVolumeCurve.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/AudioHalVolumeCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurvePoint"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_INDEX:B = 0x64t

.field public static final MIN_INDEX:B


# instance fields
.field public attenuationMb:I

.field public index:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 106
    new-instance v0, Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;->index:B

    .line 103
    iput v0, p0, Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;->attenuationMb:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "_mask":I
    return v0
.end method

.method public final getStability()I
    .registers 2

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 132
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_5a

    .line 135
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_58

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 140
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 143
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 135
    return-void

    .line 141
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;->index:B

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_58

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 140
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 143
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 137
    return-void

    .line 141
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;->attenuationMb:I
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_58

    .line 140
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_52

    .line 143
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 144
    nop

    .line 145
    return-void

    .line 141
    :cond_52
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :catchall_58
    move-exception v2

    goto :goto_62

    .line 134
    :cond_5a
    :try_start_5a
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_58

    .line 140
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_62
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_6b

    .line 141
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_6b
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 144
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 121
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-byte v1, p0, Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;->index:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 123
    iget v1, p0, Landroid/media/audio/common/AudioHalVolumeCurve$CurvePoint;->attenuationMb:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 125
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 126
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 128
    return-void
.end method
