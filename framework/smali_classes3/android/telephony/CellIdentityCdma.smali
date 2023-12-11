.class public final Landroid/telephony/CellIdentityCdma;
.super Landroid/telephony/CellIdentity;
.source "CellIdentityCdma.java"


# static fields
.field private static final BASESTATION_ID_MAX:I = 0xffff

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellIdentityCdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LATITUDE_MAX:I = 0x13c680

.field private static final LATITUDE_MIN:I = -0x13c680

.field private static final LONGITUDE_MAX:I = 0x278d00

.field private static final LONGITUDE_MIN:I = -0x278d00

.field private static final NETWORK_ID_MAX:I = 0xffff

.field private static final SYSTEM_ID_MAX:I = 0x7fff

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBasestationId:I

.field private final mLatitude:I

.field private final mLongitude:I

.field private final mNetworkId:I

.field private final mSystemId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/CellIdentityCdma;->TAG:Ljava/lang/String;

    .line 291
    new-instance v0, Landroid/telephony/CellIdentityCdma$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityCdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .line 77
    sget-object v1, Landroid/telephony/CellIdentityCdma;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    .line 79
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    .line 80
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    .line 81
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 82
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellIdentityCdma;->mGlobalCellId:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "nid"    # I
    .param p2, "sid"    # I
    .param p3, "bid"    # I
    .param p4, "lon"    # I
    .param p5, "lat"    # I
    .param p6, "alphal"    # Ljava/lang/String;
    .param p7, "alphas"    # Ljava/lang/String;

    .line 102
    sget-object v1, Landroid/telephony/CellIdentityCdma;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    const v1, 0xffff

    invoke-static {p1, v0, v1}, Landroid/telephony/CellIdentityCdma;->inRangeOrUnavailable(III)I

    move-result v2

    iput v2, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    .line 104
    const/16 v2, 0x7fff

    invoke-static {p2, v0, v2}, Landroid/telephony/CellIdentityCdma;->inRangeOrUnavailable(III)I

    move-result v2

    iput v2, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    .line 105
    invoke-static {p3, v0, v1}, Landroid/telephony/CellIdentityCdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    .line 106
    const v0, -0x13c680

    const v1, 0x13c680

    invoke-static {p5, v0, v1}, Landroid/telephony/CellIdentityCdma;->inRangeOrUnavailable(III)I

    move-result p5

    .line 107
    const v0, -0x278d00

    const v1, 0x278d00

    invoke-static {p4, v0, v1}, Landroid/telephony/CellIdentityCdma;->inRangeOrUnavailable(III)I

    move-result p4

    .line 109
    invoke-direct {p0, p5, p4}, Landroid/telephony/CellIdentityCdma;->isNullIsland(II)Z

    move-result v0

    if-nez v0, :cond_42

    .line 110
    iput p4, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 111
    iput p5, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    goto :goto_49

    .line 113
    :cond_42
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 115
    :goto_49
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->updateGlobalCellId()V

    .line 116
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 278
    sget-object v0, Landroid/telephony/CellIdentityCdma;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILandroid/os/Parcel;)V

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    .line 285
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->updateGlobalCellId()V

    .line 287
    return-void
.end method

