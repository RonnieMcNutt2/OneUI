.class public Landroid/system/suspend/internal/SuspendInfo;
.super Ljava/lang/Object;
.source "SuspendInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/suspend/internal/SuspendInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public backoffContinueCount:J

.field public failedSuspendCount:J

.field public failedSuspendOverheadTimeMillis:J

.field public newBackoffCount:J

.field public shortSuspendCount:J

.field public shortSuspendTimeMillis:J

.field public sleepTimeMillis:J

.field public suspendAttemptCount:J

.field public suspendOverheadTimeMillis:J

.field public suspendTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Landroid/system/suspend/internal/SuspendInfo$1;

    invoke-direct {v0}, Landroid/system/suspend/internal/SuspendInfo$1;-><init>()V

    sput-object v0, Landroid/system/suspend/internal/SuspendInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendAttemptCount:J

    .line 10
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->failedSuspendCount:J

    .line 15
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->shortSuspendCount:J

    .line 17
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendTimeMillis:J

    .line 19
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->shortSuspendTimeMillis:J

    .line 21
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendOverheadTimeMillis:J

    .line 23
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->failedSuspendOverheadTimeMillis:J

    .line 28
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->newBackoffCount:J

    .line 33
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->backoffContinueCount:J

    .line 35
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->sleepTimeMillis:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "_mask":I
    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 70
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 72
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_13a

    .line 73
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_138

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 95
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendAttemptCount:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_138

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 95
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->failedSuspendCount:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_138

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 95
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->shortSuspendCount:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_138

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 95
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendTimeMillis:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_138

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 95
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->shortSuspendTimeMillis:J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_138

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void

    .line 95
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendOverheadTimeMillis:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_138

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    return-void

    .line 95
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->failedSuspendOverheadTimeMillis:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_138

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    return-void

    .line 95
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->newBackoffCount:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_138

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 89
    return-void

    .line 95
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_106
    :try_start_106
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->backoffContinueCount:J

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_138

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_122

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11c

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    return-void

    .line 95
    :cond_11c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_122
    :try_start_122
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->sleepTimeMillis:J
    :try_end_128
    .catchall {:try_start_122 .. :try_end_128} :catchall_138

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_132

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    nop

    .line 99
    return-void

    .line 95
    :cond_132
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :catchall_138
    move-exception v2

    goto :goto_142

    .line 72
    :cond_13a
    :try_start_13a
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/system/suspend/internal/SuspendInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_142
    .catchall {:try_start_13a .. :try_end_142} :catchall_138

    .line 94
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/system/suspend/internal/SuspendInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_142
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_14b

    .line 95
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_14b
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 51
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendAttemptCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->failedSuspendCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->shortSuspendCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 56
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->shortSuspendTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendOverheadTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->failedSuspendOverheadTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->newBackoffCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->backoffContinueCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 61
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->sleepTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 63
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void
.end method
