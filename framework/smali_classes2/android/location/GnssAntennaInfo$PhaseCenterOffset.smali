.class public final Landroid/location/GnssAntennaInfo$PhaseCenterOffset;
.super Ljava/lang/Object;
.source "GnssAntennaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAntennaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhaseCenterOffset"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssAntennaInfo$PhaseCenterOffset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mOffsetXMm:D

.field private final mOffsetXUncertaintyMm:D

.field private final mOffsetYMm:D

.field private final mOffsetYUncertaintyMm:D

.field private final mOffsetZMm:D

.field private final mOffsetZUncertaintyMm:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset$1;

    invoke-direct {v0}, Landroid/location/GnssAntennaInfo$PhaseCenterOffset$1;-><init>()V

    sput-object v0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .registers 13
    .param p1, "offsetXMm"    # D
    .param p3, "offsetXUncertaintyMm"    # D
    .param p5, "offsetYMm"    # D
    .param p7, "offsetYUncertaintyMm"    # D
    .param p9, "offsetZMm"    # D
    .param p11, "offsetZUncertaintyMm"    # D

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-wide p1, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXMm:D

    .line 72
    iput-wide p5, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYMm:D

    .line 73
    iput-wide p9, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZMm:D

    .line 74
    iput-wide p3, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXUncertaintyMm:D

    .line 75
    iput-wide p7, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYUncertaintyMm:D

    .line 76
    iput-wide p11, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZUncertaintyMm:D

    .line 77
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 179
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 180
    return v0

    .line 182
    :cond_4
    instance-of v1, p1, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 183
    return v2

    .line 185
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    .line 186
    .local v1, "that":Landroid/location/GnssAntennaInfo$PhaseCenterOffset;
    iget-wide v3, v1, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXMm:D

    iget-wide v5, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXMm:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_4a

    iget-wide v3, v1, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXUncertaintyMm:D

    iget-wide v5, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXUncertaintyMm:D

    .line 187
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_4a

    iget-wide v3, v1, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYMm:D

    iget-wide v5, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYMm:D

    .line 188
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_4a

    iget-wide v3, v1, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYUncertaintyMm:D

    iget-wide v5, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYUncertaintyMm:D

    .line 189
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_4a

    iget-wide v3, v1, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZMm:D

    iget-wide v5, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZMm:D

    .line 190
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_4a

    iget-wide v3, v1, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZUncertaintyMm:D

    iget-wide v5, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZUncertaintyMm:D

    .line 191
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v2

    .line 186
    :goto_4b
    return v0
.end method

.method public getXOffsetMm()D
    .registers 3

    .line 105
    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXMm:D

    return-wide v0
.end method

.method public getXOffsetUncertaintyMm()D
    .registers 3

    .line 114
    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXUncertaintyMm:D

    return-wide v0
.end method

.method public getYOffsetMm()D
    .registers 3

    .line 123
    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYMm:D

    return-wide v0
.end method

.method public getYOffsetUncertaintyMm()D
    .registers 3

    .line 132
    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYUncertaintyMm:D

    return-wide v0
.end method

.method public getZOffsetMm()D
    .registers 3

    .line 141
    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZMm:D

    return-wide v0
.end method

.method public getZOffsetUncertaintyMm()D
    .registers 3

    .line 150
    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZUncertaintyMm:D

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    .line 196
    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXMm:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYMm:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZMm:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhaseCenterOffset{OffsetXMm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXMm:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " +/-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXUncertaintyMm:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", OffsetYMm="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYMm:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYUncertaintyMm:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", OffsetZMm="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZMm:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZUncertaintyMm:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

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
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 160
    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXMm:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 161
    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXUncertaintyMm:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 162
    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYMm:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 163
    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYUncertaintyMm:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 164
    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZMm:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 165
    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZUncertaintyMm:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 166
    return-void
.end method
