.class public Landroid/hardware/gnss/GnssPowerStats;
.super Ljava/lang/Object;
.source "GnssPowerStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/GnssPowerStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public elapsedRealtime:Landroid/hardware/gnss/ElapsedRealtime;

.field public multibandAcquisitionModeEnergyMilliJoule:D

.field public multibandTrackingModeEnergyMilliJoule:D

.field public otherModesEnergyMilliJoule:[D

.field public singlebandAcquisitionModeEnergyMilliJoule:D

.field public singlebandTrackingModeEnergyMilliJoule:D

.field public totalEnergyMilliJoule:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Landroid/hardware/gnss/GnssPowerStats$1;

    invoke-direct {v0}, Landroid/hardware/gnss/GnssPowerStats$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/GnssPowerStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/GnssPowerStats;->totalEnergyMilliJoule:D

    .line 10
    iput-wide v0, p0, Landroid/hardware/gnss/GnssPowerStats;->singlebandTrackingModeEnergyMilliJoule:D

    .line 11
    iput-wide v0, p0, Landroid/hardware/gnss/GnssPowerStats;->multibandTrackingModeEnergyMilliJoule:D

    .line 12
    iput-wide v0, p0, Landroid/hardware/gnss/GnssPowerStats;->singlebandAcquisitionModeEnergyMilliJoule:D

    .line 13
    iput-wide v0, p0, Landroid/hardware/gnss/GnssPowerStats;->multibandAcquisitionModeEnergyMilliJoule:D

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 80
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 81
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 83
    :cond_10
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/gnss/GnssPowerStats;->elapsedRealtime:Landroid/hardware/gnss/ElapsedRealtime;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/GnssPowerStats;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 76
    return v0
.end method

.method public final getStability()I
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 48
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 50
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_ea

    .line 51
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void

    .line 67
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_26
    :try_start_26
    sget-object v2, Landroid/hardware/gnss/ElapsedRealtime;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/ElapsedRealtime;

    iput-object v2, p0, Landroid/hardware/gnss/GnssPowerStats;->elapsedRealtime:Landroid/hardware/gnss/ElapsedRealtime;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void

    .line 67
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_46
    :try_start_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssPowerStats;->totalEnergyMilliJoule:D

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 67
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssPowerStats;->singlebandTrackingModeEnergyMilliJoule:D

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 67
    :cond_78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_7e
    :try_start_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssPowerStats;->multibandTrackingModeEnergyMilliJoule:D

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9a

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_94

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 67
    :cond_94
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_9a
    :try_start_9a
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssPowerStats;->singlebandAcquisitionModeEnergyMilliJoule:D

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b6

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b0

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 67
    :cond_b0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_b6
    :try_start_b6
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssPowerStats;->multibandAcquisitionModeEnergyMilliJoule:D

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c0
    .catchall {:try_start_b6 .. :try_end_c0} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d2

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cc

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 67
    :cond_cc
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_d2
    :try_start_d2
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/gnss/GnssPowerStats;->otherModesEnergyMilliJoule:[D
    :try_end_d8
    .catchall {:try_start_d2 .. :try_end_d8} :catchall_e8

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e2

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    nop

    .line 71
    return-void

    .line 67
    :cond_e2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :catchall_e8
    move-exception v2

    goto :goto_f2

    .line 50
    :cond_ea
    :try_start_ea
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/GnssPowerStats;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_f2
    .catchall {:try_start_ea .. :try_end_f2} :catchall_e8

    .line 66
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/GnssPowerStats;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_f2
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_fb

    .line 67
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_fb
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 32
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget-object v1, p0, Landroid/hardware/gnss/GnssPowerStats;->elapsedRealtime:Landroid/hardware/gnss/ElapsedRealtime;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 34
    iget-wide v1, p0, Landroid/hardware/gnss/GnssPowerStats;->totalEnergyMilliJoule:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 35
    iget-wide v1, p0, Landroid/hardware/gnss/GnssPowerStats;->singlebandTrackingModeEnergyMilliJoule:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 36
    iget-wide v1, p0, Landroid/hardware/gnss/GnssPowerStats;->multibandTrackingModeEnergyMilliJoule:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 37
    iget-wide v1, p0, Landroid/hardware/gnss/GnssPowerStats;->singlebandAcquisitionModeEnergyMilliJoule:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 38
    iget-wide v1, p0, Landroid/hardware/gnss/GnssPowerStats;->multibandAcquisitionModeEnergyMilliJoule:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 39
    iget-object v1, p0, Landroid/hardware/gnss/GnssPowerStats;->otherModesEnergyMilliJoule:[D

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 41
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    return-void
.end method
