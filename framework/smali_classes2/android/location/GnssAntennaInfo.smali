.class public final Landroid/location/GnssAntennaInfo;
.super Ljava/lang/Object;
.source "GnssAntennaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssAntennaInfo$PhaseCenterOffset;,
        Landroid/location/GnssAntennaInfo$SphericalCorrections;,
        Landroid/location/GnssAntennaInfo$Builder;,
        Landroid/location/GnssAntennaInfo$Listener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssAntennaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCarrierFrequencyMHz:D

.field private final mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

.field private final mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

.field private final mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCarrierFrequencyMHz(Landroid/location/GnssAntennaInfo;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAntennaInfo;->mCarrierFrequencyMHz:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmPhaseCenterOffset(Landroid/location/GnssAntennaInfo;)Landroid/location/GnssAntennaInfo$PhaseCenterOffset;
    .registers 1

    iget-object p0, p0, Landroid/location/GnssAntennaInfo;->mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhaseCenterVariationCorrections(Landroid/location/GnssAntennaInfo;)Landroid/location/GnssAntennaInfo$SphericalCorrections;
    .registers 1

    iget-object p0, p0, Landroid/location/GnssAntennaInfo;->mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSignalGainCorrections(Landroid/location/GnssAntennaInfo;)Landroid/location/GnssAntennaInfo$SphericalCorrections;
    .registers 1

    iget-object p0, p0, Landroid/location/GnssAntennaInfo;->mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 520
    new-instance v0, Landroid/location/GnssAntennaInfo$1;

    invoke-direct {v0}, Landroid/location/GnssAntennaInfo$1;-><init>()V

    sput-object v0, Landroid/location/GnssAntennaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(DLandroid/location/GnssAntennaInfo$PhaseCenterOffset;Landroid/location/GnssAntennaInfo$SphericalCorrections;Landroid/location/GnssAntennaInfo$SphericalCorrections;)V
    .registers 7
    .param p1, "carrierFrequencyMHz"    # D
    .param p3, "phaseCenterOffset"    # Landroid/location/GnssAntennaInfo$PhaseCenterOffset;
    .param p4, "phaseCenterVariationCorrections"    # Landroid/location/GnssAntennaInfo$SphericalCorrections;
    .param p5, "signalGainCorrectionDbi"    # Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-wide p1, p0, Landroid/location/GnssAntennaInfo;->mCarrierFrequencyMHz:D

    .line 386
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    iput-object v0, p0, Landroid/location/GnssAntennaInfo;->mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    .line 387
    iput-object p4, p0, Landroid/location/GnssAntennaInfo;->mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 388
    iput-object p5, p0, Landroid/location/GnssAntennaInfo;->mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 389
    return-void
.end method

.method synthetic constructor <init>(DLandroid/location/GnssAntennaInfo$PhaseCenterOffset;Landroid/location/GnssAntennaInfo$SphericalCorrections;Landroid/location/GnssAntennaInfo$SphericalCorrections;Landroid/location/GnssAntennaInfo-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/location/GnssAntennaInfo;-><init>(DLandroid/location/GnssAntennaInfo$PhaseCenterOffset;Landroid/location/GnssAntennaInfo$SphericalCorrections;Landroid/location/GnssAntennaInfo$SphericalCorrections;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 569
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 570
    return v0

    .line 572
    :cond_4
    instance-of v1, p1, Landroid/location/GnssAntennaInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 573
    return v2

    .line 575
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/location/GnssAntennaInfo;

    .line 576
    .local v1, "that":Landroid/location/GnssAntennaInfo;
    iget-wide v3, v1, Landroid/location/GnssAntennaInfo;->mCarrierFrequencyMHz:D

    iget-wide v5, p0, Landroid/location/GnssAntennaInfo;->mCarrierFrequencyMHz:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, p0, Landroid/location/GnssAntennaInfo;->mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    iget-object v4, v1, Landroid/location/GnssAntennaInfo;->mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    .line 577
    invoke-virtual {v3, v4}, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/location/GnssAntennaInfo;->mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    iget-object v4, v1, Landroid/location/GnssAntennaInfo;->mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 578
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/location/GnssAntennaInfo;->mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    iget-object v4, v1, Landroid/location/GnssAntennaInfo;->mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 580
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v2

    .line 576
    :goto_37
    return v0
.end method

.method public getCarrierFrequencyMHz()D
    .registers 3

    .line 484
    iget-wide v0, p0, Landroid/location/GnssAntennaInfo;->mCarrierFrequencyMHz:D

    return-wide v0
.end method

.method public getPhaseCenterOffset()Landroid/location/GnssAntennaInfo$PhaseCenterOffset;
    .registers 2

    .line 495
    iget-object v0, p0, Landroid/location/GnssAntennaInfo;->mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    return-object v0
.end method

.method public getPhaseCenterVariationCorrections()Landroid/location/GnssAntennaInfo$SphericalCorrections;
    .registers 2

    .line 506
    iget-object v0, p0, Landroid/location/GnssAntennaInfo;->mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    return-object v0
.end method

.method public getSignalGainCorrections()Landroid/location/GnssAntennaInfo$SphericalCorrections;
    .registers 2

    .line 517
    iget-object v0, p0, Landroid/location/GnssAntennaInfo;->mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 585
    iget-wide v0, p0, Landroid/location/GnssAntennaInfo;->mCarrierFrequencyMHz:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Landroid/location/GnssAntennaInfo;->mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    iget-object v2, p0, Landroid/location/GnssAntennaInfo;->mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    iget-object v3, p0, Landroid/location/GnssAntennaInfo;->mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GnssAntennaInfo{CarrierFrequencyMHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/GnssAntennaInfo;->mCarrierFrequencyMHz:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PhaseCenterOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/GnssAntennaInfo;->mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PhaseCenterVariationCorrections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/GnssAntennaInfo;->mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SignalGainCorrections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/GnssAntennaInfo;->mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 551
    iget-wide v0, p0, Landroid/location/GnssAntennaInfo;->mCarrierFrequencyMHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 552
    iget-object v0, p0, Landroid/location/GnssAntennaInfo;->mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 553
    iget-object v0, p0, Landroid/location/GnssAntennaInfo;->mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 554
    iget-object v0, p0, Landroid/location/GnssAntennaInfo;->mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 555
    return-void
.end method
