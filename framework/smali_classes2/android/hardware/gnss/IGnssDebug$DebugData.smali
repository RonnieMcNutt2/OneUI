.class public Landroid/hardware/gnss/IGnssDebug$DebugData;
.super Ljava/lang/Object;
.source "IGnssDebug.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnssDebug$DebugData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public position:Landroid/hardware/gnss/IGnssDebug$PositionDebug;

.field public satelliteDataArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/gnss/IGnssDebug$SatelliteData;",
            ">;"
        }
    .end annotation
.end field

.field public time:Landroid/hardware/gnss/IGnssDebug$TimeDebug;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 456
    new-instance v0, Landroid/hardware/gnss/IGnssDebug$DebugData$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssDebug$DebugData$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnssDebug$DebugData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 6
    .param p1, "_v"    # Ljava/lang/Object;

    .line 508
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 509
    :cond_4
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_21

    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "_mask":I
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 512
    .local v2, "o":Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/hardware/gnss/IGnssDebug$DebugData;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v0, v3

    .line 513
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_10

    .line 514
    :cond_20
    return v0

    .line 516
    .end local v0    # "_mask":I
    :cond_21
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_2d

    .line 517
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 519
    :cond_2d
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/gnss/IGnssDebug$DebugData;->position:Landroid/hardware/gnss/IGnssDebug$PositionDebug;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/IGnssDebug$DebugData;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 503
    iget-object v1, p0, Landroid/hardware/gnss/IGnssDebug$DebugData;->time:Landroid/hardware/gnss/IGnssDebug$TimeDebug;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/IGnssDebug$DebugData;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 504
    iget-object v1, p0, Landroid/hardware/gnss/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/List;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/IGnssDebug$DebugData;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 505
    return v0
.end method

.method public final getStability()I
    .registers 2

    .line 455
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 483
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 485
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_80

    .line 486
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_7e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 493
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 496
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 486
    return-void

    .line 494
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 487
    :cond_26
    :try_start_26
    sget-object v2, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/IGnssDebug$PositionDebug;

    iput-object v2, p0, Landroid/hardware/gnss/IGnssDebug$DebugData;->position:Landroid/hardware/gnss/IGnssDebug$PositionDebug;

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_7e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 493
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 496
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 488
    return-void

    .line 494
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 489
    :cond_46
    :try_start_46
    sget-object v2, Landroid/hardware/gnss/IGnssDebug$TimeDebug;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/IGnssDebug$TimeDebug;

    iput-object v2, p0, Landroid/hardware/gnss/IGnssDebug$DebugData;->time:Landroid/hardware/gnss/IGnssDebug$TimeDebug;

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_7e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_66

    .line 493
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_60

    .line 496
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 490
    return-void

    .line 494
    :cond_60
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 491
    :cond_66
    :try_start_66
    sget-object v2, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/gnss/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/List;
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_7e

    .line 493
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 496
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 497
    nop

    .line 498
    return-void

    .line 494
    :cond_78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 493
    :catchall_7e
    move-exception v2

    goto :goto_88

    .line 485
    :cond_80
    :try_start_80
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/IGnssDebug$DebugData;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_88
    .catchall {:try_start_80 .. :try_end_88} :catchall_7e

    .line 493
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssDebug$DebugData;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_88
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_91

    .line 494
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 496
    :cond_91
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 497
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 471
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    iget-object v1, p0, Landroid/hardware/gnss/IGnssDebug$DebugData;->position:Landroid/hardware/gnss/IGnssDebug$PositionDebug;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 473
    iget-object v1, p0, Landroid/hardware/gnss/IGnssDebug$DebugData;->time:Landroid/hardware/gnss/IGnssDebug$TimeDebug;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 474
    iget-object v1, p0, Landroid/hardware/gnss/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 476
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 477
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 479
    return-void
.end method
