.class public Lcom/samsung/android/media/VideoInfoParcel;
.super Ljava/lang/Object;
.source "VideoInfoParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/media/VideoInfoParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bitrate:I

.field public componentName:Ljava/lang/String;

.field public frameRate:I

.field public height:I

.field public isEncoder:Z

.field public isSWCodec:Z

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lcom/samsung/android/media/VideoInfoParcel$1;

    invoke-direct {v0}, Lcom/samsung/android/media/VideoInfoParcel$1;-><init>()V

    sput-object v0, Lcom/samsung/android/media/VideoInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/VideoInfoParcel;->width:I

    .line 15
    iput v0, p0, Lcom/samsung/android/media/VideoInfoParcel;->height:I

    .line 17
    iput v0, p0, Lcom/samsung/android/media/VideoInfoParcel;->frameRate:I

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/media/VideoInfoParcel;->isSWCodec:Z

    .line 21
    iput-boolean v0, p0, Lcom/samsung/android/media/VideoInfoParcel;->isEncoder:Z

    .line 24
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/media/VideoInfoParcel;->componentName:Ljava/lang/String;

    .line 27
    iput v0, p0, Lcom/samsung/android/media/VideoInfoParcel;->bitrate:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "_mask":I
    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 59
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_e6

    .line 62
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_e4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 78
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/media/VideoInfoParcel;->width:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_e4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 78
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/media/VideoInfoParcel;->height:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_e4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 78
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/media/VideoInfoParcel;->frameRate:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_e4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 78
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/media/VideoInfoParcel;->isSWCodec:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_e4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 78
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/media/VideoInfoParcel;->isEncoder:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_e4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 78
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/media/VideoInfoParcel;->componentName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_e4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 78
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/media/VideoInfoParcel;->bitrate:I
    :try_end_d4
    .catchall {:try_start_ce .. :try_end_d4} :catchall_e4

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_de

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    nop

    .line 82
    return-void

    .line 78
    :cond_de
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :catchall_e4
    move-exception v2

    goto :goto_ee

    .line 61
    :cond_e6
    :try_start_e6
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Lcom/samsung/android/media/VideoInfoParcel;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_ee
    .catchall {:try_start_e6 .. :try_end_ee} :catchall_e4

    .line 77
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Lcom/samsung/android/media/VideoInfoParcel;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_ee
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_f7

    .line 78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_f7
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 43
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v1, p0, Lcom/samsung/android/media/VideoInfoParcel;->width:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v1, p0, Lcom/samsung/android/media/VideoInfoParcel;->height:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v1, p0, Lcom/samsung/android/media/VideoInfoParcel;->frameRate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-boolean v1, p0, Lcom/samsung/android/media/VideoInfoParcel;->isSWCodec:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 48
    iget-boolean v1, p0, Lcom/samsung/android/media/VideoInfoParcel;->isEncoder:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 49
    iget-object v1, p0, Lcom/samsung/android/media/VideoInfoParcel;->componentName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget v1, p0, Lcom/samsung/android/media/VideoInfoParcel;->bitrate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 52
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void
.end method