.method private constructor <init>(Landroid/telephony/CellIdentityCdma;)V
    .registers 10
    .param p1, "cid"    # Landroid/telephony/CellIdentityCdma;

    .line 119
    iget v1, p1, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    iget v2, p1, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    iget v3, p1, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    iget v4, p1, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    iget v5, p1, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    iget-object v6, p1, Landroid/telephony/CellIdentityCdma;->mAlphaLong:Ljava/lang/String;

    iget-object v7, p1, Landroid/telephony/CellIdentityCdma;->mAlphaShort:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellIdentityCdma;-><init>(IIIIILjava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method protected static createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityCdma;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 307
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityCdma;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private isNullIsland(II)Z
    .registers 5
    .param p1, "lat"    # I
    .param p2, "lon"    # I

    .line 154
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_e

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method


# virtual methods
.method public bridge synthetic asCellLocation()Landroid/telephony/CellLocation;
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->asCellLocation()Landroid/telephony/cdma/CdmaCellLocation;

    move-result-object v0

    return-object v0
.end method

.method public asCellLocation()Landroid/telephony/cdma/CdmaCellLocation;
    .registers 8

    .line 213
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    .line 214
    .local v0, "cl":Landroid/telephony/cdma/CdmaCellLocation;
    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    const/4 v3, -0x1

    const v4, 0x7fffffff

    if-eq v1, v4, :cond_f

    move v2, v1

    goto :goto_10

    :cond_f
    move v2, v3

    .line 215
    .local v2, "bsid":I
    :goto_10
    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    if-eq v1, v4, :cond_16

    move v5, v1

    goto :goto_17

    :cond_16
    move v5, v3

    .line 216
    .local v5, "sid":I
    :goto_17
    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    if-eq v1, v4, :cond_1d

    move v6, v1

    goto :goto_1e

    :cond_1d
    move v6, v3

    .line 218
    .local v6, "nid":I
    :goto_1e
    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    iget v4, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 219
    return-object v0
.end method

.method copy()Landroid/telephony/CellIdentityCdma;
    .registers 2

    .line 124
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityCdma;-><init>(Landroid/telephony/CellIdentityCdma;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 224
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 225
    return v0

    .line 228
    :cond_4
    instance-of v1, p1, Landroid/telephony/CellIdentityCdma;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 229
    return v2

    .line 232
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellIdentityCdma;

    .line 234
    .local v1, "o":Landroid/telephony/CellIdentityCdma;
    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    iget v4, v1, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    iget v4, v1, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    iget v4, v1, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    iget v4, v1, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    iget v4, v1, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    if-ne v3, v4, :cond_32

    .line 239
    invoke-super {p0, p1}, Landroid/telephony/CellIdentity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    move v0, v2

    .line 234
    :goto_33
    return v0
.end method

.method public getBasestationId()I
    .registers 2

    .line 178
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    return v0
.end method

.method public getLatitude()I
    .registers 2

    .line 200
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    return v0
.end method

.method public getLongitude()I
    .registers 2

    .line 189
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    return v0
.end method

.method public getNetworkId()I
    .registers 2

    .line 162
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    return v0
.end method

.method public getSystemId()I
    .registers 2

    .line 170
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    return v0
.end method

.method public hashCode()I
    .registers 8

    .line 205
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 206
    invoke-super {p0}, Landroid/telephony/CellIdentity;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 205
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic sanitizeLocationInfo()Landroid/telephony/CellIdentity;
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->sanitizeLocationInfo()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    return-object v0
.end method

.method public sanitizeLocationInfo()Landroid/telephony/CellIdentityCdma;
    .registers 10

    .line 130
    new-instance v8, Landroid/telephony/CellIdentityCdma;

    const v1, 0x7fffffff

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    iget-object v6, p0, Landroid/telephony/CellIdentityCdma;->mAlphaLong:Ljava/lang/String;

    iget-object v7, p0, Landroid/telephony/CellIdentityCdma;->mAlphaShort:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellIdentityCdma;-><init>(IIIIILjava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/telephony/CellIdentityCdma;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    const-string v1, ":{ mNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromCellIdentity(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 254
    const-string v1, " mSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromCellIdentity(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    const-string v1, " mBasestationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromCellIdentity(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    const-string v1, " mLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromCellIdentity(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 257
    const-string v1, " mLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromCellIdentity(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 259
    const-string v1, " mAlphaLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityCdma;->mAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 260
    const-string v1, " mAlphaShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityCdma;->mAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 261
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    return-object v0
.end method

.method protected updateGlobalCellId()V
    .registers 4

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellIdentityCdma;->mGlobalCellId:Ljava/lang/String;

    .line 139
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_30

    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    if-eq v0, v1, :cond_30

    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    if-ne v2, v1, :cond_13

    goto :goto_30

    .line 142
    :cond_13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%04x%04x%04x"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellIdentityCdma;->mGlobalCellId:Ljava/lang/String;

    .line 143
    return-void

    .line 140
    :cond_30
    :goto_30
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 268
    const/4 v0, 0x2

    invoke-super {p0, p1, v0}, Landroid/telephony/CellIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 269
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    return-void
.end method
