.class public Lcom/samsung/android/media/ResourceInfoParcel;
.super Ljava/lang/Object;
.source "ResourceInfoParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/media/ResourceInfoParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bitrate:I

.field public clientId:J

.field public codecName:Ljava/lang/String;

.field public frameRate:I

.field public height:I

.field public isEncoder:I

.field public isSWCodec:I

.field public pid:I

.field public state:I

.field public subType:I

.field public type:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/samsung/android/media/ResourceInfoParcel$1;

    invoke-direct {v0}, Lcom/samsung/android/media/ResourceInfoParcel$1;-><init>()V

    sput-object v0, Lcom/samsung/android/media/ResourceInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/ResourceInfoParcel;->subType:I

    .line 11
    iput v0, p0, Lcom/samsung/android/media/ResourceInfoParcel;->type:I

    .line 13
    iput v0, p0, Lcom/samsung/android/media/ResourceInfoParcel;->pid:I

    .line 15
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/media/ResourceInfoParcel;->clientId:J

    .line 17
    iput v0, p0, Lcom/samsung/android/media/ResourceInfoParcel;->state:I

    .line 19
    iput v0, p0, Lcom/samsung/android/media/ResourceInfoParcel;->width:I

    .line 21
    iput v0, p0, Lcom/samsung/android/media/ResourceInfoParcel;->height:I

    .line 23
    iput v0, p0, Lcom/samsung/android/media/ResourceInfoParcel;->frameRate:I

    .line 25
    iput v0, p0, Lcom/samsung/android/media/ResourceInfoParcel;->isEncoder:I

    .line 28
    iput v0, p0, Lcom/samsung/android/media/ResourceInfoParcel;->isSWCodec:I

    .line 34
    iput v0, p0, Lcom/samsung/android/media/ResourceInfoParcel;->bitrate:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "_mask":I
    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 71
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_172

    .line 74
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_170

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 102
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 100
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/media/ResourceInfoParcel;->subType:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_170

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 102
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 100
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/media/ResourceInfoParcel;->type:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_170

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 102
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 100
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/media/ResourceInfoParcel;->pid:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_170

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 102
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 100
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/media/ResourceInfoParcel;->clientId:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_170

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 102
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 100
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/media/ResourceInfoParcel;->state:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_170

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 102
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 100
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/media/ResourceInfoParcel;->width:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_170

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 102
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    return-void

    .line 100
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/media/ResourceInfoParcel;->height:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_170

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 102
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    return-void

    .line 100
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/media/ResourceInfoParcel;->frameRate:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_170

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 102
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    return-void

    .line 100
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_106
    :try_start_106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/media/ResourceInfoParcel;->isEncoder:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_170

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_122

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11c

    .line 102
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    return-void

    .line 100
    :cond_11c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_122
    :try_start_122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/media/ResourceInfoParcel;->isSWCodec:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12c
    .catchall {:try_start_122 .. :try_end_12c} :catchall_170

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13e

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_138

    .line 102
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    return-void

    .line 100
    :cond_138
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_13e
    :try_start_13e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/media/ResourceInfoParcel;->codecName:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_148
    .catchall {:try_start_13e .. :try_end_148} :catchall_170

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15a

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_154

    .line 102
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    return-void

    .line 100
    :cond_154
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_15a
    :try_start_15a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/media/ResourceInfoParcel;->bitrate:I
    :try_end_160
    .catchall {:try_start_15a .. :try_end_160} :catchall_170

    .line 99
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_16a

    .line 102
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    nop

    .line 104
    return-void

    .line 100
    :cond_16a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :catchall_170
    move-exception v2

    goto :goto_17a

    .line 73
    :cond_172
    :try_start_172
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Lcom/samsung/android/media/ResourceInfoParcel;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_17a
    .catchall {:try_start_172 .. :try_end_17a} :catchall_170

    .line 99
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Lcom/samsung/android/media/ResourceInfoParcel;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_17a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_183

    .line 100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_183
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 50
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v1, p0, Lcom/samsung/android/media/ResourceInfoParcel;->subType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v1, p0, Lcom/samsung/android/media/ResourceInfoParcel;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v1, p0, Lcom/samsung/android/media/ResourceInfoParcel;->pid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-wide v1, p0, Lcom/samsung/android/media/ResourceInfoParcel;->clientId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    iget v1, p0, Lcom/samsung/android/media/ResourceInfoParcel;->state:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v1, p0, Lcom/samsung/android/media/ResourceInfoParcel;->width:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v1, p0, Lcom/samsung/android/media/ResourceInfoParcel;->height:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v1, p0, Lcom/samsung/android/media/ResourceInfoParcel;->frameRate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v1, p0, Lcom/samsung/android/media/ResourceInfoParcel;->isEncoder:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v1, p0, Lcom/samsung/android/media/ResourceInfoParcel;->isSWCodec:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v1, p0, Lcom/samsung/android/media/ResourceInfoParcel;->codecName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget v1, p0, Lcom/samsung/android/media/ResourceInfoParcel;->bitrate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 64
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void
.end method
